import godot_native

fileprivate var __godot_name_VisualShaderNodeUIntParameter: StringName! = nil

/// A visual shader node for shader parameter (uniform) of type unsigned [int].
/// 
/// A [VisualShaderNodeParameter] of type unsigned [int]. Offers additional customization for range of accepted values.
public class VisualShaderNodeUIntParameter : VisualShaderNodeParameter {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeUIntParameter }

    static var _method_set_default_value_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_default_value_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_default_value_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_default_value_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeUIntParameter = StringName(from: "VisualShaderNodeUIntParameter")

        let _method_set_default_value_enabled_2586408642_name = StringName(from: "set_default_value_enabled")
        self._method_set_default_value_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_default_value_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(VisualShaderNodeUIntParameter._method_set_default_value_enabled_2586408642 != nil)
        let _method_is_default_value_enabled_36873697_name = StringName(from: "is_default_value_enabled")
        self._method_is_default_value_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_default_value_enabled_36873697_name._native_ptr(), 36873697)
        assert(VisualShaderNodeUIntParameter._method_is_default_value_enabled_36873697 != nil)
        let _method_set_default_value_1286410249_name = StringName(from: "set_default_value")
        self._method_set_default_value_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_default_value_1286410249_name._native_ptr(), 1286410249)
        assert(VisualShaderNodeUIntParameter._method_set_default_value_1286410249 != nil)
        let _method_get_default_value_3905245786_name = StringName(from: "get_default_value")
        self._method_get_default_value_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_default_value_3905245786_name._native_ptr(), 3905245786)
        assert(VisualShaderNodeUIntParameter._method_get_default_value_3905245786 != nil)
    }

    public func set_default_value_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_default_value_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_default_value_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_default_value_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_default_value(value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_default_value_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_default_value() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_default_value_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
}