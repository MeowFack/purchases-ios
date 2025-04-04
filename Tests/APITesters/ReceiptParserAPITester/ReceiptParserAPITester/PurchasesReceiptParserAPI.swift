//
//  Copyright RevenueCat Inc. All Rights Reserved.
//
//  Licensed under the MIT License (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      https://opensource.org/licenses/MIT
//
//  PurchasesReceiptParserAPI.swift
//
//  Created by Nacho Soto on 12/05/22.

import Foundation
import ReceiptParser
import StoreKit

func checkReceiptParserAPI() {
    let parser: PurchasesReceiptParser = .default

    do {
        let _: AppleReceipt = try parser.parse(from: Data())
    } catch {}
}

private func checkErrors(_ error: PurchasesReceiptParser.Error) {
    switch error {
    case .dataObjectIdentifierMissing: break
    case let .asn1ParsingError(description): print(description)
    case .receiptParsingError: break
    case .inAppPurchaseParsingError: break
    @unknown default: break
    }
}
