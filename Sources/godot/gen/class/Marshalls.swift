import godot_native

fileprivate var __godot_name_Marshalls: StringName! = nil

/// Data transformation (marshaling) and encoding helpers.
/// 
/// Provides data transformation and encoding utility functions.
open class Marshalls : Object {

    

    public override class var __godot_name: StringName { __godot_name_Marshalls }

    static var _method_variant_to_base64_3876248563: GDExtensionMethodBindPtr! = nil
    static var _method_base64_to_variant_218087648: GDExtensionMethodBindPtr! = nil
    static var _method_raw_to_base64_3999417757: GDExtensionMethodBindPtr! = nil
    static var _method_base64_to_raw_659035735: GDExtensionMethodBindPtr! = nil
    static var _method_utf8_to_base64_1703090593: GDExtensionMethodBindPtr! = nil
    static var _method_base64_to_utf8_1703090593: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Marshalls = StringName(from: "Marshalls")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_variant_to_base64_3876248563_name = StringName(from: "variant_to_base64")
        self._method_variant_to_base64_3876248563 = self.interface.pointee.classdb_get_method_bind(__godot_name_Marshalls._native_ptr(), _method_variant_to_base64_3876248563_name._native_ptr(), 3876248563)
        assert(Marshalls._method_variant_to_base64_3876248563 != nil)
        let _method_base64_to_variant_218087648_name = StringName(from: "base64_to_variant")
        self._method_base64_to_variant_218087648 = self.interface.pointee.classdb_get_method_bind(__godot_name_Marshalls._native_ptr(), _method_base64_to_variant_218087648_name._native_ptr(), 218087648)
        assert(Marshalls._method_base64_to_variant_218087648 != nil)
        let _method_raw_to_base64_3999417757_name = StringName(from: "raw_to_base64")
        self._method_raw_to_base64_3999417757 = self.interface.pointee.classdb_get_method_bind(__godot_name_Marshalls._native_ptr(), _method_raw_to_base64_3999417757_name._native_ptr(), 3999417757)
        assert(Marshalls._method_raw_to_base64_3999417757 != nil)
        let _method_base64_to_raw_659035735_name = StringName(from: "base64_to_raw")
        self._method_base64_to_raw_659035735 = self.interface.pointee.classdb_get_method_bind(__godot_name_Marshalls._native_ptr(), _method_base64_to_raw_659035735_name._native_ptr(), 659035735)
        assert(Marshalls._method_base64_to_raw_659035735 != nil)
        let _method_utf8_to_base64_1703090593_name = StringName(from: "utf8_to_base64")
        self._method_utf8_to_base64_1703090593 = self.interface.pointee.classdb_get_method_bind(__godot_name_Marshalls._native_ptr(), _method_utf8_to_base64_1703090593_name._native_ptr(), 1703090593)
        assert(Marshalls._method_utf8_to_base64_1703090593 != nil)
        let _method_base64_to_utf8_1703090593_name = StringName(from: "base64_to_utf8")
        self._method_base64_to_utf8_1703090593 = self.interface.pointee.classdb_get_method_bind(__godot_name_Marshalls._native_ptr(), _method_base64_to_utf8_1703090593_name._native_ptr(), 1703090593)
        assert(Marshalls._method_base64_to_utf8_1703090593 != nil)
    }

    public func variant_to_base64(variant: Variant, full_objects: UInt8) -> godot.String {
        withUnsafePointer(to: full_objects) { full_objects_native in
        let variant_native = variant._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(variant_native), .init(full_objects_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_variant_to_base64_3876248563,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func base64_to_variant(base64_str: godot.String, allow_objects: UInt8) -> Variant {
        withUnsafePointer(to: allow_objects) { allow_objects_native in
        let base64_str_native = base64_str._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(base64_str_native), .init(allow_objects_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_base64_to_variant_218087648,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
        }
    }
    public func raw_to_base64(array: PackedByteArray) -> godot.String {
        let array_native = array._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(array_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_raw_to_base64_3999417757,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func base64_to_raw(base64_str: godot.String) -> PackedByteArray {
        let base64_str_native = base64_str._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(base64_str_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_base64_to_raw_659035735,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
    }
    public func utf8_to_base64(utf8_str: godot.String) -> godot.String {
        let utf8_str_native = utf8_str._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(utf8_str_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_utf8_to_base64_1703090593,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func base64_to_utf8(base64_str: godot.String) -> godot.String {
        let base64_str_native = base64_str._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(base64_str_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_base64_to_utf8_1703090593,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
}