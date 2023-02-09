import godot_native

fileprivate var __godot_name_VisualShaderNodeVarying: StringName! = nil

/// A visual shader node that represents a "varying" shader value.
/// 
/// Varying values are shader variables that can be passed between shader functions, e.g. from Vertex shader to Fragment shader.
open class VisualShaderNodeVarying : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeVarying }

    static var _method_set_varying_name_83702148: StringName! = nil
    static var _method_get_varying_name_201670096: StringName! = nil
    static var _method_set_varying_type_3565867981: StringName! = nil
    static var _method_get_varying_type_523183580: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeVarying == nil)
        __godot_name_VisualShaderNodeVarying = StringName(from: "VisualShaderNodeVarying")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_varying_name_83702148 = StringName(from: "set_varying_name")
        assert(self._method_set_varying_name_83702148 != nil)
        self._method_get_varying_name_201670096 = StringName(from: "get_varying_name")
        assert(self._method_get_varying_name_201670096 != nil)
        self._method_set_varying_type_3565867981 = StringName(from: "set_varying_type")
        assert(self._method_set_varying_type_3565867981 != nil)
        self._method_get_varying_type_523183580 = StringName(from: "get_varying_type")
        assert(self._method_get_varying_type_523183580 != nil)
    }

    public func set_varying_name(name: godot.String)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_varying_name_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_varying_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_varying_name_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_varying_type(`type`: VisualShader.VaryingType)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_varying_type_3565867981._native_ptr(),
                    3565867981)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_varying_type() -> VisualShader.VaryingType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_varying_type_523183580._native_ptr(),
                    523183580)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShader.VaryingType(godot: __resPtr.pointee)
    }
}