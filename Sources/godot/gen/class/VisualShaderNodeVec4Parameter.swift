import godot_native

fileprivate var __godot_name_VisualShaderNodeVec4Parameter: StringName! = nil

/// A 4D vector parameter to be used within the visual shader graph.
/// 
/// Translated to [code]uniform vec4[/code] in the shader language.
open class VisualShaderNodeVec4Parameter : VisualShaderNodeParameter {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeVec4Parameter }

    static var _method_set_default_value_enabled_2586408642: StringName! = nil
    static var _method_is_default_value_enabled_36873697: StringName! = nil
    static var _method_set_default_value_643568085: StringName! = nil
    static var _method_get_default_value_2435802345: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeVec4Parameter == nil)
        __godot_name_VisualShaderNodeVec4Parameter = StringName(from: "VisualShaderNodeVec4Parameter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_default_value_enabled_2586408642 = StringName(from: "set_default_value_enabled")
        assert(self._method_set_default_value_enabled_2586408642 != nil)
        self._method_is_default_value_enabled_36873697 = StringName(from: "is_default_value_enabled")
        assert(self._method_is_default_value_enabled_36873697 != nil)
        self._method_set_default_value_643568085 = StringName(from: "set_default_value")
        assert(self._method_set_default_value_643568085 != nil)
        self._method_get_default_value_2435802345 = StringName(from: "get_default_value")
        assert(self._method_get_default_value_2435802345 != nil)
    }

    public func set_default_value_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_default_value_enabled_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_default_value_enabled_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_default_value(value: Vector4)  {
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_default_value_643568085._native_ptr(),
                    643568085)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_default_value_2435802345._native_ptr(),
                    2435802345)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector4(godot: __resPtr.pointee)
    }
}