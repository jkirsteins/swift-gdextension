import godot_native

fileprivate var __godot_name_VisualShaderNodeVarying: StringName! = nil

/// A visual shader node that represents a "varying" shader value.
/// 
/// Varying values are shader variables that can be passed between shader functions, e.g. from Vertex shader to Fragment shader.
open class VisualShaderNodeVarying : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeVarying }

    static var _method_set_varying_name_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_varying_name_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_varying_type_3565867981: GDExtensionMethodBindPtr! = nil
    static var _method_get_varying_type_523183580: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeVarying = StringName(from: "VisualShaderNodeVarying")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_varying_name_83702148_name = StringName(from: "set_varying_name")
        self._method_set_varying_name_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeVarying._native_ptr(), _method_set_varying_name_83702148_name._native_ptr(), 83702148)
        assert(VisualShaderNodeVarying._method_set_varying_name_83702148 != nil)
        let _method_get_varying_name_201670096_name = StringName(from: "get_varying_name")
        self._method_get_varying_name_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeVarying._native_ptr(), _method_get_varying_name_201670096_name._native_ptr(), 201670096)
        assert(VisualShaderNodeVarying._method_get_varying_name_201670096 != nil)
        let _method_set_varying_type_3565867981_name = StringName(from: "set_varying_type")
        self._method_set_varying_type_3565867981 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeVarying._native_ptr(), _method_set_varying_type_3565867981_name._native_ptr(), 3565867981)
        assert(VisualShaderNodeVarying._method_set_varying_type_3565867981 != nil)
        let _method_get_varying_type_523183580_name = StringName(from: "get_varying_type")
        self._method_get_varying_type_523183580 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeVarying._native_ptr(), _method_get_varying_type_523183580_name._native_ptr(), 523183580)
        assert(VisualShaderNodeVarying._method_get_varying_type_523183580 != nil)
    }

    public func set_varying_name(name: godot.String)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_varying_name_83702148,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_varying_name_201670096,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_varying_type_3565867981,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_varying_type_523183580,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShader.VaryingType(godot: __resPtr.pointee)
    }
}