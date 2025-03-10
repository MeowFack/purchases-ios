//
//  Copyright RevenueCat Inc. All Rights Reserved.
//
//  Licensed under the MIT License (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      https://opensource.org/licenses/MIT
//
//  PurchasesLogInTests.swift
//
//  Created by Nacho Soto on 8/15/22.

import Nimble
import StoreKit
import XCTest

@testable import RevenueCat

class PurchasesLogInTests: BasePurchasesTests {

    private typealias LogInResult = Result<(customerInfo: CustomerInfo, created: Bool), PublicError>
    private typealias LogOutResult = Result<CustomerInfo, PublicError>

    override func setUpWithError() throws {
        try super.setUpWithError()

        self.setupAnonPurchases()
    }

    func testLogInWithSuccess() {
        let created: Bool = .random()

        self.identityManager.mockLogInResult = .success((Self.mockLoggedInInfo, created))

        let result = waitUntilValue { completed in
            self.purchases.logIn(Self.appUserID) { customerInfo, created, error in
                completed(Self.logInResult(customerInfo, created, error))
            }
        }

        expect(result).to(beSuccess())
        expect(result?.value) == (Self.mockLoggedInInfo, created)
        expect(self.identityManager.invokedLogInCount) == 1
        expect(self.identityManager.invokedLogInParametersList) == [Self.appUserID]
    }

    func testLogInWithFailure() {
        let error: BackendError = .networkError(.offlineConnection())
        self.identityManager.mockLogInResult = .failure(error)

        let result = waitUntilValue { completed in
            self.purchases.logIn(Self.appUserID) { customerInfo, created, error in
                completed(Self.logInResult(customerInfo, created, error))
            }
        }

        expect(result).to(beFailure())
        expect(result?.error).to(matchError(error.asPurchasesError))
        expect(self.identityManager.invokedLogInCount) == 1
        expect(self.identityManager.invokedLogInParametersList) == [Self.appUserID]
    }

    func testLogOutWithSuccess() {
        self.identityManager.mockLogOutError = nil
        self.backend.overrideCustomerInfoResult = .success(Self.mockLoggedOutInfo)

        expect(self.backend.getSubscriberCallCount) == 1

        let result = waitUntilValue { completed in
            self.purchases.logOut { customerInfo, error in
                completed(Result(customerInfo, error))
            }
        }

        expect(result).to(beSuccess())
        expect(result?.value) == Self.mockLoggedOutInfo

        expect(self.backend.getSubscriberCallCount) == 2
        expect(self.identityManager.invokedLogOutCount) == 1
    }

    func testLogOutWithFailure() {
        let error = BackendError.networkError(.offlineConnection()).asPurchasesError

        self.identityManager.mockLogOutError = error

        let result = waitUntilValue { completed in
            self.purchases.logOut { customerInfo, error in
                completed(Result(customerInfo, error))
            }
        }

        expect(result).to(beFailure())
        expect(result?.error).to(matchError(error))

        expect(self.backend.getSubscriberCallCount) == 1
        expect(self.identityManager.invokedLogOutCount) == 1
    }

    // MARK: - Update offerings cache

    func testLogInUpdatesOfferingsCache() throws {
        let isAppBackgrounded: Bool = .random()

        self.systemInfo.stubbedIsApplicationBackgrounded = isAppBackgrounded

        self.identityManager.mockAppUserID = Self.mockLoggedInInfo.originalAppUserId
        self.identityManager.mockIsAnonymous = false
        self.identityManager.mockLogInResult = .success((Self.mockLoggedInInfo, true))

        expect(self.mockOfferingsManager.invokedUpdateOfferingsCacheCount) == 1

        waitUntil { completed in
            self.purchases.logIn(Self.appUserID) { _, _, _ in
                completed()
            }
        }

        expect(self.mockOfferingsManager.invokedUpdateOfferingsCacheCount) == 2

        let parameters = try XCTUnwrap(self.mockOfferingsManager.invokedUpdateOfferingsCacheParameters)
        expect(parameters.appUserID) == Self.mockLoggedInInfo.originalAppUserId
        expect(parameters.isAppBackgrounded) == isAppBackgrounded
    }

    func testLogInFailureDoesNotUpdateOfferingsCache() {
        self.identityManager.mockLogInResult = .failure(.networkError(.offlineConnection()))

        expect(self.mockOfferingsManager.invokedUpdateOfferingsCacheCount) == 1

        waitUntil { completed in
            self.purchases.logIn(Self.appUserID) { _, _, _ in
                completed()
            }
        }

        expect(self.mockOfferingsManager.invokedUpdateOfferingsCacheCount) == 1
    }

    // MARK: - StaticString appUserID

    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.2, *)
    func testLogInWithStringDoesNotLogMessage() async throws {
        try AvailabilityChecks.iOS13APIAvailableOrSkipTest()

        let appUserID = "user ID"
        let logger = TestLogHandler()

        self.identityManager.mockLogInResult = .success((Self.mockLoggedInInfo, true))

        _ = try await self.purchases.logIn(appUserID)

        logger.verifyMessageWasNotLogged(Strings.identity.logging_in_with_static_string)
    }

    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.2, *)
    func testLogInWithStaticStringLogsMessage() async throws {
        try AvailabilityChecks.iOS13APIAvailableOrSkipTest()

        let logger = TestLogHandler()

        self.identityManager.mockLogInResult = .success((Self.mockLoggedInInfo, true))

        _ = try await self.purchases.logIn("Static string")

        logger.verifyMessageWasLogged(Strings.identity.logging_in_with_static_string, level: .warn)
    }

    func testCompletionBlockLogInWithStringDoesNotLogMessage() {
        let appUserID = "user ID"
        let logger = TestLogHandler()

        self.identityManager.mockLogInResult = .success((Self.mockLoggedInInfo, true))

        waitUntil { completed in
            self.purchases.logIn(appUserID) { _, _, _ in
                completed()
            }
        }

        logger.verifyMessageWasNotLogged(Strings.identity.logging_in_with_static_string)
    }

    func testCompletionBlockLogInWithStaticStringLogsMessage() {
        let logger = TestLogHandler()

        self.identityManager.mockLogInResult = .success((Self.mockLoggedInInfo, true))

        waitUntil { completed in
            self.purchases.logIn("Static string") { _, _, _ in
                completed()
            }
        }

        logger.verifyMessageWasLogged(Strings.identity.logging_in_with_static_string, level: .warn)
    }

}

// MARK: -

private extension PurchasesLogInTests {

    // swiftlint:disable force_try
    static let mockLoggedInInfo = try! CustomerInfo(data: PurchasesLogInTests.loggedInCustomerInfoData)
    static let mockLoggedOutInfo = try! CustomerInfo(data: PurchasesLogInTests.loggedOutCustomerInfoData)
    // swiftlint:enable force_try

    private static let loggedInCustomerInfoData: [String: Any] = [
        "request_date": "2019-08-16T10:30:42Z",
        "subscriber": [
            "first_seen": "2019-07-17T00:05:54Z",
            "original_app_user_id": "user",
            "subscriptions": [:],
            "other_purchases": [:],
            "original_application_version": NSNull()
        ]
    ]

    private static let loggedOutCustomerInfoData: [String: Any] = [
        "request_date": "2019-08-16T10:30:42Z",
        "subscriber": [
            "first_seen": "2019-07-17T00:05:54Z",
            "original_app_user_id": "$RCAnonymousID:5b6fdbad3a0c4f879e43d269ecdf9ba1",
            "subscriptions": [:],
            "other_purchases": [:],
            "original_application_version": NSNull()
        ]
    ]

    /// Converts the result of `Purchases.logIn` into `LogInResult`
    private static func logInResult(_ info: CustomerInfo?, _ created: Bool, _ error: PublicError?) -> LogInResult {
        return .init(info.map { ($0, created) }, error)
    }

}
