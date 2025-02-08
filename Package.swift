// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "TomCrypt",
    platforms: [
        .macOS(.v10_10), .iOS(.v9), .tvOS(.v9), .watchOS(.v4)
    ],
    products: [
        .library(name: "TomCrypt", targets: ["TomCrypt"])
    ],
    dependencies: [
        .package(url: "https://github.com/DavidSouthgate/TomMathSPM.git", branch: "release/v1.2.1")
    ],
    targets: [
        .target(name: "TomCrypt",
                dependencies: [
                    .product(name: "TomMath", package: "TomMathSPM")
                ],
                path: ".",
                sources: [
                    "Vendor/src"
                ],
                publicHeadersPath: "Headers",
                cSettings: [
                    .headerSearchPath("Vendor/src/headers"),
                    .define("USE_LTM"),
                    .define("LTM_DESC"),
                    .define("LTC_NO_TEST"),
                    .unsafeFlags(["-flto=thin"])  // for Dead Code Elimination
                ]),
        .testTarget(name: "TomCryptTests",
                   dependencies: [
                        "TomCrypt"
                   ],
                    path: "Tests")
    ],
    cLanguageStandard: .gnu11,
    cxxLanguageStandard: .gnucxx14
)
