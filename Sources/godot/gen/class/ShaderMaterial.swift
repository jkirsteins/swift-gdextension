import godot_native

fileprivate var __godot_name_ShaderMaterial: StringName! = nil

/// A material that uses a custom [Shader] program.
/// 
/// A material that uses a custom [Shader] program to render either items to screen or process particles. You can create multiple materials for the same shader but configure different values for the uniforms defined in the shader.
open class ShaderMaterial : Material {

    

    public override class var __godot_name: StringName { __godot_name_ShaderMaterial }

    static var _method_set_shader_3341921675: StringName! = nil
    static var _method_get_shader_2078273437: StringName! = nil
    static var _method_set_shader_parameter_3776071444: StringName! = nil
    static var _method_get_shader_parameter_2760726917: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ShaderMaterial == nil)
        __godot_name_ShaderMaterial = StringName(from: "ShaderMaterial")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_shader_3341921675 = StringName(from: "set_shader")
        assert(self._method_set_shader_3341921675 != nil)
        self._method_get_shader_2078273437 = StringName(from: "get_shader")
        assert(self._method_get_shader_2078273437 != nil)
        self._method_set_shader_parameter_3776071444 = StringName(from: "set_shader_parameter")
        assert(self._method_set_shader_parameter_3776071444 != nil)
        self._method_get_shader_parameter_2760726917 = StringName(from: "get_shader_parameter")
        assert(self._method_get_shader_parameter_2760726917 != nil)
    }

    public func set_shader(shader: Shader)  {
        let shader_native = shader._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shader_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_shader_3341921675._native_ptr(),
                    3341921675)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_shader() -> Shader {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_shader_2078273437._native_ptr(),
                    2078273437)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Shader(godot: __resPtr.pointee)
    }
    public func set_shader_parameter(param: StringName, value: Variant)  {
        let value_native = value._native_ptr()
        let param_native = param._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_shader_parameter_3776071444._native_ptr(),
                    3776071444)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_shader_parameter(param: StringName) -> Variant {
        let param_native = param._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_shader_parameter_2760726917._native_ptr(),
                    2760726917)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
}