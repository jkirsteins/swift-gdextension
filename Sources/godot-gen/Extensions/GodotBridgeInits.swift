import godot_native

public extension UInt8 {
    init(godot unsafePointer: UnsafeRawPointer) {
        let target: UnsafePointer<UInt8> = .init(OpaquePointer(unsafePointer))
        self = target.pointee
    }
}

public extension Float64 {
    init(godot unsafePointer: UnsafeRawPointer) {
//        let target: UnsafePointer<Float64> = .init(OpaquePointer(unsafePointer))
        self = Self(bitPattern: UInt64(bitPattern: Int64(Int(bitPattern: unsafePointer))))
    }
}

public extension RawRepresentable {
    init(godot unsafePointer: UnsafeRawPointer) where RawValue == Int32 {
        let target: UnsafePointer<Int32> = .init(OpaquePointer(unsafePointer))
        self.init(rawValue: target.pointee)!
    }
}

public extension Int64 {
    init(godot unsafePointer: UnsafeRawPointer) {
//        let target: UnsafePointer<Int64> = .init(OpaquePointer(unsafePointer))
        self = Self(Int(bitPattern: unsafePointer))
    }
}

public extension Swift.Array {
    init(godot unsafePointer: UnsafeRawPointer) {
        fatalError("How to handle Godot array bridging?")
    }
    
    func _native_ptr() -> UnsafeRawPointer {
        fatalError("How to handle Godot array bridging?")
    }
}

public extension UnsafeMutableRawPointer {
    init(godot unsafePtr: UnsafeRawPointer) {
        self.init(mutating: unsafePtr)
    }
}

public extension UnsafePointer {
    init(godot unsafePtr: UnsafeRawPointer) {
        self.init(OpaquePointer(unsafePtr))
    }
}

public extension godot_gen.String {
    convenience init(from swiftString: Swift.String) {
        let len = swiftString.utf8.count
        let unsafe: UnsafeMutableRawPointer = .allocate(byteCount: len, alignment: 4)
        swiftString.withCString { utf8Ptr in
            Self.interface.pointee.string_new_with_utf8_chars_and_len(
                unsafe,
                utf8Ptr,
                GDExtensionInt(len))
        }
        self.init(godot: unsafe)
    }
}

public extension godot_gen.StringName {
    convenience init(from swiftString: Swift.String) {
        let gStr = godot_gen.String(from: swiftString)
        self.init(from: gStr)
    }
}

public extension Swift.String {
    init(godot unsafePointer: UnsafeRawPointer, i: UnsafePointer<GDExtensionInterface>) {
        
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
}
