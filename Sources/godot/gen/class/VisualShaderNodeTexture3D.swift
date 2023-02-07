import godot_native

fileprivate var __godot_name_VisualShaderNodeTexture3D: StringName! = nil

/// Performs a 3D texture lookup within the visual shader graph.
/// 
/// Performs a lookup operation on the provided texture, with support for multiple texture sources to choose from.
public class VisualShaderNodeTexture3D : VisualShaderNodeSample3D {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTexture3D }

    static var _method_set_texture_1188404210: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_373985333: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeTexture3D = StringName(from: "VisualShaderNodeTexture3D")

        let _method_set_texture_1188404210_name = StringName(from: "set_texture")
        self._method_set_texture_1188404210 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_1188404210_name._native_ptr(), 1188404210)
        assert(VisualShaderNodeTexture3D._method_set_texture_1188404210 != nil)
        let _method_get_texture_373985333_name = StringName(from: "get_texture")
        self._method_get_texture_373985333 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_373985333_name._native_ptr(), 373985333)
        assert(VisualShaderNodeTexture3D._method_get_texture_373985333 != nil)
    }

    public func set_texture(value: Texture3D)  {
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_1188404210,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_373985333,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture3D(from: __resPtr.pointee)
    }
}