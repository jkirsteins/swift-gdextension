import godot_native

fileprivate var __godot_name_VisualShaderNodeCurveXYZTexture: StringName! = nil

/// Performs a [CurveXYZTexture] lookup within the visual shader graph.
/// 
/// Comes with a built-in editor for texture's curves.
open class VisualShaderNodeCurveXYZTexture : VisualShaderNodeResizableBase {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeCurveXYZTexture }

    static var _method_set_texture_8031783: StringName! = nil
    static var _method_get_texture_1950275015: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeCurveXYZTexture == nil)
        __godot_name_VisualShaderNodeCurveXYZTexture = StringName(from: "VisualShaderNodeCurveXYZTexture")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_texture_8031783 = StringName(from: "set_texture")
        assert(self._method_set_texture_8031783 != nil)
        self._method_get_texture_1950275015 = StringName(from: "get_texture")
        assert(self._method_get_texture_1950275015 != nil)
    }

    public func set_texture(texture: CurveXYZTexture)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_texture_8031783._native_ptr(),
                    8031783)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_texture() -> CurveXYZTexture {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_texture_1950275015._native_ptr(),
                    1950275015)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CurveXYZTexture(godot: __resPtr.pointee)
    }
}