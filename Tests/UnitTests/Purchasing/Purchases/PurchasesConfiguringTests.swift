//
//  Copyright RevenueCat Inc. All Rights Reserved.
//
//  Licensed under the MIT License (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      https://opensource.org/licenses/MIT
//
//  PurchasesConfiguringTests.swift
//
//  Created by Nacho Soto on 5/25/22.

import Nimble
import XCTest

@testable import RevenueCat

class PurchasesConfiguringTests: BasePurchasesTests {

    func testIsAbleToBeInitialized() {
        self.setupPurchases()
        expect(self.purchases).toNot(beNil())
    }

    func testUsingSharedInstanceWithoutInitializingThrowsAssertion() {
        let expectedMessage = "Purchases has not been configured. Please call Purchases.configure()"
        expectFatalError(expectedMessage: expectedMessage) { _ = Purchases.shared }
    }

    func testUsingSharedInstanceAfterInitializingDoesntThrowAssertion() {
        self.setupPurchases()
        expectNoFatalError { _ = Purchases.shared }
    }

    func testIsConfiguredReturnsCorrectValue() {
        expect(Purchases.isConfigured) == false
        self.setupPurchases()
        expect(Purchases.isConfigured) == true
    }

    func testConfigurationPassedThroughTimeouts() {
        let networkTimeoutSeconds: TimeInterval = 9
        let configurationBuilder = Configuration.Builder(withAPIKey: "")
            .with(networkTimeout: networkTimeoutSeconds)
            .with(storeKit1Timeout: networkTimeoutSeconds)
        let purchases = Purchases.configure(with: configurationBuilder.build())

        expect(purchases.networkTimeout) == networkTimeoutSeconds
        expect(purchases.storeKitTimeout) == networkTimeoutSeconds
    }

    func testSharedInstanceIsSetWhenConfiguring() {
        let purchases = Purchases.configure(withAPIKey: "")
        expect(Purchases.shared) === purchases
    }

    func testSharedInstanceIsSetWhenConfiguringWithConfiguration() {
        let configurationBuilder = Configuration.Builder(withAPIKey: "")
        let purchases = Purchases.configure(with: configurationBuilder.build())
        expect(Purchases.shared) === purchases
    }

    func testSharedInstanceIsSetWhenConfiguringWithAppUserID() {
        let purchases = Purchases.configure(withAPIKey: "", appUserID: "")
        expect(Purchases.shared) === purchases
    }

    func testSharedInstanceIsSetWhenConfiguringWithObserverMode() {
        let purchases = Purchases.configure(withAPIKey: "", appUserID: "", observerMode: true)
        expect(Purchases.shared) === purchases
        expect(Purchases.shared.finishTransactions) == false
    }

    func testSharedInstanceIsSetWhenConfiguringWithObserverModeDisabled() {
        let purchases = Purchases.configure(withAPIKey: "", appUserID: "", observerMode: false)
        expect(Purchases.shared) === purchases
        expect(Purchases.shared.finishTransactions) == true
    }

    @available(*, deprecated) // Ignore deprecation warnings
    func testSharedInstanceIsSetWhenConfiguringWithAppUserIDAndUserDefaults() {
        let purchases = Purchases.configure(withAPIKey: "", appUserID: "", observerMode: false, userDefaults: nil)
        expect(Purchases.shared) === purchases
        expect(Purchases.shared.finishTransactions) == true
    }

    @available(*, deprecated) // Ignore deprecation warnings
    func testSharedInstanceIsSetWhenConfiguringWithAppUserIDAndUserDefaultsAndUseSK2() {
        let purchases = Purchases.configure(withAPIKey: "",
                                            appUserID: "",
                                            observerMode: false,
                                            userDefaults: nil,
                                            useStoreKit2IfAvailable: true)
        expect(Purchases.shared) === purchases
        expect(Purchases.shared.finishTransactions) == true
    }

    func testUserIdIsSetWhenConfiguringWithUserID() {
        let purchases = Purchases.configure(
            with: .init(withAPIKey: "")
                .with(appUserID: Self.appUserID)
        )
        expect(purchases.appUserID) == Self.appUserID
    }

    func testUserIdIsSetToAnonymousWhenConfiguringWithEmptyUserID() {
        self.deviceCache.userIDStoredInCache = nil

        let purchases = Purchases.configure(
            with: .init(withAPIKey: "")
                // This test requires no previously stored user
                .with(userDefaults: .init(suiteName: UUID().uuidString)!)
                .with(appUserID: "")
        )
        expect(purchases.appUserID).toNot(beEmpty())
        expect(IdentityManager.userIsAnonymous(purchases.appUserID))
            .to(beTrue(), description: "User '\(purchases.appUserID)' should be anonymous")
    }

    func testUserIdOverridesPreviouslyConfiguredUser() {
        // This test requires no previously stored user
        let userDefaults: UserDefaults = .init(suiteName: UUID().uuidString)!

        let newUserID = Self.appUserID + "_new"

        _ = Purchases.configure(
            with: .init(withAPIKey: "")
                .with(userDefaults: userDefaults)
                .with(appUserID: Self.appUserID)
        )
        Purchases.clearSingleton()
        let purchases = Purchases.configure(
            with: .init(withAPIKey: "")
                .with(userDefaults: userDefaults)
                .with(appUserID: newUserID)
        )

        expect(purchases.appUserID) == newUserID
    }

    func testNilUserIdIsIgnoredIfPreviousUserExists() {
        // This test requires no previously stored user
        let userDefaults: UserDefaults = .init(suiteName: UUID().uuidString)!

        _ = Purchases.configure(
            with: .init(withAPIKey: "")
                .with(userDefaults: userDefaults)
                .with(appUserID: Self.appUserID)
        )
        Purchases.clearSingleton()
        let purchases = Purchases.configure(
            with: .init(withAPIKey: "")
                .with(userDefaults: userDefaults)
                .with(appUserID: nil)
        )

        expect(purchases.appUserID) == Self.appUserID
    }

    func testFirstInitializationCallDelegate() {
        self.setupPurchases()
        expect(self.purchasesDelegate.customerInfoReceivedCount).toEventually(equal(1))
    }

    func testFirstInitializationFromForegroundDelegateForAnonIfNothingCached() {
        self.systemInfo.stubbedIsApplicationBackgrounded = false
        self.setupPurchases()
        expect(self.purchasesDelegate.customerInfoReceivedCount).toEventually(equal(1))
    }

    func testFirstInitializationFromBackgroundDoesntCallDelegateForAnonIfNothingCached() {
        self.systemInfo.stubbedIsApplicationBackgrounded = true
        self.setupPurchases()
        expect(self.purchasesDelegate.customerInfoReceivedCount).toEventually(equal(0))
    }

    func testFirstInitializationFromBackgroundCallsDelegateForAnonIfInfoCached() throws {
        self.systemInfo.stubbedIsApplicationBackgrounded = true

        let info = try CustomerInfo(data: Self.emptyCustomerInfoData)
        let object = try info.asData()

        self.deviceCache.cachedCustomerInfo[identityManager.currentAppUserID] = object

        self.setupPurchases()

        expect(self.purchasesDelegate.customerInfoReceivedCount).toEventually(equal(1))
        expect(self.purchasesDelegate.customerInfo) == info
    }

    func testSettingTheDelegateAfterInitializationSendsCachedCustomerInfo() throws {
        let info = try CustomerInfo(data: Self.emptyCustomerInfoData)
        let object = try info.asData()

        self.deviceCache.cachedCustomerInfo[identityManager.currentAppUserID] = object

        self.setupPurchases(withDelegate: false)
        expect(self.purchasesDelegate.customerInfoReceivedCount) == 0

        self.purchases.delegate = self.purchasesDelegate
        expect(self.purchasesDelegate.customerInfoReceivedCount) == 1
        expect(self.purchasesDelegate.customerInfo) == info
    }

    func testSettingTheDelegateLaterPastInitializationSendsCachedCustomerInfo() throws {
        let info = try CustomerInfo(data: Self.emptyCustomerInfoData)
        let object = try info.asData()

        self.deviceCache.cachedCustomerInfo[identityManager.currentAppUserID] = object

        self.setupPurchases(withDelegate: false)
        expect(self.purchasesDelegate.customerInfoReceivedCount) == 0

        let expectation = XCTestExpectation()

        DispatchQueue.main.async {
            self.purchases.delegate = self.purchasesDelegate
            expect(self.purchasesDelegate.customerInfoReceivedCount) == 1
            expect(self.purchasesDelegate.customerInfo) == info

            expectation.fulfill()
        }

        self.wait(for: [expectation], timeout: 5)
    }

    func testFirstInitializationFromBackgroundDoesntUpdateCustomerInfoCache() {
        self.systemInfo.stubbedIsApplicationBackgrounded = true
        self.setupPurchases()
        expect(self.backend.getSubscriberCallCount).toEventually(equal(0))
    }

    func testFirstInitializationFromForegroundUpdatesCustomerInfoCacheIfNotInUserDefaults() {
        self.systemInfo.stubbedIsApplicationBackgrounded = false
        self.setupPurchases()
        expect(self.backend.getSubscriberCallCount).toEventually(equal(1))
    }

    func testFirstInitializationFromForegroundUpdatesCustomerInfoCacheIfUserDefaultsCacheStale() {
        let staleCacheDateForForeground = Calendar.current.date(byAdding: .minute, value: -20, to: Date())!
        self.deviceCache.setCustomerInfoCache(timestamp: staleCacheDateForForeground,
                                              appUserID: identityManager.currentAppUserID)
        self.systemInfo.stubbedIsApplicationBackgrounded = false

        self.setupPurchases()

        expect(self.backend.getSubscriberCallCount).toEventually(equal(1))
    }

    func testFirstInitializationFromForegroundUpdatesCustomerInfoEvenIfCacheValid() {
        let staleCacheDateForForeground = Calendar.current.date(byAdding: .minute, value: -2, to: Date())!
        self.deviceCache.setCustomerInfoCache(timestamp: staleCacheDateForForeground,
                                              appUserID: identityManager.currentAppUserID)

        self.systemInfo.stubbedIsApplicationBackgrounded = false

        self.setupPurchases()

        expect(self.backend.getSubscriberCallCount).toEventually(equal(1))
    }

    func testProxyURL() {
        expect(SystemInfo.proxyURL).to(beNil())
        let defaultHostURL = URL(string: "https://api.revenuecat.com")
        expect(SystemInfo.serverHostURL) == defaultHostURL

        let testURL = URL(string: "https://test_url")
        Purchases.proxyURL = testURL

        expect(SystemInfo.serverHostURL) == testURL

        Purchases.proxyURL = nil

        expect(SystemInfo.serverHostURL) == defaultHostURL
    }

    func testIsAnonymous() {
        setupAnonPurchases()
        expect(self.purchases.isAnonymous).to(beTrue())
    }

    func testIsNotAnonymous() {
        setupPurchases()
        expect(self.purchases.isAnonymous).to(beFalse())
    }

    func testSetsSelfAsStoreKit1WrapperDelegate() {
        self.setupPurchases()

        expect(self.storeKit1Wrapper.delegate) === self.purchasesOrchestrator
    }

    func testSetsSelfAsStoreKit1WrapperDelegateForSK1() {
        let configurationBuilder = Configuration.Builder(withAPIKey: "")
            .with(usesStoreKit2IfAvailable: false)
        let purchases = Purchases.configure(with: configurationBuilder.build())

        expect(purchases.isStoreKit1Configured) == true
    }

    func testDoesNotInitializeSK1IfSK2Enabled() throws {
        try AvailabilityChecks.iOS15APIAvailableOrSkipTest()

        let configurationBuilder = Configuration.Builder(withAPIKey: "")
            .with(usesStoreKit2IfAvailable: true)
        let purchases = Purchases.configure(with: configurationBuilder.build())

        expect(purchases.isStoreKit1Configured) == false
    }

    func testSetsPaymentQueueWrapperDelegateToPurchasesOrchestratorIfSK1IsEnabled() {
        self.systemInfo = MockSystemInfo(finishTransactions: false,
                                         storeKit2Setting: .disabled)

        self.setupPurchases()

        expect(self.paymentQueueWrapper.delegate).to(beNil())
    }

    func testSetsPaymentQueueWrapperDelegateToPaymentQueueWrapperIfSK1IsNotEnabled() throws {
        try AvailabilityChecks.iOS15APIAvailableOrSkipTest()

        self.systemInfo = MockSystemInfo(finishTransactions: false,
                                         storeKit2Setting: .enabledForCompatibleDevices)

        self.setupPurchases()

        expect(self.paymentQueueWrapper.delegate) === self.purchasesOrchestrator
    }

    // MARK: - UserDefaults

    func testCustomUserDefaultsIsUsed() {
        expect(Self.create(userDefaults: Self.customUserDefaults).configuredUserDefaults) === Self.customUserDefaults
    }

    func testDefaultUserDefaultsIsUsedByDefault() {
        expect(Self.create(userDefaults: nil).configuredUserDefaults) === UserDefaults.computeDefault()
    }

    private static func create(userDefaults: UserDefaults?) -> Purchases {
        var configurationBuilder: Configuration.Builder = .init(withAPIKey: "")

        if let userDefaults = userDefaults {
            configurationBuilder = configurationBuilder.with(userDefaults: userDefaults)
        }

        return Purchases.configure(with: configurationBuilder.build())
    }

    private static let customUserDefaults: UserDefaults = .init(suiteName: "com.revenuecat.testing_user_defaults")!

}
