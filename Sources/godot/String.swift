//
//  File.swift
//  
//
//  Created by Janis Kirsteins on 04/02/2023.
//

import Foundation
import godot_native

//typealias GString = String
//
//extension StringOld {
//    /// Create a native Swift `String` based on the Godot string's backing data
//    /// - Returns: `Swift.String`
//    public func toNative() -> Swift.String {
//        let length = self.interface.pointee.string_to_utf8_chars(
//            self._native_ptr(),
//            nil,
//            0)
//
//        let buf: UnsafeMutableBufferPointer<CChar> = .allocate(capacity: Int(length + 1))
//        buf.initialize(repeating: 0)
//        defer { buf.deallocate() }
//
//        _ = self.interface.pointee.string_to_utf8_chars(
//            self._native_ptr(),
//            buf.baseAddress,
//            length)
//
//        return Swift.String(cString: buf.baseAddress!)
//    }
//
//    public convenience init(_ from: Swift.String) {
//        self.init()
//        from.withCString { ptr in
//            interface.pointee.string_new_with_utf8_chars_and_len(_native_ptr(), ptr, GDExtensionInt(from.count))
//        }
//    }
//}

