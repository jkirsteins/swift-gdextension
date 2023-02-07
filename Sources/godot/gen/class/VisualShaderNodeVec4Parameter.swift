import godot_native

fileprivate var __godot_name_VisualShaderNodeVec4Parameter: StringName! = nil

/// A 4D vector parameter to be used within the visual shader graph.
/// 
/// Translated to [code]uniform vec4[/code] in the shader language.
public class VisualShaderNodeVec4Parameter : VisualShaderNodeParameter {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeVec4Parameter }

    static var _method_set_default_value_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_default_value_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_default_value_643568085: GDExtensionMethodBindPtr! = nil
    static var _method_get_default_value_2435802345: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeVec4Parameter = StringName(from: "VisualShaderNodeVec4Parameter")

        let _method_set_default_value_enabled_2586408642_name = StringName(from: "set_default_value_enabled")
        self._method_set_default_value_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_default_value_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(VisualShaderNodeVec4Parameter._method_set_default_value_enabled_2586408642 != nil)
        let _method_is_default_value_enabled_36873697_name = StringName(from: "is_default_value_enabled")
        self._method_is_default_value_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_default_value_enabled_36873697_name._native_ptr(), 36873697)
        assert(VisualShaderNodeVec4Parameter._method_is_default_value_enabled_36873697 != nil)
        let _method_set_default_value_643568085_name = StringName(from: "set_default_value")
        self._method_set_default_value_643568085 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_default_value_643568085_name._native_ptr(), 643568085)
        assert(VisualShaderNodeVec4Parameter._method_set_default_value_643568085 != nil)
        let _method_get_default_value_2435802345_name = StringName(from: "get_default_value")
        self._method_get_default_value_2435802345 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_default_value_2435802345_name._native_ptr(), 2435802345)
        assert(VisualShaderNodeVec4Parameter._method_get_default_value_2435802345 != nil)
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
    public func set_default_value(value: Vector4)  {
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_default_value_643568085,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_default_value() -> Vector4 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_default_value_2435802345,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector4(from: __resPtr.pointee)
    }
}