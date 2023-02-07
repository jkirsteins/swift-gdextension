import godot_native

extension UInt8 {
    init(from unsafePointer: UnsafeRawPointer) {
        let target: UnsafePointer<UInt8> = .init(OpaquePointer(unsafePointer))
        self = target.pointee
    }
}

extension Float64 {
    init(from unsafePointer: UnsafeRawPointer) {
        let target: UnsafePointer<Float64> = .init(OpaquePointer(unsafePointer))
        self = target.pointee
    }
}

extension RawRepresentable {
    init(from unsafePointer: UnsafeRawPointer) where RawValue == Int32 {
        let target: UnsafePointer<Int32> = .init(OpaquePointer(unsafePointer))
        self.init(rawValue: target.pointee)!
    }
}

extension Int64 {
    init(from unsafePointer: UnsafeRawPointer) {
        let target: UnsafePointer<Int64> = .init(OpaquePointer(unsafePointer))
        self = target.pointee
    }
}

extension Swift.Array {
    init(from unsafePointer: UnsafeRawPointer) {
        fatalError("How to handle Godot array bridging?")
    }
    
    func _native_ptr() -> UnsafeRawPointer {
        fatalError("How to handle Godot array bridging?")
    }
}

extension UnsafeMutableRawPointer {
    init(from: UnsafeRawPointer) {
        self.init(mutating: from)
    }
}

extension UnsafePointer {
    init(from: UnsafeRawPointer) {
        self.init(OpaquePointer(from))
    }
}

extension String {
    init(from unsafePointer: UnsafeRawPointer) {
        guard let i = gde_interface else {
            fatalError("No Godot interface available")
        }
        
        let length = i.pointee.string_to_utf8_chars(
            unsafePointer,
            nil,
            0)

        let buf: UnsafeMutableBufferPointer<CChar> = .allocate(capacity: Int(length + 1))
        buf.initialize(repeating: 0)
        defer { buf.deallocate() }

        _ = i.pointee.string_to_utf8_chars(
            unsafePointer,
            buf.baseAddress,
            length)

        self.init(cString: buf.baseAddress!)
    }

    func _create_native__kept() -> UnsafeRawPointer {
        let len = self.utf8.count
        let unsafe: UnsafeMutableRawPointer = .allocate(byteCount: len, alignment: 4)
        self.withCString { utf8Ptr in
            gde_interface!.pointee.string_new_with_utf8_chars_and_len(
                unsafe,
                utf8Ptr,
                GDExtensionInt(len))
        }
        return .init(unsafe)
    }
}
