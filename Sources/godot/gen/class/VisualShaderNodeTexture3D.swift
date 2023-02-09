import godot_native

fileprivate var __godot_name_VisualShaderNodeTexture3D: StringName! = nil

/// Performs a 3D texture lookup within the visual shader graph.
/// 
/// Performs a lookup operation on the provided texture, with support for multiple texture sources to choose from.
open class VisualShaderNodeTexture3D : VisualShaderNodeSample3D {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTexture3D }

    static var _method_set_texture_1188404210: StringName! = nil
    static var _method_get_texture_373985333: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeTexture3D == nil)
        __godot_name_VisualShaderNodeTexture3D = StringName(from: "VisualShaderNodeTexture3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_texture_1188404210 = StringName(from: "set_texture")
        assert(self._method_set_texture_1188404210 != nil)
        self._method_get_texture_373985333 = StringName(from: "get_texture")
        assert(self._method_get_texture_373985333 != nil)
    }

    public func set_texture(value: Texture3D)  {
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_texture_1188404210._native_ptr(),
                    1188404210)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_texture() -> Texture3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_texture_373985333._native_ptr(),
                    373985333)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture3D(godot: __resPtr.pointee)
    }
}