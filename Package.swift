// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EffectOneKit",
    platforms: [
        .iOS(.v13) // 适用的 iOS 版本
    ],
    products: [
        .library(
            name: "EffectOneKit",
            targets: ["EffectOneKitTarget"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "EffectOneKit", // 二进制库的名称
            url: "https://sf3-ttcdn-tos.pstatp.com/obj/volcengine/EffectOneKit/1.1.0.7-karrot-eolite/EffectOneKit.xcframework.zip", // 二进制库的下载链接 上一步生成的
            checksum: "d0261c13167d36a46fa1d5e48563f007229555c265abc16b9e193c5193d7296a" // 二进制库的校验和 上一步生成的
        ),
        .target(
            name: "EffectOneKitTarget",
            dependencies: [
                .target(name: "EffectOneKit"), // 添加对二进制库的依赖
            ]
        )
    ]
)
