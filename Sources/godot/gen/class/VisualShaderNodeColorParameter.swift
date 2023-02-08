import godot_native

fileprivate var __godot_name_VisualShaderNodeColorParameter: StringName! = nil

/// A [Color] parameter to be used within the visual shader graph.
/// 
/// Translated to [code]uniform vec4[/code] in the shader language.
open class VisualShaderNodeColorParameter : VisualShaderNodeParameter {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeColorParameter }

    static var _method_set_default_value_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_default_value_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_default_value_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_default_value_3444240500: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeColorParameter = StringName(from: "VisualShaderNodeColorParameter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_default_value_enabled_2586408642_name = StringName(from: "set_default_value_enabled")
        self._method_set_default_value_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeColorParameter._native_ptr(), _method_set_default_value_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(VisualShaderNodeColorParameter._method_set_default_value_enabled_2586408642 != nil)
        let _method_is_default_value_enabled_36873697_name = StringName(from: "is_default_value_enabled")
        self._method_is_default_value_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeColorParameter._native_ptr(), _method_is_default_value_enabled_36873697_name._native_ptr(), 36873697)
        assert(VisualShaderNodeColorParameter._method_is_default_value_enabled_36873697 != nil)
        let _method_set_default_value_2920490490_name = StringName(from: "set_default_value")
        self._method_set_default_value_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeColorParameter._native_ptr(), _method_set_default_value_2920490490_name._native_ptr(), 2920490490)
        assert(VisualShaderNodeColorParameter._method_set_default_value_2920490490 != nil)
        let _method_get_default_value_3444240500_name = StringName(from: "get_default_value")
        self._method_get_default_value_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeColorParameter._native_ptr(), _method_get_default_value_3444240500_name._native_ptr(), 3444240500)
        assert(VisualShaderNodeColorParameter._method_get_default_value_3444240500 != nil)
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
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_default_value(value: Color)  {
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_default_value_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_default_value() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_default_value_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
}