# RxSolana
[![Swift](https://github.com/ajamaica/Solana.Swift/actions/workflows/swift.yml/badge.svg?branch=master)](https://github.com/ajamaica/Solana.Swift/actions/workflows/swift.yml)
[![MIT Licence](https://badges.frapsoft.com/os/mit/mit.png?v=103)](https://opensource.org/licenses/mit-license.php)  
[![Swift Package Manager compatible](https://img.shields.io/badge/SPM-compatible-brightgreen.svg?style=flat&colorA=28a745&&colorB=4E4E4E)](https://github.com/apple/swift-package-manager)

This is a open source library that contains Rx wrapper for [Solana.Swift](https://github.com/ajamaica/Solana.Swift)

# [Usage](https://github.com/ajamaica/Solana.Swift#usage)

#### Example using RxSwift

Gets Accounts info.
```swift
solana.api.getAccountInfo(account: account.publicKey.base58EncodedString, decodedTo: AccountInfo.self).subscribe()
```
Gets Balance

```swift
 solana.api.getBalance(account: account.publicKey.base58EncodedString).subscribe()
```

### [Actions](https://github.com/ajamaica/Solana.Swift#actions)


#### Example using RxSwift

Create an account token
```swift
solana.action.createTokenAccount( mintAddress: mintAddress) .subscribe()
```

Sending sol
```swift
let toPublicKey = "3h1zGmCwsRJnVk5BuRNMLsPaQu1y2aqXqXDWYCgrp5UG"
solana.action.sendSOL(
            to: toPublicKey,
            amount: 10
).subscribe()
```
## Requirements

- iOS 11.0+ / macOS 10.13+ / tvOS 11.0+ / watchOS 3.0+
- Swift 5.3+

## Installation

From Xcode 11, you can use [Swift Package Manager](https://swift.org/package-manager/) to add RxSolana to your project.

- File > Swift Packages > Add Package Dependency
- Add `https://github.com/ajamaica/Solana.Swift`
- Select brach "master"
- Select RxSolana 

If you encounter any problem or have a question on adding the package to an Xcode project, I suggest reading the [Adding Package Dependencies to Your App](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app)  guide article from Apple.
