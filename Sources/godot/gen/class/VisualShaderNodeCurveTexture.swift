import godot_native

fileprivate var __godot_name_VisualShaderNodeCurveTexture: StringName! = nil

/// Performs a [CurveTexture] lookup within the visual shader graph.
/// 
/// Comes with a built-in editor for texture's curves.
open class VisualShaderNodeCurveTexture : VisualShaderNodeResizableBase {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeCurveTexture }

    static var _method_set_texture_181872837: StringName! = nil
    static var _method_get_texture_2800800579: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeCurveTexture == nil)
        __godot_name_VisualShaderNodeCurveTexture = StringName(from: "VisualShaderNodeCurveTexture")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_texture_181872837 = StringName(from: "set_texture")
        assert(self._method_set_texture_181872837 != nil)
        self._method_get_texture_2800800579 = StringName(from: "get_texture")
        assert(self._method_get_texture_2800800579 != nil)
    }

    public func set_texture(texture: CurveTexture)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_texture_181872837._native_ptr(),
                    181872837)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_texture() -> CurveTexture {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_texture_2800800579._native_ptr(),
                    2800800579)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CurveTexture(godot: __resPtr.pointee)
    }
}