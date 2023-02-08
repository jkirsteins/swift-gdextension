import godot_native

fileprivate var __godot_name_VisualShaderNodeCurveTexture: StringName! = nil

/// Performs a [CurveTexture] lookup within the visual shader graph.
/// 
/// Comes with a built-in editor for texture's curves.
open class VisualShaderNodeCurveTexture : VisualShaderNodeResizableBase {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeCurveTexture }

    static var _method_set_texture_181872837: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_2800800579: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeCurveTexture = StringName(from: "VisualShaderNodeCurveTexture")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_texture_181872837_name = StringName(from: "set_texture")
        self._method_set_texture_181872837 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeCurveTexture._native_ptr(), _method_set_texture_181872837_name._native_ptr(), 181872837)
        assert(VisualShaderNodeCurveTexture._method_set_texture_181872837 != nil)
        let _method_get_texture_2800800579_name = StringName(from: "get_texture")
        self._method_get_texture_2800800579 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeCurveTexture._native_ptr(), _method_get_texture_2800800579_name._native_ptr(), 2800800579)
        assert(VisualShaderNodeCurveTexture._method_get_texture_2800800579 != nil)
    }

    public func set_texture(texture: CurveTexture)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_181872837,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_2800800579,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CurveTexture(godot: __resPtr.pointee)
    }
}