//
//  ViewController.swift
//  EthereumExample
//
//  Created by 刘朋朋 on 2018/6/4.
//  Copyright © 2018年 ONEROOT PROJECT. All rights reserved.
//

import UIKit
import EthereumKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // d9602093b6d16be0826cf68c43cb3c2684d76fb1f32215ee7ff51e252302d96691cc5e366abe65ba5a49fb19b1b9024cc212258ba375d751b569d340b394b563
        let seed = Mnemonic.seed(mnemonic: "say tongue select oil blossom pond parent orphan crater sadness position coin".components(separatedBy: " "))
        
        // xprv9s21ZrQH143K3KAdPuSVkotVv9PaQYpj2DnjvETr6CzUdcHtsb866WmdXPepkAZYjgwVW5zagq8RQH6tWZtJdBTt5XqnmkeQQouLja2d5qf
        // let xPrivKey = HDPrivateKey(seed: seed, network: .mainnet)
        
        // let xPubKey = xPrivKey.publicKey()
        
        // BIP44 Account Extended Public Key
        // bitcoin(m/44'/0'/0'/0): xpub6CsBTPL9fDqSpBP6AS4RZ5qWECN6P3NECiV9PBbmzZgF9AZH5j6y4MqCSPeKFcn6yXng1jdB18tL5rTAZibPZzBC7afvYG4rkBdpn2JjdGw
        // ethereum: xpub6CthUqzNP5QSYSGaf4o2sAQsFbwtsockdTHVprburaebgqiyQUvTovz2cgdScUfZGxmM8ND25Ahbt7t3uhWbMg6s2iGfxcsgzMhunBvsGyi
        // let publicKey = try! xPubKey.derived(at: 44).derived(at: 0).derived(at: 0)
        let keychain = HDKeychain(seed: seed, network: .mainnet)
        let accountXprv = try! keychain.derivedKey(path: "m/44'/60'/0'/")
        let accountXpub = accountXprv.getHDPublicKey()
        print(accountXpub.extended())
        
        // m/44'/60'/0'/0/0
        // 0x3ffc930c83848Cbd72735E1D63BBFf46a0D7A560
        // 0x02a7554174e12b2b9fd9b2f83ac2ac7eb9c375cc38357fbf77deb277f37d2c625f
        // 0x7e68e45bd102a84bdc401ecdd1759efffdfbbe88889a9c1051354689a1f2e8c1
         let privateKey = try! keychain.derivedKey(path: "m/44'/60'/0'/0/0")
        // let publicKey = privateKey.publicKey
        print(privateKey.getPrivateKey().description)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

