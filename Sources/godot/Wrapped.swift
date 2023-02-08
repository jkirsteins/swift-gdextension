

import Foundation
import godot_native

open class Wrapped : Class
{
    public static var interface: UnsafePointer<GDExtensionInterface>! = nil
    public static var library: GDExtensionClassLibraryPtr! = nil
    
    var interface: UnsafePointer<GDExtensionInterface> { Self.interface }
    
    public class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library
    }
    
    public class func create(from ptr: UnsafeRawPointer) -> Object {
        fatalError("Do not initialize Wrapped directly")
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
    
    public required init(godot unsafe: UnsafeRawPointer) {
        self.opaque = .init(mutating: unsafe)
    }
    
    init(godot unsafe: UnsafeMutableRawPointer) {
        self.opaque = unsafe
    }
    
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
