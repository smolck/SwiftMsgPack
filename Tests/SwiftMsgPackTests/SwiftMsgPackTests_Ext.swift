import Foundation

import XCTest
@testable import SwiftMsgPack

class SwiftMsgPackTests_Ext: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testDecodeExt() throws {
        var data = Data([148, 1, 0, 192, 199, 3, 1, 205, 3, 232])
        if let decoded = try data.unpack() as? [Any] {
            print(decoded)
        }

        data = Data([148, 1, 0, 192, 212, 0, 1]) // fixext1
        if let decoded = try data.unpack() as? [Any] {
            print(decoded)
        }
    }
    
    /*func performTestOnArray(name testName: String, value: [Any?], expected bytes: [UInt8]) {
     var packed = Data()
     
     do {
     try packed.pack(value)
     
     guard packed.count == bytes.count else {
     XCTFail("[\(testName)] Pack failed because number of bytes is different from expected: \(packed.count), \(bytes.count) expected")
     return
     }
     
     var idx = 0
     for byte in packed {
     guard byte == bytes[idx] else {
     XCTFail("[\(testName)] Byte \(idx) is different from expected (\(byte), \(bytes[idx]) expected")
     return
     }
     idx += 1
     }
     
     
     } catch let err {
     // Something went wrong while packing data
     XCTFail("[\(testName)] Failed to pack Array: \(err) (src='\(value)')")
     return
     }
     }*/
}
