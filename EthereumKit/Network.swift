import Foundation

public class Network {
    public static let mainnet: Network = Mainnet()
    public static let testnet: Network = Testnet()
    
    public var name: String { return "" }
    public var alias: String { return "" }
    var pubkeyhash: UInt8 { return 0 }
    var privatekey: UInt8 { return 0 }
    var scripthash: UInt8 { return 0 }
    var xpubkey: UInt32 { return 0 }
    var xprivkey: UInt32 { return 0 }
    var magic: UInt32 { return 0 }
    
    fileprivate init() {}
}

extension Network : Equatable {
    public static func ==(lhs: Network, rhs: Network) -> Bool {
        return lhs.name == rhs.name
    }
}

public class Mainnet: Network {
    public override var name: String {
        return "livenet"
    }
    public override var alias: String {
        return "mainnet"
    }
    override var pubkeyhash: UInt8 {
        return 0x00
    }
    override var privatekey: UInt8 {
        return 0x80
    }
    override var scripthash: UInt8 {
        return 0x05
    }
    override var xpubkey: UInt32 {
        return 0x0488b21e
    }
    override var xprivkey: UInt32 {
        return 0x0488ade4
    }
    override var magic: UInt32 {
        return 0xf9beb4d9
    }
    
    fileprivate override init() {}
}

public class Testnet: Network {
    public override var name: String {
        return "testnet"
    }
    public override var alias: String {
        return "regtest"
    }
    override var pubkeyhash: UInt8 {
        return 0x6f
    }
    override var privatekey: UInt8 {
        return 0xef
    }
    override var scripthash: UInt8 {
        return 0xc4
    }
    override var xpubkey: UInt32 {
        return 0x043587cf
    }
    override var xprivkey: UInt32 {
        return 0x04358394
    }
    override var magic: UInt32 {
        return 0x0b110907
    }
    
    fileprivate override init() {}
}
