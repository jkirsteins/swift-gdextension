

import Foundation
import godot_native

class __GodotName {
    
}

public class Wrapped : Class
{
    public class func initialize_class() {
        
    }
    
    public class var SIZE: Int { 0 }
    
    public class var __godot_name: StringName {
        fatalError("Child classes of Wrapped should override __godot_name")
    }
    
    private static func _createOpaque() -> UnsafeMutableBufferPointer<UInt8> {
        return .allocate(capacity: Self.SIZE)
    }
    
    public let opaque: UnsafeMutableRawPointer
//    UnsafeMutablePointer<>
    
//    init() {
//        let opaque: UnsafeMutableBufferPointer<UInt8> = .allocate(capacity: Self.SIZE)
//        self.opaque = .init(OpaquePointer(opaque.baseAddress!))
//    }
    
    init(type: StringName) {
        self.opaque = Self.interface.pointee.classdb_construct_object(type._native_ptr())!
    }
    
    init() {
        let optOpaque = Self.interface.pointee.classdb_construct_object(Self.__godot_name._native_ptr())
        guard let opaque = optOpaque else {
            fatalError("classdb_construct_object returned nil for \(Self.__godot_name)")
        }
        
        self.opaque = opaque
    }
    
    // Optional<UnsafeMutableRawPointer>
    
//
//
//    protected Wrapped(StringName type) {
//            _internal_pointer = gdInterface.classdb_construct_object(type._internal_pointer);
//        }
//        protected Wrapped(void* data) => _internal_pointer = data;

    public func _native_ptr() -> GDExtensionTypePtr {
        return opaque
    }
}
