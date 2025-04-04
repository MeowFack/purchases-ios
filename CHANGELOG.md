## 4.16.0
### New Features
* Created `ReceiptParser` SPM (#2155) via NachoSoto (@NachoSoto)
* Exposed `PurchasesReceiptParser` and `AppleReceipt` (#2153) via NachoSoto (@NachoSoto)
### Bugfixes
* `Restore purchases`: post product data when posting receipts (#2178) via NachoSoto (@NachoSoto)
### Other Changes
* Added `Dictionary.merge` (#2190) via NachoSoto (@NachoSoto)
* `CircleCI`: use Xcode 14.2.0 (#2187) via NachoSoto (@NachoSoto)
* `ReceiptParser`: a few documentation improvements (#2189) via NachoSoto (@NachoSoto)
* `Purchase Tester`: fixed `TestFlight` deployment (#2188) via NachoSoto (@NachoSoto)
* `Purchase Tester`: display specific `IntroEligibilityStatus` (#2184) via NachoSoto (@NachoSoto)
* `Purchase Tester`: fixed `SubscriptionPeriod` (#2185) via NachoSoto (@NachoSoto)

## 4.15.5
### Bugfixes
* `ErrorUtils.purchasesError(withUntypedError:)`: handle `PublicError`s (#2165) via NachoSoto (@NachoSoto)
* Fixed race condition finishing `SK1` transactions (#2148) via NachoSoto (@NachoSoto)
* `IntroEligibilityStatus`: added `CustomStringConvertible` implementation (#2182) via NachoSoto (@NachoSoto)
* `BundleSandboxEnvironmentDetector`: fixed logic for `macOS` (#2176) via NachoSoto (@NachoSoto)
* Fixed `AttributionFetcher.adServicesToken` hanging when called in simulator (#2157) via NachoSoto (@NachoSoto)
### Other Changes
* `Purchase Tester`: added ability to purchase products directly with `StoreKit` (#2172) via NachoSoto (@NachoSoto)
* `DNSChecker`: simplified `NetworkError` initialization (#2166) via NachoSoto (@NachoSoto)
* `Purchases` initialization: refactor to avoid multiple concurrent instances in memory (#2180) via NachoSoto (@NachoSoto)
* `Purchase Tester`: added button to clear messages on logger view (#2179) via NachoSoto (@NachoSoto)
* `NetworkOperation`: added assertion to ensure that subclasses call completion (#2138) via NachoSoto (@NachoSoto)
* `CacheableNetworkOperation`: avoid unnecessarily creating operations for cache hits (#2135) via NachoSoto (@NachoSoto)
* `PurchaseTester`: fixed `macOS` support (#2175) via NachoSoto (@NachoSoto)
* `IntroEligibilityCalculator`: added log including `AppleReceipt` (#2181) via NachoSoto (@NachoSoto)
* `Purchase Tester`: fixed scene manifest (#2170) via NachoSoto (@NachoSoto)
* `HTTPClientTests`: refactored to use `waitUntil` (#2168) via NachoSoto (@NachoSoto)
* `Integration Tests`: split up tests in smaller files (#2158) via NachoSoto (@NachoSoto)
* `StoreKitRequestFetcher`: removed unnecessary dispatch (#2152) via NachoSoto (@NachoSoto)
* `Purchase Tester`: added companion `watchOS` app (#2140) via NachoSoto (@NachoSoto)
* `StoreKit1Wrapper`: added warning if receiving too many updated transactions (#2117) via NachoSoto (@NachoSoto)
* `StoreKitTestHelpers`: cleaned up unnecessary log (#2177) via NachoSoto (@NachoSoto)
* `TrialOrIntroPriceEligibilityCheckerSK1Tests`: use `waitUntilValue` (#2173) via NachoSoto (@NachoSoto)
* `DNSChecker`: added log with resolved host (#2167) via NachoSoto (@NachoSoto)
* `MagicWeatherSwiftUI`: updated `README` to point to workspace (#2142) via NachoSoto (@NachoSoto)
* `Purchase Tester`: fixed `.storekit` config file reference (#2171) via NachoSoto (@NachoSoto)
* `Purchase Tester`: fixed error alerts (#2169) via NachoSoto (@NachoSoto)
* `CI`: don't make releases until `release-checks` pass (#2162) via NachoSoto (@NachoSoto)
* `Fastfile`: changed `match` to `readonly` (#2161) via NachoSoto (@NachoSoto)

## 4.15.4
### Bugfixes
* Fix sending presentedOfferingIdentifier in StoreKit2 (#2156) via Toni Rico (@tonidero)
* `ReceiptFetcher`: throttle receipt refreshing to avoid `StoreKit` throttle errors (#2146) via NachoSoto (@NachoSoto)
### Other Changes
* Added integration and unit tests to verify observer mode behavior (#2069) via NachoSoto (@NachoSoto)
* Created `ClockType` and `TestClock` to be able to mock time (#2145) via NachoSoto (@NachoSoto)
* Extracted `asyncWait` to poll `async` conditions in tests (#2134) via NachoSoto (@NachoSoto)
* `StoreKitRequestFetcher`: added log when starting/ending requests (#2151) via NachoSoto (@NachoSoto)
* `CI`: fixed `PurchaseTester` deployment (#2147) via NachoSoto (@NachoSoto)

## 4.15.3
### Bugfixes
* Un-deprecate `Purchases.configure(withAPIKey:appUserID:)` and `Purchases.configure(withAPIKey:appUserID:observerMode:)` (#2129) via NachoSoto (@NachoSoto)
### Other Changes
* `ReceiptFetcherTests`: refactored tests using `waitUntilValue` (#2144) via NachoSoto (@NachoSoto)
* Added a few performance improvements for `ReceiptParser` (#2124) via NachoSoto (@NachoSoto)
* `CallbackCache`: fixed reference (#2143) via NachoSoto (@NachoSoto)
* `PostReceiptDataOperation`: clarified receipt debug log (#2128) via NachoSoto (@NachoSoto)
* `CallbackCache`: avoid exposing internal mutable cache (#2136) via NachoSoto (@NachoSoto)
* `CallbackCache`: added assertion for tests to ensure we don't leak callbacks (#2137) via NachoSoto (@NachoSoto)
* `NetworkOperation`: made `Atomic` references immutable (#2139) via NachoSoto (@NachoSoto)
* `ReceiptParser`: ensure parsing never happens in the main thread (#2123) via NachoSoto (@NachoSoto)
* `PostReceiptDataOperation`: also print receipt data with `verbose` logs (#2127) via NachoSoto (@NachoSoto)
* `BasePurchasesTests`: detecting and fixing many `DeviceCache` leaks (#2105) via NachoSoto (@NachoSoto)
* `StoreKitIntegrationTests`: added test to check applying a promotional offer during subscription (#1588) via NachoSoto (@NachoSoto)

## 4.15.2
### Bugfixes
* Fixed purchasing with `PromotionalOffer`s using `StoreKit 2` (#2020) via NachoSoto (@NachoSoto)
### Other Changes
* `CircleCI`: cache Homebrew installation (#2103) via NachoSoto (@NachoSoto)
* `Integration Tests`: fixed `Purchases` leak through `PurchasesDiagnostics` (#2126) via NachoSoto (@NachoSoto)
* `HTTPClient`: replaced `X-StoreKit2-Setting` with `X-StoreKit2-Enabled` (#2118) via NachoSoto (@NachoSoto)
* `BasePurchasesTests`: added assertion to ensure `Purchases` does not leak (#2104) via NachoSoto (@NachoSoto)
* `ReceiptParser.parse` always throws `ReceiptParser.Error` (#2099) via NachoSoto (@NachoSoto)
* `Tests`: ensure `Purchases` is not configured multiple times (#2100) via NachoSoto (@NachoSoto)
* Extracted `LoggerType` (#2098) via NachoSoto (@NachoSoto)
* `Integration Tests`: verify `Purchases` does not leak across tests (#2106) via NachoSoto (@NachoSoto)
* `StoreKit2` listeners: set `Task` `priority` to `.utility` (#2070) via NachoSoto (@NachoSoto)
* `Installation Tests`: remove unused code in `Fastfile` (#2097) via NachoSoto (@NachoSoto)
* `DeviceCache`: added verbose logs for `init`/`deinit` (#2101) via NachoSoto (@NachoSoto)
* `StoreKit1Wrapper`: process transactions in a background thread (#2115) via NachoSoto (@NachoSoto)
* update CONTRIBUTING.md link in bug report template (#2119) via Nate Lowry (@natelowry)

## 4.15.1
### Bugfixes
* `Configuration.with(appUserID:)`: allow passing `nil` and added new tests (#2110) via NachoSoto (@NachoSoto)
### Other Changes
* Fix documentation typo (#2113) via Bas Broek (@BasThomas)

## 4.15.0
### New Features
* Added `LogLevel.verbose` (#2080) via NachoSoto (@NachoSoto)
### Other Changes
* Fixed `LogLevel` ordering and added tests (#2102) via NachoSoto (@NachoSoto)
* `TimingUtil`: fixed Xcode 13.2 compilation (#2088) via NachoSoto (@NachoSoto)
* Generate documentation for `iOS` instead of `macOS` (#2089) via NachoSoto (@NachoSoto)
* Update `fastlane` (#2090) via NachoSoto (@NachoSoto)
* CI: speed up `docs-deploy` by only installing `bundle` dependencies (#2092) via NachoSoto (@NachoSoto)
* `Tests`: replaced `toEventually` with new `waitUntilValue` to simplify tests (#2071) via NachoSoto (@NachoSoto)
* `CircleCI`: fixed `docs-deploy` git credentials (#2087) via NachoSoto (@NachoSoto)
* Added `verbose` logs for `Purchases` and `StoreKit1Wrapper` lifetime (#2082) via NachoSoto (@NachoSoto)
* `StoreKit`: added logs when purchasing and product requests are too slow (#2061) via NachoSoto (@NachoSoto)
* Created `TimingUtil` to measure and log methods that are too slow (#2059) via NachoSoto (@NachoSoto)
* `SKTestSession`: finish all unfinished transactions before starting each test (#2066) via NachoSoto (@NachoSoto)
* `CircleCI`: lowered `no_output_timeout` to 5 minutes (#2084) via NachoSoto (@NachoSoto)
* Removed unused `APITesters.xcworkspace` and created `RevenueCat.xcworkspace` (#2075) via NachoSoto (@NachoSoto)
* `Atomic`: added new test to verify each instance gets its own `Lock` (#2077) via NachoSoto (@NachoSoto)
* `Logger`: exposed generic `log` method (#2058) via NachoSoto (@NachoSoto)

## 4.14.3
### Bugfixes
* Changed default `UserDefaults` from `.standard` to our own Suite (#2046) via NachoSoto (@NachoSoto)
### Other Changes
* `Logging`: added log when configuring SDK in observer mode (#2065) via NachoSoto (@NachoSoto)
* `PurchaseTesterSwiftUI`: added observer mode setting (#2052) via NachoSoto (@NachoSoto)
* Exposed `SystemInfo.observerMode` to simplify code (#2064) via NachoSoto (@NachoSoto)
* `Result.init(catching:)` with `async` method (#2060) via NachoSoto (@NachoSoto)
* Updated schemes and project for Xcode 14.1 (#2081) via NachoSoto (@NachoSoto)
* `PurchasesSubscriberAttributesTests`: simplified tests (#2056) via NachoSoto (@NachoSoto)
* `DeviceCache`: removed `fatalError` for users not overriding `UserDefaults` (#2079) via NachoSoto (@NachoSoto)
* `DeviceCache`: changed `NotificationCenter` observation to be received on posting thread (#2078) via NachoSoto (@NachoSoto)
* `StoreKit1Wrapper`: added instance address when detecting transactions (#2055) via NachoSoto (@NachoSoto)
* Fixed lint issues with `SwiftLint 0.5.0` (#2076) via NachoSoto (@NachoSoto)
* `NSData+RCExtensionsTests`: improved errors (#2043) via NachoSoto (@NachoSoto)
* `APITester`: fixed warning in `SubscriptionPeriodAPI` (#2054) via NachoSoto (@NachoSoto)
* `Integration Tests`: always run them in random order locally (#2068) via NachoSoto (@NachoSoto)

## 4.14.2
### Bugfixes
* `StoreKit 2`: don't finish transactions in observer mode (#2053) via NachoSoto (@NachoSoto)
### Other Changes
* `CircleCI`: added ability to create a release manually (#2067) via NachoSoto (@NachoSoto)
* Changelog: Fix links to V4 API Migration guide (#2051) via Kevin Quisquater (@KevinQuisquater)
* `HTTPClient`: added log for failed requests (#2048) via NachoSoto (@NachoSoto)
* `ErrorResponse.asBackendError`: serialize attribute errors as `NSDictionary` (#2034) via NachoSoto (@NachoSoto)
* `ErrorCode.unknownBackendError`: include original error code (#2032) via NachoSoto (@NachoSoto)
* `CI`: fixed `push-pods` job (#2045) via NachoSoto (@NachoSoto)
* `PostReceiptDataOperation`: log Apple error when purchase equals expiration date (#2038) via NachoSoto (@NachoSoto)
* Update Fastlane plugin (#2041) via Cesar de la Vega (@vegaro)

## 4.14.1
### Bugfixes
* `ISO8601DateFormatter.withMilliseconds`: fixed iOS 11 crash (#2037) via NachoSoto (@NachoSoto)
* Changed `StoreKit2Setting.default` back to `.enabledOnlyForOptimizations` (#2022) via NachoSoto (@NachoSoto)
### Other Changes
* `Integration Tests`: changed weekly to monthly subscriptions to work around 0-second subscriptions (#2042) via NachoSoto (@NachoSoto)
* `Integration Tests`: fixed `testPurchaseWithAskToBuyPostsReceipt` (#2040) via NachoSoto (@NachoSoto)
* `ReceiptRefreshPolicy.retryUntilProductIsFound`: default to returning "invalid" receipt (#2024) via NachoSoto (@NachoSoto)
* `CachingProductsManager`: use partial cached products (#2014) via NachoSoto (@NachoSoto)
* Added `BackendErrorCode.purchasedProductMissingInAppleReceipt` (#2033) via NachoSoto (@NachoSoto)
* `PurchaseTesterSwiftUI`: replaced `Purchases` dependency with `SPM` (#2027) via NachoSoto (@NachoSoto)
* `Integration Tests`: changed log output to `raw` (#2031) via NachoSoto (@NachoSoto)
* `Integration Tests`: run on iOS 16 (#2035) via NachoSoto (@NachoSoto)
* CI: fixed `iOS 14` tests Xcode version (#2030) via NachoSoto (@NachoSoto)
* `Async.call`: added non-throwing overload (#2006) via NachoSoto (@NachoSoto)
* Documentation: Fixed references in `V4_API_Migration_guide.md` (#2018) via NachoSoto (@NachoSoto)
* `eligiblePromotionalOffers`: don't log error if response is ineligible (#2019) via NachoSoto (@NachoSoto)
* Runs push-pods after make-release (#2025) via Cesar de la Vega (@vegaro)
* Some updates on notify-on-non-patch-release-branches: (#2026) via Cesar de la Vega (@vegaro)
* Deploy `PurchaseTesterSwiftUI` to TestFlight (#2003) via NachoSoto (@NachoSoto)
* `PurchaseTesterSwiftUI`: added "logs" screen (#2012) via NachoSoto (@NachoSoto)
* `PurchaseTesterSwiftUI`: allow configuring API key at runtime (#1999) via NachoSoto (@NachoSoto)

## 4.14.0
### New Features
* Introduced `PurchasesDiagnostics` to help diagnose SDK configuration errors (#1977) via NachoSoto (@NachoSoto)
### Bugfixes
* Avoid posting empty receipts by making`TransactionsManager` always use `SK1` implementation (#2015) via NachoSoto (@NachoSoto)
* `NetworkOperation`: workaround for iOS 12 crashes (#2008) via NachoSoto (@NachoSoto)
### Other Changes
* Makes hold job wait for installation tests to pass (#2017) via Cesar de la Vega (@vegaro)
* Update fastlane-plugin-revenuecat_internal (#2016) via Cesar de la Vega (@vegaro)
* `bug_report.md`: changed SK2 wording (#2010) via NachoSoto (@NachoSoto)
* Added `Set + Set` and `Set += Set` operators (#2013) via NachoSoto (@NachoSoto)
* fix the link to StoreKit Config file from watchOS purchaseTester (#2009) via Andy Boedo (@aboedo)
* `PurchaseTesterSwiftUI`: combined targets into one multi-platform and fixed `macOS` (#1996) via NachoSoto (@NachoSoto)
* Less Array() (#2005) via SabinaHuseinova (@SabinaHuseinova)
* Docs: fixed `logIn` references (#2002) via NachoSoto (@NachoSoto)
* CI: use `Xcode 14.1` (#1992) via NachoSoto (@NachoSoto)
* `PurchaseTesterSwiftUI`: fixed warnings and simplified code using `async` methods (#1985) via NachoSoto (@NachoSoto)

## 4.13.4
### Bugfixes
* Fixed Xcode 13.2.x / Swift 5.5 compatibility (#1994) via NachoSoto (@NachoSoto)
### Other Changes
* Update `fastlane` (#1998) via NachoSoto (@NachoSoto)
* Documentation: fixed missing docs from inherited symbols (#1997) via NachoSoto (@NachoSoto)
* CI: added job to test compilation with `Xcode 13.2.1` / `Swift 5.5` (#1990) via NachoSoto (@NachoSoto)
* Extracted `TrialOrIntroPriceEligibilityCheckerType` (#1983) via NachoSoto (@NachoSoto)
* CI: removed redundant `swiftlint` installation (#1993) via NachoSoto (@NachoSoto)
* `Nimble`: use a fixed version (#1991) via NachoSoto (@NachoSoto)
* Update fastlane-plugin-revenuecat_internal (#1989) via Cesar de la Vega (@vegaro)
* `Purchases.logIn`: log warning if attempting to use a static `appUserID` (#1958) via NachoSoto (@NachoSoto)
* Created `InternalAPI` for "health" request (#1971) via NachoSoto (@NachoSoto)

## 4.13.3
### Other Changes
* `TrialOrIntroPriceEligibilityChecker`: only use SK2 implementation if enabled (#1984) via NachoSoto (@NachoSoto)

## 4.13.2
### Bugfixes
* Purchasing: fixed consumable purchases by fixing transaction-finishing (#1965) via NachoSoto (@NachoSoto)
* `ErrorUtils`: improved logging and `localizedDescription` to include underlying errors (#1974) via NachoSoto (@NachoSoto)
* `PaymentQueueWrapper`: also implement `shouldShowPriceConsent` (#1963) via NachoSoto (@NachoSoto)
* `ReceiptFetcher`: added retry mechanism (#1945) via NachoSoto (@NachoSoto)
* `PaymentQueueWrapper`: also conform to `SKPaymentTransactionObserver` to fix promoted purchases (#1962) via NachoSoto (@NachoSoto)
### Other Changes
*  Updating great support link via Miguel José Carranza Guisado (@MiguelCarranza)
* `OfferingsManager`: added ability to fail if any product is not found (#1976) via NachoSoto (@NachoSoto)
* `OfferingsManager`: added missing test for ignoring missing products (#1975) via NachoSoto (@NachoSoto)
* `PaymentQueueWrapper`: improved abstraction for active `SKPaymentQueue` wrapper (#1968) via NachoSoto (@NachoSoto)
* `ErrorUtils.purchasesError(withUntypedError:)` handle `PurchasesErrorConvertible` (#1973) via NachoSoto (@NachoSoto)
* Renamed `CallbackCache.add(callback:)` (#1970) via NachoSoto (@NachoSoto)
* Fixed iOS 12/13 test snapshots (#1972) via NachoSoto (@NachoSoto)
* Moved `SKPaymentQueue.presentCodeRedemptionSheet` to `StoreKitWorkarounds` (#1967) via NachoSoto (@NachoSoto)
* `Async.call` method to convert completion-block call to `async` (#1969) via NachoSoto (@NachoSoto)
* Remind about updating docs and parity spreadsheet on minor releases (#1955) via Cesar de la Vega (@vegaro)
* `PostReceiptDataOperation`: added `initiationSource` parameter (#1957) via NachoSoto (@NachoSoto)
* `StoreKit1Wrapper`: separated `SKPaymentTransactionObserver` and `SKPaymentQueueDelegate` implementations (#1961) via NachoSoto (@NachoSoto)
* Refactored `Error.isCancelledError` into `Error+Extensions` (#1960) via NachoSoto (@NachoSoto)
* Update fastlane plugin (#1959) via Cesar de la Vega (@vegaro)
* `Integration Tests`: simplified `testIneligibleForIntroAfterPurchaseExpires` to fix flakiness (#1952) via NachoSoto (@NachoSoto)
* fix typo in comment (#1956) via Andy Boedo (@aboedo)

## 4.13.1
### Other Changes
* `ProductsFetcherSK2`: removed now redundant caching logic (#1908) via NachoSoto (@NachoSoto)
* Created `CachingProductsManager` to provide consistent caching logic when fetching products (#1907) via NachoSoto (@NachoSoto)
* Refactored `ReceiptFetcher.receiptData` (#1941) via NachoSoto (@NachoSoto)
* Abstracted conversion from `async` to completion-block APIs (#1943) via NachoSoto (@NachoSoto)
* Moved `InAppPurchase` into `AppleReceipt` (#1942) via NachoSoto (@NachoSoto)
* `Purchases+async`: combined `@available` statements into a single one (#1944) via NachoSoto (@NachoSoto)
* `Integration Tests`: don't initialize `Purchases` until the `SKTestSession` has been re-created (#1946) via NachoSoto (@NachoSoto)
* `PostReceiptDataOperation`: print receipt data if `debug` logs are enabled (#1940) via NachoSoto (@NachoSoto)

## 4.13.0
### New Features
* 🚨 `StoreKit 2` is now enabled by default 🚨 (#1922) via NachoSoto (@NachoSoto)
* Extracted `PurchasesType` and `PurchasesSwiftType` (#1912) via NachoSoto (@NachoSoto)
### Bugfixes
* `StoreKit 1`: changed result of cancelled purchases to be consistent with `StoreKit 2` (#1910) via NachoSoto (@NachoSoto)
* `PaymentQueueWrapper`: handle promotional purchase requests from App Store when SK1 is disabled (#1901) via NachoSoto (@NachoSoto)
### Other Changes
* Fixed iOS 12 tests (#1936) via NachoSoto (@NachoSoto)
* `CacheableNetworkOperation`: fixed race condition in new test (#1932) via NachoSoto (@NachoSoto)
* `BasePurchasesTests`: changed default back to SK1 (#1935) via NachoSoto (@NachoSoto)
* `Logger`: refactored default `LogLevel` definition (#1934) via NachoSoto (@NachoSoto)
* `AppleReceipt`: refactored declarations into nested types (#1933) via NachoSoto (@NachoSoto)
* `Integration Tests`: relaunch tests when retrying failures (#1925) via NachoSoto (@NachoSoto)
* `CircleCI`: downgraded release jobs to Xcode 13.x (#1927) via NachoSoto (@NachoSoto)
* `ErrorUtils`: added test to verify that `PublicError`s can be `catch`'d as `ErrorCode` (#1924) via NachoSoto (@NachoSoto)
* `StoreKitIntegrationTests`: print `AppleReceipt` data whenever `verifyEntitlementWentThrough` fails (#1929) via NachoSoto (@NachoSoto)
* `OperationQueue`: log debug message when requests are found in cache and skipped (#1926) via NachoSoto (@NachoSoto)
* `GetCustomerInfoAPI`: avoid making a request if there's any `PostReceiptDataOperation` in progress (#1911) via NachoSoto (@NachoSoto)
* `PurchaseTester`: allow HTTP requests and enable setting `ProxyURL` (#1917) via NachoSoto (@NachoSoto)
## 4.12.1
### Bugfixes
* `Purchases.beginRefundRequest`: ensured errors are `PublicError` (#1913) via NachoSoto (@NachoSoto)
* `PurchaseTesterSwiftUI`: fixed macOS target (#1915) via NachoSoto (@NachoSoto)
### Other Changes
* Fixed `tvOS` tests (#1928) via NachoSoto (@NachoSoto)
* `SnapshotTesting`: require version 1.9.0 to keep supporting iOS 12/13 tests (#1931) via NachoSoto (@NachoSoto)
* `pre-commit` hook: also verify leftover API keys in `PurchaseTester` (#1914) via NachoSoto (@NachoSoto)
* `CircleCI`: changed iOS 12/13 to use Xcode 13 (#1918) via NachoSoto (@NachoSoto)
* `PurchaseTesterSwiftUI`: removed unnecessary `UIApplicationDelegate` (#1916) via NachoSoto (@NachoSoto)
* `CircleCI`: changed all jobs to use Xcode 14 (#1909) via NachoSoto (@NachoSoto)
* `Atomic`: added unit test to verify `value`'s setter (#1905) via NachoSoto (@NachoSoto)
* `spm build` CI job: changed to release build (#1903) via NachoSoto (@NachoSoto)
* `StoreKitUnitTests`:  compile on iOS 11.0+ (#1904) via NachoSoto (@NachoSoto)
* `Purchases`: only expose testing data on `DEBUG` (#1902) via NachoSoto (@NachoSoto)
* `Integration Tests`: added test to verify re-subscription behavior (#1898) via NachoSoto (@NachoSoto)
* `IntegrationTests`: simplified `testExpireSubscription` to fix flaky test (#1899) via NachoSoto (@NachoSoto)
* `Integration Tests`: actually verify that entitlement is active (#1880) via NachoSoto (@NachoSoto)

## 4.12.0
### Bugfixes
* `watchOS`: fixed crash when ran on single-target apps with Xcode 14 and before `watchOS 9.0` (#1895) via NachoSoto (@NachoSoto)
* `CustomerInfoManager`/`OfferingsManager`: improved display of underlying errors (#1888) via NachoSoto (@NachoSoto)
* `Offering`: improved confusing log for `PackageType.custom` (#1884) via NachoSoto (@NachoSoto)
* `PurchasesOrchestrator`: don't log warning if `allowSharingAppStoreAccount` setting was never explicitly set (#1885) via NachoSoto (@NachoSoto)
* Introduced type-safe `PurchasesError` and fixed some incorrect returned error types (#1879) via NachoSoto (@NachoSoto)
* `CustomerInfoManager`: fixed thread-unsafe implementation (#1878) via NachoSoto (@NachoSoto)
### New Features
* Disable SK1's `StoreKitWrapper` if SK2 is enabled and available (#1882) via NachoSoto (@NachoSoto)
* `Sendable` support (#1795) via NachoSoto (@NachoSoto)
### Other Changes
* Renamed `StoreKitWrapper` to `StoreKit1Wrapper` (#1886) via NachoSoto (@NachoSoto)
* Enabled `DEAD_CODE_STRIPPING` (#1887) via NachoSoto (@NachoSoto)
* `HTTPClient`: added `X-Client-Bundle-ID` and logged on SDK initialization (#1883) via NachoSoto (@NachoSoto)
* add link to SDK reference (#1872) via Andy Boedo (@aboedo)
* Added `StoreKit2Setting.shouldOnlyUseStoreKit2` (#1881) via NachoSoto (@NachoSoto)
* Introduced `TestLogHandler` to simplify how we test logged messages (#1858) via NachoSoto (@NachoSoto)
* `Integration Tests`: added test for purchasing `StoreProduct` instead of `Package` (#1875) via NachoSoto (@NachoSoto)
* `ErrorUtils`: added test to verify that returned errors can be converted to `ErrorCode` (#1871) via NachoSoto (@NachoSoto)

## 4.11.0
### Bugfixes
* Fixed crash on `async` SK1 cancelled purchase (#1869) via NachoSoto (@NachoSoto)
### New Features
* Added `beginRefundRequest` overload with completion block (#1861) via NachoSoto (@NachoSoto)
### Other Changes
* Skip release if needed and adds automatic release to PR title and body (#1870) via Cesar de la Vega (@vegaro)

## 4.10.3
### Bugfixes
* `TrialOrIntroPriceEligibilityChecker`: return `.noIntroOfferExists` if the product has no introductory offer (#1859) via NachoSoto (@NachoSoto)
* `watchOS`: fixed crash on single-target apps (#1849) via NachoSoto (@NachoSoto)
### Other Changes
* Update fastlane-plugin-revenuecat_internal and fix release-train job (#1866) via Cesar de la Vega (@vegaro)
* fix typo in comment (#1863) via Andy Boedo (@aboedo)
* Use Dangerfile repository (#1864) via Cesar de la Vega (@vegaro)
* `CircleCI`: added job for building SDK with `SPM` (#1860) via NachoSoto (@NachoSoto)
* `Lock`: changed default implementation to use `NSLock` (#1819) via NachoSoto (@NachoSoto)
* `Offering`/`StoreProductType`: `Sendable` conformance (#1826) via NachoSoto (@NachoSoto)
* `ReceiptParser: Sendable` conformance (#1825) via NachoSoto (@NachoSoto)
* `CustomerInfo: Sendable` conformance (#1824) via NachoSoto (@NachoSoto)
* Added `Collection.onlyElement` (#1857) via NachoSoto (@NachoSoto)
* README updates (#1856) via rglanz-rc (@rglanz-rc)
* `IntegrationTests`: actually fail test if tests aren't configured (#1855) via NachoSoto (@NachoSoto)
* `Configuration.with(usesStoreKit2IfAvailable:)`: removed "experimental" warning (#1845) via NachoSoto (@NachoSoto)
* Build fix- Update package requirements for MagicWeather (#1852) via Joshua Liebowitz (@taquitos)
* `Fastfile`: `test_tvos` lane had duplicate parameter (#1846) via NachoSoto (@NachoSoto)

## 4.10.2
### Bugfixes
* `ErrorResponse`: don't add attribute errors to message if empty (#1844) via NachoSoto (@NachoSoto)
* Purchase cancellations: unify behavior between SK1 and SK2 (#1841) via NachoSoto (@NachoSoto)
* StoreKit 2: `PurchasesOrchestrator`: don't log "purchased product" if it was cancelled (#1840) via NachoSoto (@NachoSoto)
* `Backend`: fixed potential race conditions introduced by `OperationDispatcher.dispatchOnWorkerThread(withRandomDelay:)` (#1827) via NachoSoto (@NachoSoto)
* `DeviceCache`: `Sendable` conformance and fixed thread-safety (#1823) via NachoSoto (@NachoSoto)
* Directly send delegate customer info when delegate is set (always sends cached CustomerInfo value) (#1828) via Josh Holtz (@joshdholtz)
* `SystemInfo.finishTransactions`: made thread-safe (#1807) via NachoSoto (@NachoSoto)
* `Purchases.shared` and `Purchases.isConfigured` are now thread-safe (#1813) via NachoSoto (@NachoSoto)
* `PriceFormatterProvider: Sendable` conformance and fixed thread-safety (#1818) via NachoSoto (@NachoSoto)
* `StoreKitConfigTestCase.changeStorefront`: re-enabled on iOS 16 (#1811) via NachoSoto (@NachoSoto)

### Other Changes
* `DeviceCache`: no longer set cache timestamp before beginning request (#1839) via NachoSoto (@NachoSoto)
* `MagicWeatherSwiftUI`: updated to use `async` APIs (#1843) via NachoSoto (@NachoSoto)
* Release train (#1842) via Cesar de la Vega (@vegaro)
* Adds hotfixes section to RELEASING doc (#1837) via Cesar de la Vega (@vegaro)
* Update fastlane plugin (#1838) via Toni Rico (@tonidero)
* Update migration doc from didReceiveUpdatedCustomerInfo to receivedUpdatedCustomerInfo (#1836) via Josh Holtz (@joshdholtz)
* `PurchasesDelegate`: added test for latest cached customer info always being sent (#1830) via NachoSoto (@NachoSoto)
* `CallbackCache: Sendable` conformance (#1835) via NachoSoto (@NachoSoto)
* `CallbackCache`: simplified implementation using `Atomic` (#1834) via NachoSoto (@NachoSoto)
* `PurchasesLogInTests`: added test to verify `logIn` updates offerings cache (#1833) via NachoSoto (@NachoSoto)
* Created `PurchasesLoginTests` (#1832) via NachoSoto (@NachoSoto)
* `SwiftLint`: cleaned up output (#1821) via NachoSoto (@NachoSoto)
* Link to sdk reference (#1831) via aboedo (@aboedo)
* `Atomic: ExpressibleByBooleanLiteral` (#1822) via NachoSoto (@NachoSoto)
* `SwiftLint`: fixed build warning (#1820) via NachoSoto (@NachoSoto)
* Adds an approval job that will tag the release (#1815) via Cesar de la Vega (@vegaro)
* `Atomic: ExpressibleByNilLiteral` (#1804) via NachoSoto (@NachoSoto)
* `PurchasesAttributionDataTests`: fixed potential race condition in flaky test (#1805) via NachoSoto (@NachoSoto)
* Fixed warnings for unnecessary `try` (#1816) via NachoSoto (@NachoSoto)
* Moved `AttributionFetcherError` inside `AttributionFetcher` (#1808) via NachoSoto (@NachoSoto)
* Update documentation for presentCodeRedemptionSheet (#1817) via Joshua Liebowitz (@taquitos)
* `Dangerfile`: added "next_release" as supported label (#1810) via NachoSoto (@NachoSoto)
* PurchaseTester- Update Podfile.lock (#1814) via Joshua Liebowitz (@taquitos)
* Update to latest fastlane plugin (#1802) via Toni Rico (@tonidero)
* Clean up: moved `BackendIntegrationTests.xctestplan` to `TestPlans` folder (#1812) via NachoSoto (@NachoSoto)
* `SK2StoreProduct`: conditionally removed `@available` workaround (#1794) via NachoSoto (@NachoSoto)
* `SwiftLint`: fixed deprecation warning (#1809) via NachoSoto (@NachoSoto)
* Update gems (#1791) via Joshua Liebowitz (@taquitos)
* Replace usages of replace_in with replace_text_in_files action (#1803) via Toni Rico (@tonidero)

## 4.10.1
### Bugfixes
* Directly send delegate customer info when delegate is set (always sends cached CustomerInfo value) (#1828) via Josh Holtz (@joshdholtz)

## 4.10.0
### New Features
* New AdServices Integration (#1727) via Josh Holtz (@joshdholtz)
### Bugfixes
* `OfferingsManager`: expose underlying error when `ProductsManager` returns an error (#1792) via NachoSoto (@NachoSoto)
* Add missing logs to ProductsFetcherSK2 (#1780) via beylmk (@beylmk)
### Other Changes
* AdServices: Fix failing tests on main in iOS 12 and 13 - IOSAttributionPosterTests (#1797) via Josh Holtz (@joshdholtz)
* Invalidates gem caches and separates danger and macOS caches (#1798) via Cesar de la Vega (@vegaro)
* Pass CircleCI branch to prepare_next_version job (#1796) via Toni Rico (@tonidero)
* Configure Danger, enforce labels (#1761) via Cesar de la Vega (@vegaro)
* Support for new fastlane internal plugin for automation (#1779) via Toni Rico (@tonidero)

## 4.9.1
### Fixes:
* `CustomerInfoResponseHandler`: return `CustomerInfo` instead of error if the response was successful (#1778) via NachoSoto (@NachoSoto)
* Error logging: `logErrorIfNeeded` no longer prints message if it's the same as the error description (#1776) via NachoSoto (@NachoSoto)
* fix another broken link in docC docs (#1777) via aboedo (@aboedo)
* fix links to restorePurchase (#1775) via aboedo (@aboedo)
* fix getProducts docs broken link (#1772) via aboedo (@aboedo)

### Improvements:
* `Logger`: wrap `message` in `@autoclosure` to avoid creating when `LogLevel` is disabled (#1781) via NachoSoto (@NachoSoto)

### Other changes:
* Lint: fixed `SubscriberAttributesManager` (#1774) via NachoSoto (@NachoSoto)
## 4.9.0
* Update Configuration.swift to include platformInfo. Used by PurchasesHybridCommon (#1760) via Joshua Liebowitz (@taquitos)

## 4.8.0
### New API

* `EntitlementInfo`: added `isActiveInCurrentEnvironment` and `isActiveInAnyEnvironment` (#1755) via NachoSoto (@NachoSoto)

### Other Changes
* Plumb platformInfo in Configuration for PHC use (#1757) via Joshua Liebowitz (@taquitos)
* added a log when `autoSyncPurchases` is disabled (#1749) via aboedo (@aboedo)
* Re-fetch cached offerings and products after Storefront changes (3/4)  (#1743) via Juanpe Catalán (@Juanpe)
* `bug_report.md`: clarify SK2 support (#1752) via NachoSoto (@NachoSoto)
* `logErrorIfNeeded`: also log message if present (#1754) via NachoSoto (@NachoSoto)

## 4.7.0
### Changes:
* Replaced `CustomerInfo.nonSubscriptionTransactions` with a new non-`StoreTransaction` type (#1733) via NachoSoto (@NachoSoto)
* `Purchases.configure`: added overload taking a `Configuration.Builder` (#1720) via NachoSoto (@NachoSoto)
* Extract Attribution logic out of Purchases (#1693) via Joshua Liebowitz (@taquitos)
* Remove create alias (#1695) via Joshua Liebowitz (@taquitos)

All attribution APIs can now be accessed from `Purchases.shared.attribution`.

### Improvements:
* Improved purchasing logs, added promotional offer information (#1725) via NachoSoto (@NachoSoto)
* `PurchasesOrchestrator`: don't log attribute errors if there are none (#1742) via NachoSoto (@NachoSoto)
* `FatalErrorUtil`: don't override `fatalError` on release builds (#1736) via NachoSoto (@NachoSoto)
* `SKPaymentTransaction`: added more context to warnings about missing properties (#1731) via NachoSoto (@NachoSoto)
* New SwiftUI Purchase Tester example (#1722) via Josh Holtz (@joshdholtz)
* update docs for `showManageSubscriptions` (#1729) via aboedo (@aboedo)
* `PurchasesOrchestrator`: unify finish transactions between SK1 and SK2 (#1704) via NachoSoto (@NachoSoto)
* `SubscriberAttribute`: converted into `struct` (#1648) via NachoSoto (@NachoSoto)
* `CacheFetchPolicy.notStaleCachedOrFetched`: added warning to docstring (#1708) via NachoSoto (@NachoSoto)
* Clear cached offerings and products after Storefront changes (2/4) (#1583) via Juanpe Catalán (@Juanpe)
* `ROT13`: optimized initialization and removed magic numbers (#1702) via NachoSoto (@NachoSoto)

### Fixes:
* `logIn`/`logOut`: sync attributes before aliasing (#1716) via NachoSoto (@NachoSoto)
* `Purchases.customerInfo(fetchPolicy:)`: actually use `fetchPolicy` parameter (#1721) via NachoSoto (@NachoSoto)
* `PurchasesOrchestrator`: fix behavior dealing with `nil` `SKPaymentTransaction.productIdentifier` during purchase (#1680) via NachoSoto (@NachoSoto)
* `PurchasesOrchestrator.handlePurchasedTransaction`: always refresh receipt data (#1703) via NachoSoto (@NachoSoto)

## 4.6.1
### Bug fixes

* `EntitlementInfo.isActive` returns true if `requestDate == expirationDate` (#1684) via beylmk (@beylmk)
* Fixed usages of `seealso` (#1689) via NachoSoto (@NachoSoto)
* Fixed `ROT13.string` thread-safety (#1686) via NachoSoto (@NachoSoto)
* `PurchasesOrchestrator`: replaced calls to `syncPurchases` with posting receipt for an individual product during SK2 purchases (#1666) via NachoSoto (@NachoSoto)

## 4.6.0
_This release is compatible with Xcode 14 beta 1_

### New Features

* `EntitlementInfos`: added `activeInAnyEnvironment` and `activeInCurrentEnvironment` (#1647) via NachoSoto (@NachoSoto)

In addition to `EntitlementInfos.active`, two new methods are added to allow detecting entitlements from sandbox and production environments:
```swift
customerInfo.entitlements.activeInCurrentEnvironment
customerInfo.entitlements.activeInAnyEnvironment
```

### Bug fixes

* `MacDevice`: changed usage of `kIOMasterPortDefault` to fix Catalyst compilation on Xcode 14 (#1676) via NachoSoto (@NachoSoto)
* `Result.init(value:error:)`: avoid creating error if value is provided (#1672) via NachoSoto (@NachoSoto)

## 4.5.2
_This version supports Xcode 14 beta 1_

* `PurchasesOrchestrator.handleDeferredTransaction`: check `NSError.domain` too (#1665) via NachoSoto (@NachoSoto)
* `PurchasesOrchestrator`: replaced manual `Lock` with `Atomic` (#1664) via NachoSoto (@NachoSoto)
* `CodableStrings.decoding_error`: added underlying error information (#1668) via NachoSoto (@NachoSoto)
* Fixed Xcode 14 compilation: avoid `@available` properties (#1661) via NachoSoto (@NachoSoto)

## 4.5.1
### Fixes

- Fix an issue where entitlement identifiers and product identifiers would get converted to snake case and returned as empty.
    https://github.com/RevenueCat/purchases-ios/pull/1651
    https://github.com/RevenueCat/purchases-ios/issues/1650

## 4.5.0
### New Features
* `Purchases.customerInfo()`: added overload with a new `CacheFetchPolicy` (#1608) via NachoSoto (@NachoSoto)
* `Storefront`: added `sk1CurrentStorefront` for Objective-C (#1614) via NachoSoto (@NachoSoto)

### Bug Fixes
* Fix for not being able to read receipts on watchOS (#1625) via Patrick Busch (@patrickbusch)

### Other Changes
* Added tests for `PurchasesOrchestrator` invoking `listenForTransactions` only if SK2 is enabled (#1618) via NachoSoto (@NachoSoto)
* `PurchasesOrchestrator`: removed `lazy` hack for properties with `@available` (#1596) via NachoSoto (@NachoSoto)
* `PurchasesOrchestrator.purchase(sk2Product:promotionalOffer:)`: simplified implementation with new operator (#1602) via NachoSoto (@NachoSoto)

## 4.4.0
### New Features
* Added new API key validation (#1581) via NachoSoto (@NachoSoto)
* Sending `X-Is-Sandbox` header in API requests (#1582) via NachoSoto (@NachoSoto)
* Added `AmazonStore` to `Store` enum (#1586) via Will Taylor (@fire-at-will)
* Added `Configuration` object and API to configure Purchases (#1556) via Joshua Liebowitz (@taquitos)
* Exposed `shouldShowPriceConsent` on `PurchasesDelegate` (#1520) via Joshua Liebowitz (@taquitos)

### Fixes
* `ManageSubscriptionsHelper`: fixed discrepancy between `SystemInfo.isAppleSubscription(managementURL:)` and `SystemInfo.appleSubscriptionsURL` (#1607) via NachoSoto (@NachoSoto)
* `PurchasesOrchestrator`: don't listen for StoreKit 2 transactions if it's disabled (#1593) via NachoSoto (@NachoSoto)
* Added tests and fix to ensure `RawDataContainer` includes all data (#1565) via NachoSoto (@NachoSoto)
* Added obsoletion for `DeferredPromotionalPurchaseBlock` (#1600) via NachoSoto (@NachoSoto)
* `StoreKit 2` purchases: don't throw when purchase is cancelled (#1603) via NachoSoto (@NachoSoto)
* Ensure `SubscriptionPeriod`s are represented as 1week instead of 7days (#1591) via Will Taylor (@fire-at-will)
* `PurchaseStrings`: fixed transaction message formatting (#1571) via NachoSoto (@NachoSoto)
* `willRenew` update comment for lifetime will be false (#1579) via Josh Holtz (@joshdholtz)
* `SK1StoreProductDiscount`: handle `SKProductDiscount.priceLocale` being `nil` and created `StoreKitWorkarounds` (#1545) via NachoSoto (@NachoSoto)
* Fixed `ErrorUtils.logDecodingError` (#1539) via NachoSoto (@NachoSoto)

### Other changes
* `GetIntroEligibilityOperation`: replaced response parsing with `Decodable` (#1576) via NachoSoto (@NachoSoto)
* `PostOfferForSigningOperation`: changed response parsing to using `Decodable` (#1573) via NachoSoto (@NachoSoto)
* Converted `CustomerInfo` and related types to use `Codable` (#1496) via NachoSoto (@NachoSoto)
* `MagicWeatherSwiftUI`: fixed usage of `PurchaseDelegate` (#1601) via NachoSoto (@NachoSoto)
* Added tests for `PeriodType`/`PurchaseOwnershipType`/`Store` (#1558) via NachoSoto (@NachoSoto)
* Fix description of `StoreTransaction` (#1584) via aboedo (@aboedo)
* Prepare the codebase to listen to the Storefront changes (1/4) (#1557) via Juanpe Catalán (@Juanpe)
* `Purchases.canMakePayments`: moved implementation to `StoreKitWrapper` (#1580) via NachoSoto (@NachoSoto)
* `BackendGetIntroEligibilityTests`: fixed test that was passing before anything ran (#1575) via NachoSoto (@NachoSoto)
* `PeriodType`/`PurchaseOwnershipType`/`Store`: conform to `Encodable` (#1551) via NachoSoto (@NachoSoto)
* Improved `EntitlementInfosTests` (#1547) via NachoSoto (@NachoSoto)
* `ProductRequestData`: added `Storefront` for receipt posting (#1505) via NachoSoto (@NachoSoto)
* Added `RawDataContainer` conformances to APITesters (#1550) via NachoSoto (@NachoSoto)
* Simplified `EntitlementInfo.isEqual` (#1548) via NachoSoto (@NachoSoto)
* `CustomerInfo`: moved deprecated property to `Deprecations` (#1549) via NachoSoto (@NachoSoto)
* `PackageType`: simplified `typesByDescription` and implemented `CustomDebugStringConvertible` (#1531) via NachoSoto (@NachoSoto)

## 4.3.0

#### API updates:

- Introduced new `Storefront` type to abstract SK1's `SKStorefront` and SK2's `StoreKit.Storefront`.
- Exposed `Storefront.currentStorefront`.
- Added new `ErrorCode.offlineConnectionError` to differenciate offline errors versus the more generic `.networkError`.
- Added `Purchases-setFirebaseAppInstanceID` to allow associating RevenueCat users with Firebase.
- Added `Purchases.setPushTokenString` as an overload to `Purchases.setPushToken`.
- Renamed `PurchasesDelegate.purchases(_:shouldPurchasePromoProduct:defermentBlock:)` to `PurchasesDelegate.purchases(_ purchases: Purchases, readyForPromotedProduct product: StoreProduct, purchase:)` to clarify its usage (see #1460).

#### Other:

- Many improvements to error reporting and logging to help debugging.
- Optimized StoreKit 2 purchasing by eliminating a duplicate API request.
- A lot of under-the-hood improvements, mainly focusing on networking. If you see any issues we'd appreciate [bug reports](https://github.com/RevenueCat/purchases-ios/issues/new?assignees=&labels=bug&template=bug_report.md&title=)!


## 4.2.1

- Fixed a potential race condition when syncing user attributes #1479

## 4.2.0
#### API updates:

- Added new method `setMixpanelDistinctID` as a convenience method for setting the required attribute for the Mixpanel integration #1397

- `getPromotionalOffer` has been deprecated in favor of `promotionalOffer` #1405

- `getEligiblePromotionalOffers` has been deprecated in favor of `eligiblePromotionalOffers` #1405

- `StoreProductDiscount` now includes the `numberOfPeriods` property #1428


#### Other:

- Added workaround for StoreKit 1 incorrectly reporting purchase cancellations #1450

- MagicWeatherSwiftUI now includes an example for using `purchases(:shouldPurchasePromoProduct:defermentBlock:)` #1459

- Various documentation improvements

- Additional under-the-hood improvements, continuing to focus on network requests and tests.

## 4.1.0

#### API updates: 

- Added new method `checkTrialOrIntroDiscountEligibility(product:)`, which allows you to check for intro or discount eligibility for a single `StoreProduct`. 
    https://github.com/RevenueCat/purchases-ios/pull/1354

- Added explicit parameter name for `checkTrialOrIntroDiscountEligibility(productIdentifiers:)`. 
The existing method without the parameter name still work, but is now deprecated. Xcode will offer an auto fix-it for it. 
    https://github.com/RevenueCat/purchases-ios/pull/1362

- Made `StoreProduct` initializers public so they can be used for testing. 

#### Other:

- Added auto-fix-it for `invalidatePurchaserInfoCache` rename
    https://github.com/RevenueCat/purchases-ios/pull/1379

- Docs improvements
- A lot of under-the-hood improvements, mainly focusing on network requests and tests.


## 4.0.0

RevenueCat iOS SDK v4 is here!! 

![Dancing cats](https://media.giphy.com/media/lkbNG2zqzHZUA/giphy.gif)

[Full Changelog](https://github.com/revenuecat/purchases-ios/compare/main...4.0.0)

### Migration Guide
- See our [RevenueCat V4 API update doc](Sources/DocCDocumentation/DocCDocumentation.docc/V4_API_Migration_guide.md) for API updates.
**Note:** This release is based off of 4.0.0-rc.4. Developers migrating from that version shouldn't see any changes. 

### API changes:
There have been a lot of changes since v3! 

Here are the highlights:

#### Async / Await alternative APIs
New `async / await` alternatives for all APIs that have completion blocks, as well as an `AsyncStream` for CustomerInfo. 

#### New types and cleaned up naming
New types that wrap StoreKit's native types, and we cleaned up the naming of other types and methods for a more consistent experience. 

#### New APIs for Customer Support
You can now use `showManageSubscriptions()` and `beginRefundRequest()` to help your users manage their subscriptions right from the app.

#### Rewritten in Swift 
We [rewrote the SDK in 100% Swift](https://www.revenuecat.com/blog/migrating-our-objective-c-sdk-to-swift). This made the code more uniform and easy to maintain, and helps us better support StoreKit 2. 

#### StoreKit 2 Support [Beta]
**[Experimental]** Introduced support for using StoreKit 2 under the hood for compatible devices. This is currently in beta phase, and disabled by default. 
When enabled, StoreKit 2 APIs will be used under the hood for purchases in compatible devices. You can enable this by configuring the SDK passing `useStoreKit2IfAvailable: true`. 
On devices that don't support StoreKit 2, StoreKit 1 will be used automatically instead. 
 
#### Full API changes list
- See our [RevenueCat V4 API update doc](Sources/DocCDocumentation/DocCDocumentation.docc/V4_API_Migration_guide.md) for API updates.

### Documentation: 

We built a new Documentation site with Docc with cleaner and more detailed docs. 
The new documentation can be found [here](https://revenuecat-docs.netlify.app/documentation/Revenuecat). 

## 4.0.0-RC.4

- Fourth RC for RevenueCat framework v4 🎉
    100% Swift framework + ObjC support.

[Full Changelog](https://github.com/revenuecat/purchases-ios/compare/4.0.0-rc.3...4.0.0-rc.4)
- See our [RevenueCat V4 API update doc](Sources/DocCDocumentation/DocCDocumentation.docc/V4_API_Migration_guide.md) for API updates.

RC 4 introduces the following updates:

### API changes:

#### Breaking changes: 
- Replaced `checkPromotionalDiscountEligibility` with `getPromotionalOffer`, which returns a `PromotionalOffer`. 
- Renamed `Purchases/purchase(package:discount:)` and its variants to `Purchases/purchase(package:promotionalOffer:)`. They now take a `PromotionalOffer` instead of a `StoreProductDiscount`.
- [Objective-C only]: Updated type of `StoreProduct.price` and `StoreProductDiscount.price` from `NSDecimal` to the much more useful `NSDecimalNumber`. 

#### Additions:
- Added `StoreProduct.ProductType`, and `StoreProduct.ProductCategory`, which provide extra information about whether a product is a consumable, non-consumable, auto-renewable or non-auto-renewable subscription.
- Added `currencyCode` to `StoreProduct` and `StoreProductDiscount`.
- Added `localizedPriceString` to `StoreProductDiscount`.

### Documentation: 

- Documentation can be found in https://revenuecat-docs.netlify.app/documentation/Revenuecat. 
- We've made several improvements to docstrings and added a few landing pages for the most important sections of the SDK. 

### Other changes: 
- There are lots of under the hood improvements. If you see any issues we'd appreciate [bug reports](https://github.com/RevenueCat/purchases-ios/issues/new?assignees=&labels=bug&template=bug_report.md&title=)!

### Changes from previous RC

These changes add to all of the changes from beta RC 2, [listed here.](https://github.com/RevenueCat/purchases-ios/blob/4.0.0-rc.3/CHANGELOG.latest.md).

## 4.0.0-RC.3

- Third RC for RevenueCat framework v4 🎉
    100% Swift framework + ObjC support.

[Full Changelog](https://github.com/revenuecat/purchases-ios/compare/4.0.0-rc.2...4.0.0-rc.3)
- See our [RevenueCat V4 API update doc](Sources/DocCDocumentation/DocCDocumentation.docc/V4_API_Migration_guide.md) for API updates.

RC 3 introduces the following updates:

### API changes:

- Added `setCleverTapID`, for integration with CleverTap.
- Added `.noIntroOfferExists` as an `IntroEligibilityStatus`, for more granularity when checking for intro pricing eligibility.
- Added `StoreProductDiscount.type`, which allows you to easily tell whether a discount represents a Promo Offer or an Intro Pricing.

### Documentation: 

- Documentation can be found in https://revenuecat-docs.netlify.app/documentation/Revenuecat. 
- We've made several improvements to docstrings and added a few landing pages for the most important sections of the SDK. 

### Migration fixes

- Fixed a few instances where Xcode's automatic migration tools wouldn't automatically suggest a fix-it for updated code.

### Other changes: 
- There are lots of under the hood improvements. If you see any issues we'd appreciate [bug reports](https://github.com/RevenueCat/purchases-ios/issues/new?assignees=&labels=bug&template=bug_report.md&title=)!

### Changes from previous RC

These changes add to all of the changes from beta RC 2, [listed here.](https://github.com/RevenueCat/purchases-ios/blob/4.0.0-rc.2/CHANGELOG.latest.md).

## 4.0.0-RC.2

- Second RC for RevenueCat framework v4 🎉
    100% Swift framework + ObjC support.

[Full Changelog](https://github.com/revenuecat/purchases-ios/compare/4.0.0-rc.1...4.0.0-rc.2)
- See our [RevenueCat V4 API update doc](Sources/DocCDocumentation/DocCDocumentation.docc/V4_API_Migration_guide.md) for API updates.

RC 2 introduces the following updates:

### API changes:

- Removed `SubscriptionPeriod.Unit.unknown`. Subscriptions with empty `SubscriptionPeriod` values will have `nil` `subscriptionPeriod` instead.
- Removed `StoreProductDiscount.none`, since it wasn't needed.
- Added `useStoreKit2IfAvailable` (Experimental) configuration option. This is disabled by default.
If enabled, the SDK will use StoreKit 2 APIs for purchases under the hood.
**This is currently in an experimental phase, and we don't recommend using it in production in this build.**

### Documentation: 

- Documentation is now using DocC and it can be found in https://revenuecat-docs.netlify.app/documentation/Revenuecat. 
- We've made several improvements to docstrings and added a few landing pages for the most important sections of the SDK. 

### Migration fixes

- Fixed a few instances where Xcode's automatic migration tools wouldn't correctly update the code.

### Other changes: 
- There are lots of under the hood improvements. If you see any issues we'd appreciate [bug reports](https://github.com/RevenueCat/purchases-ios/issues/new?assignees=&labels=bug&template=bug_report.md&title=)!

### Changes from previous RC

These changes add to all of the changes from beta RC 1, [listed here.](https://github.com/RevenueCat/purchases-ios/blob/4.0.0-rc.1/CHANGELOG.latest.md).


## 4.0.0-RC.1

- First RC for RevenueCat framework v4 🎉
    100% Swift framework + ObjC support.

[Full Changelog](https://github.com/revenuecat/purchases-ios/compare/4.0.0-beta.10...4.0.0-rc.1)
- See our [RevenueCat V4 API update doc](Sources/DocCDocumentation/DocCDocumentation.docc/V4_API_Migration_guide.md) for API updates.

RC 1 introduces the following updates:

### API changes:

- `Purchases.paymentDiscount(forProductDiscount:product:completion:)` and `Purchases.paymentDiscount(forProductDiscount:product:)` have been removed. Now, instead of obtaining the `SKPaymentDiscount` from a `SKProductDiscount` to then call `purchase(package:discount:)`, you check eligibility for the promo offer by calling `checkPromotionalDiscountEligibility(forProductDiscount:product:)`, then get the `StoreProductDiscount` directly from the `StoreProduct` and pass that into `purchase(package:discount:)`. 

- `StoreProduct` and `StoreProductDiscount`, replace `SKProduct` and `SKProductDiscount` in the following methods:
    - `Purchases.getProducts(_:completion:)`
    - `Purchases.products(_:)`
    - `Purchases.purchase(product:completion:)`
    - `Purchases.purchase(product:)`
    - `Purchases.purchase(product:discount:completion:)`
    - `Purchases.purchase(product:discount:)`
    - `Purchases.purchase(package:discount:completion:)`
    - `Purchases.purchase(package:discount:)`
    - `PurchasesDelegate.purchases(shouldPurchasePromoProduct:defermentBlock:)`
- `StoreProduct.introductoryPrice` has been renamed to `StoreProduct.introductoryDiscount`
- `StoreTransaction` now includes `quantity`
- Renamed `Purchases.restoreTransactions` to `Purchases.restorePurchases`
- Lowered `StoreProduct.introductoryDiscount` availability to iOS 11.2 and equivalent OS versions
- Added several `@available` annotations for automatic migration from StoreKit types

In addition to all of the changes from beta 10, [listed here.](https://github.com/RevenueCat/purchases-ios/blob/4.0.0-beta.10/CHANGELOG.latest.md)


### Other changes: 
- There are lots of under the hood improvements. If you see any issues we'd appreciate [bug reports](https://github.com/RevenueCat/purchases-ios/issues/new?assignees=&labels=bug&template=bug_report.md&title=)!


## 4.0.0-beta.10

- Tenth beta for RevenueCat framework 🎉
    100% Swift framework + ObjC support.

[Full Changelog](https://github.com/revenuecat/purchases-ios/compare/4.0.0-beta.9...4.0.0-beta.10)
- See our [RevenueCat V4 API update doc](Sources/DocCDocumentation/DocCDocumentation.docc/V4_API_Migration_guide.md) for API updates.

Beta 10 introduces the following updates:

### Breaking changes:
- A new type, `StoreTransaction`, replaces `SKPaymentTransaction` in the return types of the following methods:
    - `Purchases.purchase(product:completion:)`
    - `Purchases.purchase(package:completion:)`
    - `Purchases.purchase(package:discount:completion:)`
    - `Purchases.purchase(package:discount:completion:)`
    - `PurchasesDelegate.purchases(shouldPurchasePromoProduct:defermentBlock:)`
    - `CustomerInfo.nonSubscriptionTransactions`
- `StoreProduct.PromotionalOffer` has been renamed to `StoreProduct.StoreProductDiscount`.

In addition to all of the changes from Beta 9, [listed here.](
https://github.com/RevenueCat/purchases-ios/blob/4.0.0-beta.9/CHANGELOG.latest.md)


### Other changes: 
- There are lots of under the hood improvements. If you see any issues we'd appreciate [bug reports](https://github.com/RevenueCat/purchases-ios/issues/new?assignees=&labels=bug&template=bug_report.md&title=)!

## 4.0.0-beta.9

- Ninth beta for RevenueCat framework 🎉
    100% Swift framework + ObjC support.

[Full Changelog](https://github.com/revenuecat/purchases-ios/compare/4.0.0-beta.8...4.0.0-beta.9)
- See our [RevenueCat V4 API update doc](Sources/DocCDocumentation/DocCDocumentation.docc/V4_API_Migration_guide.md) for API updates.

### Breaking changes:
- `identify`, previously deprecated, has been removed in favor of `logIn`.
- `reset`, previously deprecated, has been removed in favor of `logOut`.
- `Package.product` has been replaced with `Package.storeProduct`. This is an abstraction of StoreKit 1's `SKProduct` and StoreKit 2's `StoreKit.Product`, but it also adds useful features like `pricePerMonth` and `priceFormatter`. The underlying objects from StoreKit are available through `StoreProduct.sk1Product` and `StoreProduct.sk2Product`.

### Xcode version requirements and updated deployment targets
`purchases-ios` v4 requires using Xcode 13.2 or newer. 
It also updates the minimum deployment targets for iOS, macOS and tvOS. 

##### Minimum deployment targets
|  | v3 | v4 |
| :-: | :-: | :-: |
| iOS | 9.0 | 11.0 |
| tvOS | 9.0 | 11.0 |
| macOS | 10.12 | 10.13 |
| watchOS | 6.2 | 6.2 (unchanged) |

### StoreKit 2 support:
- This beta introduces new methods that add functionality using StoreKit 2:
    - `showManageSuscriptions(completion:)`
    - `beginRefundRequest(forProduct:)`
    - `beginRefundRequest(forEntitlement:)`. 
    - `beginRefundRequestForActiveEntitlement()`
 - `checkTrialOrIntroductoryPriceEligibility(productIdentifiers:completion:)` now uses StoreKit 2 if it's available, to make calculation more accurate and fast.
 - A new flag has been introduced to `setup`, `useStoreKit2IfAvailable` (defaults to `false`), to use StoreKit 2 APIs for purchases instead of StoreKit 1.

### `Async` / `Await` alternative APIs
- In purchases-ios v3, `Async` / `Await` alternative APIs were made available through Xcode's auto-generation for Objective-C projects. This beta re-adds the `Async` / `Await` alternative APIs for v4.

### New APIs:

- `showManageSuscriptions(completion:)`: Use this method to show the subscription management for the current user. Depending on where they made the purchase and their OS version, this might take them to the `managementURL`, or open the iOS Subscription Management page. 
- `beginRefundRequestForCurrentEntitlement`: Use this method to begin a refund request for the purchase that granted the current entitlement.
- `beginRefundRequest(forProduct:)`: Use this method to begin a refund request for a purchase, specifying the product identifier.
- `beginRefundRequest(forEntitlement:)`: Use this method to begin a refund request for a purchase, specifying the entitlement identifier.
- Adds an optional `useStoreKit2IfAvailable` parameter to `setup` (defaults to `false`). If enabled, purchases will be done by using StoreKit 2 APIs instead of StoreKit 1. **This is currently experimental, and not all features are supported with StoreKit 2 APIs**.
- Use `verboseLogHandler` or `verboseLogs` to enable more details in logs, including file names, line numbers and method names.

### Known issues:
- Promotional offers and deferred purchases are not currently supported with StoreKit 2. If your app uses either of those, you should omit `useStoreKit2IfAvailable` in `setup` or set it to `false`.

### Other changes: 
- There are lots of under the hood improvements. If you see any issues we'd appreciate [bug reports](https://github.com/RevenueCat/purchases-ios/issues/new?assignees=&labels=bug&template=bug_report.md&title=)!

## 4.0.0-beta.8
- Eighth beta for RevenueCat framework 🎉
    100% Swift framework + ObjC support.
- See our [RevenueCat V4 API update doc](Sources/DocCDocumentation/DocCDocumentation.docc/V4_API_Migration_guide.md) for API updates.
- Replaced custom DateFormatter with new ISO8601DateFormatter
    https://github.com/RevenueCat/purchases-ios/pull/998
- Put CustomerInfo Logging into LoginHandler function
    https://github.com/RevenueCat/purchases-ios/pull/1095
- Pass underlying NSError localizedDescription
    https://github.com/RevenueCat/purchases-ios/pull/1077
- ErrorCode conforms to CustomNSError to provide description
    https://github.com/RevenueCat/purchases-ios/pull/1022

## 4.0.0-beta.7
- Seventh beta for RevenueCat framework 🎉
    100% Swift framework + ObjC support.
- See our [RevenueCat V4 API update doc](Sources/DocCDocumentation/DocCDocumentation.docc/V4_API_Migration_guide.md) for API updates.
- macOS: improved ErrorCode.storeProblemError to indicate potential cancellation
    https://github.com/RevenueCat/purchases-ios/pull/943
- Log when duplicate subscription time lengths exist during Offering init
    https://github.com/RevenueCat/purchases-ios/pull/954
- PurchasesOrchestrator.paymentDiscount(forProductDiscount:product:completion:): improved error information
    https://github.com/RevenueCat/purchases-ios/pull/957
- Make a public rawData a thing for all our datatypes
    https://github.com/RevenueCat/purchases-ios/pull/956
- Detect ErrorCode.productAlreadyPurchasedError when SKError.unknown is actually caused by it
    https://github.com/RevenueCat/purchases-ios/pull/965

## 4.0.0-beta.6
- Sixth beta for RevenueCat framework 🎉
    100% Swift framework + ObjC support.
- See our [RevenueCat V4 API update doc](Sources/DocCDocumentation/DocCDocumentation.docc/V4_API_Migration_guide.md) for API updates.
- Add more specific backend error subcodes
    https://github.com/RevenueCat/purchases-ios/pull/927

## 4.0.0-beta.5
- Fifth beta for RevenueCat framework 🎉
    100% Swift framework + ObjC support.
- See our [RevenueCat V4 API update doc](Sources/DocCDocumentation/DocCDocumentation.docc/V4_API_Migration_guide.md) for API updates.
- Improve error handling for backend errors
    https://github.com/RevenueCat/purchases-ios/pull/922
- Replaced #file with #fileID
    https://github.com/RevenueCat/purchases-ios/pull/921
- Rename a few public APIs to reduce confusion
    https://github.com/RevenueCat/purchases-ios/pull/917

## 4.0.0-beta.4
- Fourth beta for RevenueCat framework 🎉
    100% Swift framework + ObjC support.
- See our [RevenueCat V4 API update doc](Sources/DocCDocumentation/DocCDocumentation.docc/V4_API_Migration_guide.md) for API updates.
- Purchaser to Customer rename
    https://github.com/RevenueCat/purchases-ios/pull/878
    https://github.com/RevenueCat/purchases-ios/pull/899
- Ensure restoreTransactions called on main thread
    https://github.com/RevenueCat/purchases-ios/pull/908
- Fix logging messages for HTTPClient
    https://github.com/RevenueCat/purchases-ios/pull/901
- Offerings completion not called in edge case
    https://github.com/RevenueCat/purchases-ios/pull/879
- Fix Offerings:completion: not returning if SKProductsRequest hangs
    https://github.com/RevenueCat/purchases-ios/pull/909
- Added setAirshipChannelID
    https://github.com/RevenueCat/purchases-ios/pull/869
    https://github.com/RevenueCat/purchases-ios/pull/877

## 4.0.0-beta.3
- Third beta for RevenueCat framework 🎉
    100% Swift framework + ObjC support.
- See our [RevenueCat V4 API update doc](Sources/DocCDocumentation/DocCDocumentation.docc/V4_API_Migration_guide.md) for API updates.
- Fix bug logging the incorrect missing product IDs in `getOfferings`
- Fix MagicWeather sample app with latest updates
- Add caching of completion blocks for `createAlias` and `identify` calls to avoid sending calls with the same parameters at the same time

## 4.0.0-beta.2
- Second beta for RevenueCat framework 🎉
    100% Swift framework + ObjC support.
- See our [RevenueCat V4 API update doc](Sources/DocCDocumentation/DocCDocumentation.docc/V4_API_Migration_guide.md) for API updates.
- Our API is now more consistent, `completionBlock` -> `completion` across Swift/ObjC
- Fixed SPM warning relating to excluding `RequiresXcode13` 
- Make parameter labels that were optional pre-migration optional again

## 4.0.0-beta.1
- First beta for RevenueCat (previously Purchases) framework 🎉
    100% Swift framework + ObjC support.
- See our [RevenueCat V4 API update doc](Sources/DocCDocumentation/DocCDocumentation.docc/V4_API_Migration_guide.md) for API updates.

## 3.12.5
- Cache callbacks for `createAlias` and `identify` to avoid sending multiple calls with same parameters at the same time
    https://github.com/RevenueCat/purchases-ios/pull/874

## 3.12.4
- Updated `getOfferings` call to be performed serially instead of concurrently.
    https://github.com/RevenueCat/purchases-ios/pull/831

## 3.12.3
- Fixed a bug where checkTrialOrIntroductoryPriceEligibility would return `eligible` for products that don't have intro pricing
    https://github.com/RevenueCat/purchases-ios/pull/679
- Calls to `addAttribution` will now automatically get translated into `subscriberAttributes`
    https://github.com/RevenueCat/purchases-ios/pull/609
- Updated links to community and support in `README.md`
    https://github.com/RevenueCat/purchases-ios/commit/209615b9b8b4dc29ad37f51bf211e3710a2fe443
- Excluded swift migration tasks in stale issue detection
    https://github.com/RevenueCat/purchases-ios/pull/698
    https://github.com/RevenueCat/purchases-ios/pull/702

## 3.12.2
- Fixed a bug where calling setDebugLogsEnabled(false) enables debug logs when it should not. 
    https://github.com/RevenueCat/purchases-ios/pull/663

## 3.12.1
- Fixed an issue in some versions of Xcode where compiling would fail with `Definition conflicts with previous value` in `ETagManager.swift`
    https://github.com/revenuecat/purchases-ios/pull/659

## 3.12.0

### Identity V3:

#### New methods
- Introduces `logIn`, a new way of identifying users, which also returns whether a new user has been registered in the system. 
`logIn` uses a new backend endpoint. 
- Introduces `logOut`, a replacement for `reset`. 

#### Deprecations
- deprecates `createAlias` in favor of `logIn`
- deprecates `identify` in favor of `logIn`
- deprecates `reset` in favor of `logOut`
- deprecates `allowSharingAppStoreAccount` in favor of dashboard-side configuration

    https://github.com/RevenueCat/purchases-ios/pull/453
    https://github.com/RevenueCat/purchases-ios/pull/438
    https://github.com/RevenueCat/purchases-ios/pull/506


### Other changes: 

#### Public additions
##### SharedPurchases nullability
- Fixed `sharedPurchases` nullability
- Introduced new property, `isConfigured`, that can be used to check whether the SDK has been configured and `sharedPurchases` won't be `nil`.
    https://github.com/RevenueCat/purchases-ios/pull/508

##### Improved log handling
- Added new property `logLevel`, which provides more granular settings for the log level. Valid values are `debug`, `info`, `warn` and `error`.
- Added new method, `setLogHandler`, which allows developers to use their own code to handle logging, and integrate their existing systems.
    https://github.com/RevenueCat/purchases-ios/pull/481
    https://github.com/RevenueCat/purchases-ios/pull/515


#### Deprecations
- Deprecated `debugLogsEnabled` property in favor of `LogLevel`. Use `Purchases.logLevel = .debug` as a replacement.

#### Other

- Fixed CI issues with creating pull requests
    https://github.com/RevenueCat/purchases-ios/pull/504
- Improved Github Issues bot behavior
    https://github.com/RevenueCat/purchases-ios/pull/507
- Added e-tags to reduce network traffic usage
    https://github.com/RevenueCat/purchases-ios/pull/509
- Fixed a warning in Xcode 13 with an outdated path in Package.swift
    https://github.com/RevenueCat/purchases-ios/pull/522
- Switched to Swift Package Manager for handling dependencies for test targets.
    https://github.com/RevenueCat/purchases-ios/pull/527
- Removed all `fatalError`s from the codebase
    https://github.com/RevenueCat/purchases-ios/pull/529
    https://github.com/RevenueCat/purchases-ios/pull/527
- Updated link for error message when UserDefaults are deleted outside the SDK
    https://github.com/RevenueCat/purchases-ios/pull/531
- Improved many of the templates and added `CODE_OF_CONDUCT.md` to make contributing easier
    https://github.com/RevenueCat/purchases-ios/pull/534
    https://github.com/RevenueCat/purchases-ios/pull/537
    https://github.com/RevenueCat/purchases-ios/pull/589

## 3.11.1
- Updates log message for `createAlias` to improve clarity
    https://github.com/RevenueCat/purchases-ios/pull/498
- Adds `rc_` to all Foundation extensions to prevent name collisions
    https://github.com/RevenueCat/purchases-ios/pull/500

## 3.11.0
- Exposes `ownershipType` in `EntitlementInfo`, which can be used to determine whether a given entitlement was shared by a family member or purchased directly by the user. 
    https://github.com/RevenueCat/purchases-ios/pull/483
- Adds new `RCConfigurationError` type, which will be thrown when SDK configuration errors are detected.
    https://github.com/RevenueCat/purchases-ios/pull/494

## 3.10.7
- Obfuscates calls to `AppTrackingTransparency` to prevent unnecessary rejections for kids apps when the framework isn't used at all. 
    https://github.com/RevenueCat/purchases-ios/pull/486

## 3.10.6
- Fix automatic Apple Search Ads Attribution collection for iOS 14.5
    https://github.com/RevenueCat/purchases-ios/pull/473
- Fixed `willRenew` values for consumables and promotionals
    https://github.com/RevenueCat/purchases-ios/pull/475
- Improves tests for EntitlementInfos
    https://github.com/RevenueCat/purchases-ios/pull/476

## 3.10.5
- Fixed a couple of issues with `.xcframework` output in releases
    https://github.com/RevenueCat/purchases-ios/pull/470
    https://github.com/RevenueCat/purchases-ios/pull/469
- Fix Carthage builds from source, so that end customers can start leveraging XCFramework support for Carthage >= 0.37
    https://github.com/RevenueCat/purchases-ios/pull/471

## 3.10.4
- Added .xcframework output to Releases, alongside the usual fat frameworks.
    https://github.com/RevenueCat/purchases-ios/pull/466
- Added PurchaseTester project, useful to test features while working on `purchases-ios`.
    https://github.com/RevenueCat/purchases-ios/pull/464
- Renamed the old `SwiftExample` project to `LegacySwiftExample` to encourage developers to use the new MagicWeather apps
    https://github.com/RevenueCat/purchases-ios/pull/461
- Updated the cache duration in background from 24 hours to 25 to prevent cache misses when the app is woken every 24 hours exactly by remote push notifications.
    https://github.com/RevenueCat/purchases-ios/pull/463

## 3.10.3
- Added SwiftUI sample app
    https://github.com/RevenueCat/purchases-ios/pull/457
- Fixed a bug where `🍎‼️ Invalid Product Identifiers` would show up even in the logs even when no invalid product identifiers were requested.
    https://github.com/RevenueCat/purchases-ios/pull/456

## 3.10.2
- Re-added `RCReceiptInUseByOtherSubscriberError`, but with a deprecation warning, so as not to break existing apps.
    https://github.com/RevenueCat/purchases-ios/pull/452

## 3.10.1
- Enables improved logging prefixes so they're easier to locate.
    https://github.com/RevenueCat/purchases-ios/pull/441
    https://github.com/RevenueCat/purchases-ios/pull/443
- Fixed issue with Prepare next version CI job, which was missing the install gems step. 
    https://github.com/RevenueCat/purchases-ios/pull/440

## 3.10.0
- Adds a new property `simulateAsksToBuyInSandbox`, that allows developers to test deferred purchases easily.
    https://github.com/RevenueCat/purchases-ios/pull/432
    https://github.com/RevenueCat/purchases-ios/pull/436
- Slight optimization so that offerings and purchaserInfo are returned faster if they're cached.
    https://github.com/RevenueCat/purchases-ios/pull/433
    https://github.com/RevenueCat/purchases-ios/issues/401
- Revamped logging strings, makes log messages from `Purchases` easier to spot and understand. Removed `RCReceiptInUseByOtherSubscriberError`, replaced by `RCReceiptAlreadyInUseError`.
    https://github.com/RevenueCat/purchases-ios/pull/426
    https://github.com/RevenueCat/purchases-ios/pull/428
    https://github.com/RevenueCat/purchases-ios/pull/430
    https://github.com/RevenueCat/purchases-ios/pull/431
    https://github.com/RevenueCat/purchases-ios/pull/422
- Fix deploy automation bugs when preparing the next version PR
    https://github.com/RevenueCat/purchases-ios/pull/434
    https://github.com/RevenueCat/purchases-ios/pull/437

## 3.9.2
- Fixed issues when compiling with Xcode 11 or earlier
    https://github.com/RevenueCat/purchases-ios/pull/416
- Fixed termination warnings for finished SKRequests
    https://github.com/RevenueCat/purchases-ios/pull/418
- Fixed CI deploy bugs
    https://github.com/RevenueCat/purchases-ios/pull/421
- Prevents unnecessary backend calls when the appUserID is an empty string
    https://github.com/RevenueCat/purchases-ios/pull/414
- Prevents unnecessary POST requests when the JSON body can't be correctly formed
    https://github.com/RevenueCat/purchases-ios/pull/415
- Updates git commit pointer for SPM Integration tests
    https://github.com/RevenueCat/purchases-ios/pull/412

## 3.9.1
- Added support for `SKPaymentQueue`'s `didRevokeEntitlementsForProductIdentifiers:`, so entitlements are automatically revoked from a family-shared purchase when a family member leaves or the subscription is canceled.
    https://github.com/RevenueCat/purchases-ios/pull/413
- Added support for automated deploys
    https://github.com/RevenueCat/purchases-ios/pull/411
- Fixed Xcode direct integration failing on Mac Catalyst builds
    https://github.com/RevenueCat/purchases-ios/pull/419

## 3.9.0
- Added support for StoreKit Config Files and StoreKitTest testing
    https://github.com/RevenueCat/purchases-ios/pull/407
- limit running integration tests to tags and release branches
    https://github.com/RevenueCat/purchases-ios/pull/406
- added deployment checks
    https://github.com/RevenueCat/purchases-ios/pull/404

## 3.8.0
- Added a silent version of restoreTransactions, called `syncPurchases`, meant to be used by developers performing migrations for other systems.
    https://github.com/RevenueCat/purchases-ios/pull/387
    https://github.com/RevenueCat/purchases-ios/pull/403
- Added `presentCodeRedemptionSheet`, which allows apps to present code redemption sheet for offer codes
    https://github.com/RevenueCat/purchases-ios/pull/400
- Fixed sample app on macOS, which would fail to build because the watchOS app was embedded into it
    https://github.com/RevenueCat/purchases-ios/pull/402

## 3.7.6
- Fixed a race condition that could cause a crash after deleting and reinstalling the app
    https://github.com/RevenueCat/purchases-ios/pull/383
- Fixed possible overflow when performing local receipt parsing on 32-bit devices
    https://github.com/RevenueCat/purchases-ios/pull/384
- Fixed string comparison when deleting synced subscriber attributes
    https://github.com/RevenueCat/purchases-ios/pull/385
- Fixed docs-deploy job
    https://github.com/RevenueCat/purchases-ios/pull/386
- Fixed a typo in a RCPurchases.h
    https://github.com/RevenueCat/purchases-ios/pull/380

## 3.7.5
- Move test dependencies back to carthage
    https://github.com/RevenueCat/purchases-ios/pull/371
    https://github.com/RevenueCat/purchases-ios/pull/373
- fixed tests for iOS < 12.2
    https://github.com/RevenueCat/purchases-ios/pull/372
- Make cocoapods linking dynamic again
    https://github.com/RevenueCat/purchases-ios/pull/374

## 3.7.4
- Fix parsing of dates in receipts with milliseconds
    https://github.com/RevenueCat/purchases-ios/pull/367
- Add jitter and extra cache for background processes
    https://github.com/RevenueCat/purchases-ios/pull/366
- Skip install to fix archives with direct integration
    https://github.com/RevenueCat/purchases-ios/pull/364

## 3.7.3
- Renames files with names that caused issues when building on Windows
    https://github.com/RevenueCat/purchases-ios/pull/362
- Fixes crash when parsing receipts with an unexpected number of internal containers in an IAP ASN.1 Container
    https://github.com/RevenueCat/purchases-ios/pull/360
- Fixes crash when sending `NSNull` attributes to `addAttributionData:fromNetwork:`
    https://github.com/RevenueCat/purchases-ios/pull/359
- Added starter string constants file for logging
    https://github.com/RevenueCat/purchases-ios/pull/339

## 3.7.2
- Updates the Pod to make it compile as a static framework, fixing build issues on hybrid SDKs. Cleans up imports in `RCPurchases.h`.
    https://github.com/RevenueCat/purchases-ios/pull/353
- Fixes Catalyst builds and build warnings
    https://github.com/RevenueCat/purchases-ios/pull/352
    https://github.com/RevenueCat/purchases-ios/pull/351

## 3.7.1
-  Fix 'Invalid bundle' validation error when uploading builds to App Store using Carthage or binary
    https://github.com/RevenueCat/purchases-ios/pull/346

## 3.7.0
- Attribution V2:
        - Deprecated `addAttributionData:fromNetwork:` and `addAttributionData:fromNetwork:forNetworkUserId:` in favor of `setAdjustId`, `setAppsflyerId`, `setFbAnonymousId`, `setMparticleId`
        - Added support for OneSignal via `setOnesignalId`
        - Added `setMediaSource`, `setCampaign`, `setAdGroup`, `setAd`, `setKeyword`, `setCreative`, and `collectDeviceIdentifiers`
    https://github.com/RevenueCat/purchases-ios/pull/321
    https://github.com/RevenueCat/purchases-ios/pull/340
    https://github.com/RevenueCat/purchases-ios/pull/331
- Prevent unnecessary receipt posts
    https://github.com/RevenueCat/purchases-ios/pull/323
- Improved migration process for legacy Mac App Store apps moving to Universal Store 
    https://github.com/RevenueCat/purchases-ios/pull/336
- Added new SKError codes for Xcode 12
    https://github.com/RevenueCat/purchases-ios/pull/334
    https://github.com/RevenueCat/purchases-ios/pull/338
- Renamed StoreKitConfig schemes
    https://github.com/RevenueCat/purchases-ios/pull/329
- Fixed an issue where cached purchaserInfo would be returned after invalidating purchaserInfo cache
    https://github.com/RevenueCat/purchases-ios/pull/333
- Fix cocoapods and carthage release scripts 
    https://github.com/RevenueCat/purchases-ios/pull/324
- Fixed a bug where `checkIntroTrialEligibility` wouldn't return when calling it from an OS version that didn't support intro offers
    https://github.com/RevenueCat/purchases-ios/pull/343

## 3.6.0
- Fixed a race condition with purchase completed callbacks
	https://github.com/RevenueCat/purchases-ios/pull/313
- Made RCTransaction public to fix compiling issues on Swift Package Manager
	https://github.com/RevenueCat/purchases-ios/pull/315
- Added ability to export XCFrameworks
	https://github.com/RevenueCat/purchases-ios/pull/317
- Cleaned up dispatch calls
	https://github.com/RevenueCat/purchases-ios/pull/318
- Created a separate module and framework for the Swift code
	https://github.com/RevenueCat/purchases-ios/pull/319
- Updated release scripts to be able to release the new Pod as well
	https://github.com/RevenueCat/purchases-ios/pull/320
- Added a local receipt parser, updated intro eligibility calculation to perform on device first
	https://github.com/RevenueCat/purchases-ios/pull/302
- Fix crash when productIdentifier or payment is nil.
    https://github.com/RevenueCat/purchases-ios/pull/297
- Fixes ask-to-buy flow and will now send an error indicating there's a deferred payment.
    https://github.com/RevenueCat/purchases-ios/pull/296
- Fixes application state check on app extensions, which threw a compilation error.
    https://github.com/RevenueCat/purchases-ios/pull/303
- Restores will now always refresh the receipt.
    https://github.com/RevenueCat/purchases-ios/pull/287
- New properties added to the PurchaserInfo to better manage non-subscriptions.
    https://github.com/RevenueCat/purchases-ios/pull/281
- Bypass workaround in watchOS 7 that fixes watchOS 6.2 bug where devices report wrong `appStoreReceiptURL`
	https://github.com/RevenueCat/purchases-ios/pull/330
- Fix bug where 404s in subscriber attributes POST would mark them as synced
    https://github.com/RevenueCat/purchases-ios/pull/328

## 3.5.3
- Addresses an issue where subscriber attributes might not sync correctly if subscriber info for the user hadn't been synced before the subscriber attributes sync was performed.
    https://github.com/RevenueCat/purchases-ios/pull/327

## 3.5.2
- Feature/defer cache updates if woken from push notification
https://github.com/RevenueCat/purchases-ios/pull/288

## 3.5.1
- Removes all references to ASIdentifierManager and advertisingIdentifier. This should help with some Kids apps being rejected 
https://github.com/RevenueCat/purchases-ios/pull/286
- Fix for posting wrong duration P0D on consumables
https://github.com/RevenueCat/purchases-ios/pull/289

## 3.5.0
- Added a sample watchOS app to illustrate how to integrate in-app purchases on watchOS with RevenueCat
https://github.com/RevenueCat/purchases-ios/pull/263
- Fixed build warnings from Clang Static Analyzer
https://github.com/RevenueCat/purchases-ios/pull/265
- Added StoreKit Configuration files for local testing + new schemes configured to use them. 
https://github.com/RevenueCat/purchases-ios/pull/267
https://github.com/RevenueCat/purchases-ios/pull/270
- Added GitHub Issue Templates
https://github.com/RevenueCat/purchases-ios/pull/269

## 3.4.0
- Added `proxyKey`, useful for kids category apps, so that they can set up a proxy to send requests through. **Do not use this** unless you've talked to RevenueCat support about it. 
https://github.com/RevenueCat/purchases-ios/pull/258
- Added `managementURL` to purchaserInfo. This provides an easy way for apps to create Manage Subscription buttons that will correctly redirect users to the corresponding subscription management page on all platforms. 
https://github.com/RevenueCat/purchases-ios/pull/259
- Extra fields sent to the post receipt endpoint: `normal_duration`, `intro_duration` and `trial_duration`. These will feed into the LTV model for more accurate LTV values. 
https://github.com/RevenueCat/purchases-ios/pull/256
- Fixed a bug where if the `appUserID` was not found in `NSUserDefaults` and `createAlias` was called, the SDK would create an alias to `(null)`. 
https://github.com/RevenueCat/purchases-ios/pull/255
- Added [mParticle](https://www.mparticle.com/) as an option for attribution. 
https://github.com/RevenueCat/purchases-ios/pull/251
- Fixed build warnings for Mac Catalyst
https://github.com/RevenueCat/purchases-ios/pull/247
- Simplified Podspec and minor cleanup
https://github.com/RevenueCat/purchases-ios/pull/248


## 3.3.1
- Fixed version numbers that accidentally included the `-SNAPSHOT` suffix

## 3.3.0
- Reorganized file system structure for the project
	https://github.com/RevenueCat/purchases-ios/pull/242
- New headers for observer mode and platform version
    https://github.com/RevenueCat/purchases-ios/pull/237
    https://github.com/RevenueCat/purchases-ios/pull/240
    https://github.com/RevenueCat/purchases-ios/pull/241
- Fixes subscriber attributes migration edge cases
	https://github.com/RevenueCat/purchases-ios/pull/233
- Autodetect appUserID deletion
    https://github.com/RevenueCat/purchases-ios/pull/232
    https://github.com/RevenueCat/purchases-ios/pull/236
- Removes old trello link
    https://github.com/RevenueCat/purchases-ios/pull/231
- Removes unused functions
    https://github.com/RevenueCat/purchases-ios/pull/228
- Removes unnecessary no-op call to RCBackend's postSubscriberAttributes
	https://github.com/RevenueCat/purchases-ios/pull/227
- Fixes a bug where subscriber attributes are deleted when an alias is created.
    https://github.com/RevenueCat/purchases-ios/pull/222
- Fixes crash when payment.productIdentifier is nil
    https://github.com/RevenueCat/purchases-ios/pull/226
- Updates invalidatePurchaserInfoCache docs 
    https://github.com/RevenueCat/purchases-ios/pull/223

## 3.2.2
- Fixed build warnings about nil being passed to callees that require non-null parameters
    https://github.com/RevenueCat/purchases-ios/pull/216

## 3.2.1
- Fixed build warnings on tvOS and API availability checks
    https://github.com/RevenueCat/purchases-ios/pull/212

## 3.2.0
- Added support for WatchOS and tvOS, fixed some issues with pre-processor macro checks on different platforms. 
    https://github.com/RevenueCat/purchases-ios/pull/183

## 3.1.2
- Added an extra method, `setPushTokenString`, to be used by multi-platform SDKs that don't 
have direct access to the push token as `NSData *`, but rather as `NSString *`.
    https://github.com/RevenueCat/purchases-ios/pull/208

## 3.1.1
- small fixes to docs and release scripts: 
    - the release script was referencing a fastlane lane that was under the group ios, 
    so it needs to be called with ios first
    - the docs for setPushToken in RCPurchases.m say to pass an empty string or nil to erase data, 
    however since the param is of type NSData, you can't pass in an empty string.
    
    https://github.com/RevenueCat/purchases-ios/pull/203
    
## 3.1.0
- Added Subscriber Attributes, which allow developers to store additional, structured information 
for a user in RevenueCat. More info: // More info: https://docs.revenuecat.com/docs/user-attributes.
https://github.com/RevenueCat/purchases-ios/pull/196
- Fixed an issue where the completion block of `purchaserInfoWithCompletion` would get called more than once if cached information existed and was stale. https://github.com/RevenueCat/purchases-ios/pull/199
- Exposed `original_purchase_date`, which can be useful for migrating data for developers who don't increment the build number on every release and therefore can't rely on it being different on all releases.
- Addressed a couple of build warnings: https://github.com/RevenueCat/purchases-ios/pull/200

## 3.0.4
- Fixed an issue where Swift Package Manager didn't pick up the new Caching group from 3.0.3 https://github.com/RevenueCat/purchases-ios/issues/176

## 3.0.3
- Added new method to invalidate the purchaser info cache, useful when promotional purchases are granted from outside the app. https://github.com/RevenueCat/purchases-ios/pull/168
- Made sure we dispatch offerings, and purchaser info https://github.com/RevenueCat/purchases-ios/pull/146

## 3.0.2
- Fixes an issue where Apple Search Ads attribution information would be sent even if the user hadn't clicked on 
a search ad.

## 3.0.1
- Adds observer_mode to the backend post receipt call.

## 3.0.0
- Support for new Offerings system.
- Deprecates `makePurchase` methods. Replaces with `purchasePackage`
- Deprecates `entitlements` method. Replaces with `offerings`
- See our migration guide for more info: https://docs.revenuecat.com/v3.0/docs/offerings-migration
- Added `Purchases.` prefix to Swift classes to avoid conflicts https://github.com/RevenueCat/purchases-ios/issues/131
- Enabled base internationalisation to silence a warning (#119)
- Migrates tests to Swift 5 (#138)
- New identity changes (#133):
  - The `.createAlias()` method is no longer required, use .identify() instead
  - `.identify()` will create an alias if being called from an anonymous ID generated by RevenueCat
  - Added an `isAnonymous` property to `Purchases.shared`
  - Improved offline use

## 2.6.1
- Support for Swift Package Manager
- Adds a conditional to protect against nil products or productIdentifier (https://github.com/RevenueCat/purchases-ios/pull/129)

## 2.6.0
- Deprecates `activeEntitlements` in `RCPurchaserInfo` and adds `entitlements` object to `RCPurchaserInfo`. For more info look into https://docs.revenuecat.com/docs/purchaserinfo

## 2.5.0
- **BREAKING CHANGE**: fixed a typo in `addAttributionData` Swift's name.
- Error logs for AppsFlyer if using deprecated `rc_appsflyer_id`
- Error logs for AppsFlyer if missing networkUserID

## 2.4.0
- **BUGFIX**: `userId` parameter in identify is not nullable anymore.
- **DEPRECATION**: `automaticAttributionCollection` is now deprecated in favor of `automaticAppleSearchAdsAttributionCollection` since it's a more clear name.
- **NEW FEATURE**: UIKitForMac support.
- **NEW FEATURE**: Facebook Ads Attribution support https://docs.revenuecat.com/docs/facebook-ads.

## 2.3.0
- `addAttribution` is now a class method that can be called before the SDK is configured.
- `addAttribution` will automatically add the `rc_idfa` and `rc_idfv` parameters if the `AdSupport` and `UIKit` frameworks are included, respectively.
- A network user identifier can be send to the `addAttribution` function, replacing the previous `rc_appsflyer_id` parameter.
- Apple Search Ad attribution can be automatically collected by setting the `automaticAttributionCollection` boolean to `true` before the SDK is configured.
- Adds an optional configuration boolean `observerMode`. This will set the value of `finishTransactions` at configuration time.
- Header updates to include client version which will be used for debugging and reporting in the future.

## 2.2.0
- Adds subscription offers

## 2.1.1
- Avoid refreshing receipt everytime restore is called

## 2.1.0
- Adds userCancelled as a parameter to the completion block of the makePurchase function.
- Better error codes.

## 2.0.0
- Refactor to all block based methods
- Optional delegate method to receive changes in Purchaser Info
- Ability to turn on detailed logging by setting `debugLogsEnabled`

## 1.2.1
- Adds support for Tenjin

## 1.2.0
- Singleton management handled by the SDK
- Adds reset, identify and create alias calls

## 1.1.5
- Conform RCPurchasesDelegate to NSObject
- Adds requestDate to the purchaser info to avoid edge cases
- Add iOS 11.2 availability annotations

## 1.1.4
- Make RCPurchases initializer return a non-optional

## 1.1.3
- Add option for disabling transaction finishing.

## 1.1.2
- Fix to ensure prices are properly collected when using entitlements

## 1.1.1
- Delegate methods now only dispatch if they are not on the main thread. This makes sure the cached PurchaserInfo is delivered on setting the delegate.
- Allow developer to indicate anonymous ID behavior
- Add "Purchases.h" to CocoaPods headers

## 1.1.0
- Attribution! You can now pass attribution data from Apple Search Ads, AppsFlyer, Adjust and Branch. You can then view the ROI of your campaigns, including revenue coming from referrals.

## 1.0.5
- Fix for entitlements will now have null active products if the product is not available from StoreKit

## 1.0.4
- Fix version number in Plist for real

## 1.0.3
- Fix version number in Plist

## 1.0.2
- Improved error handling for fetching entitlements
- Delegate methods are now guaranteed to run on the main thread

## 1.0.1
- Fix a bug with parsing dates for Thai locales

## 1.0.0
- Oh my oh whoa! We made it to version one point oh!
- Entitlements now supported by the SDK. See [the guide](https://docs.revenuecat.com/v1.0/docs/entitlements) for more info.
- Improved caching of `RCPurchaserInfo`

## 0.12.0
- Remove Carthage dependencies
- Add delegate methods for restoring
- Allow RCPurchases to be instantiated with a UserDefaults object, useful for syncing between extensions

## 0.11.0
- RCPurchases now caches the most recent RCPurchaserInfo. Apps no longer need to implement there own offline caching of subscription status.
- Change block based methods to use delegate. restoreTransactions and updatePurchaserInfo no longer take blocks. This means all new RCPurchaserInfo objects will be sent via the delegate methods.
- macOS support. Purchases now works with macOS. Contact jacob@revenuecat.com if interested in beta testing.

## 0.10.2
- Workaround for a StoreKit issue (38476489) where priceLocale is missing on promotional purchases

## 0.10.1
- Fix cache preventing prices from being posted

## 0.10.0
- Prevent race conditions refreshing receipts.
- Make processing of multiple receipt posts more efficient.
- Add support for original application version so users can be grandfathered easily

## 0.9.0
- Add support of checking eligibilty of introductory prices. RevenueCat will now be able to tell you definitively what version of a product you should present in your UI.

## 0.8.0
- Add support of initializing without an `appUserID`. This standardizes and simplifies behavior for apps without account systems.

## 0.7.0
- Change `restoreTransactionsForAppStoreAccount:` to take a completion block since it no long relies on the app store queue. Removed delegate methods.
- Added `updatedPurchaserInfo:` that allows force refreshing of `RCPurchaserInfo`. Useful if your app needs the latest purchaser info.
- Removed `makePurchase:quantity:`.
- Add `nonConsumablePurchases` on `RCPurchaserInfo`. Non-consumable purchases will now Just Work (tm).

## 0.6.0
- Add support for [promotional purchases](https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/StoreKitGuide/PromotingIn-AppPurchases/PromotingIn-AppPurchases.html).
- Adds support for `appUserId`s with non-url compatable characters

## 0.5.0
- Add support for restoring purchases via `restoreTransactionsForAppStoreAccount`
- Add support for iOS 9.0

## 0.4.0
- Add tracking of product prices to allow for real time revenue tracking on RevenueCat.com

## 0.3.0
- Improve handling of Apple and Backend errors
- Handles missing receipts case
- Fixed issue with timezone parsing

## 0.2.0
- Rename shared secret to API key
- Remove `purchaserInfoWithCompletion`, now `RCPurchases` fetches updated purchaser info automatically on `UIApplicationDidBecomeActive`.
- Remove `purchasing` KVO property

## 0.1.0

- Initial version
- Requires access to the private beta, email jacob@revenuecat.com for a key.
