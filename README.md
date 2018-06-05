# EthereumKit
[![Build Status](https://travis-ci.org/OnerootProject/EthereumKit.svg?branch=master)](https://travis-ci.org/OnerootProject/EthereumKit)
[![codecov](https://codecov.io/gh/OnerootProject/EthereumKit/branch/master/graph/badge.svg)](https://codecov.io/gh/OnerootProject/EthereumKit)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

Rebuild application program interface based on [BitcoinKit](https://github.com/kishikawakatsumi/BitcoinKit).

## Usage

#### Generate mnemonic

```swift
let mnemonic = try Mnemonic.generate()

let seed = Mnemonic.seed(mnemonic: mnemonic)
```

#### Get ethereum xPrivKey/xPubKey

```swift
let keychain = HDKeychain(seed: seed, network: .mainnet)

let xPrivKey = try! keychain.derivedKey(path: "m/44'/60'/0'/")
let xPubKey = xPrivKey.getHDPublicKey()
```

#### Generate ethereum privateKey

```swift
let privateKey = try! keychain.derivedKey(path: "m/44'/60'/0'/0/0")
```

## Requirements

- iOS 8.0+ / macOS 10.10+ / tvOS 9.0+ / watchOS 2.0+
- Xcode 8.3+
- Swift 3.1+

## Installation

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate EthereumKit into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "OnerootProject/EthereumKit"
```

Run `carthage update` to build the framework and drag the built `EthereumKit.framework` into your Xcode project.
