import godot_native

fileprivate var __godot_name_VisualShaderNodeTexture2DArray: StringName! = nil

/// A 2D texture uniform array to be used within the visual shader graph.
/// 
/// Translated to [code]uniform sampler2DArray[/code] in the shader language.
open class VisualShaderNodeTexture2DArray : VisualShaderNodeSample3D {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTexture2DArray }

    static var _method_set_texture_array_2206200446: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_array_146117123: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeTexture2DArray = StringName(from: "VisualShaderNodeTexture2DArray")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_texture_array_2206200446_name = StringName(from: "set_texture_array")
        self._method_set_texture_array_2206200446 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeTexture2DArray._native_ptr(), _method_set_texture_array_2206200446_name._native_ptr(), 2206200446)
        assert(VisualShaderNodeTexture2DArray._method_set_texture_array_2206200446 != nil)
        let _method_get_texture_array_146117123_name = StringName(from: "get_texture_array")
        self._method_get_texture_array_146117123 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeTexture2DArray._native_ptr(), _method_get_texture_array_146117123_name._native_ptr(), 146117123)
        assert(VisualShaderNodeTexture2DArray._method_get_texture_array_146117123 != nil)
    }

    public func set_texture_array(value: Texture2DArray)  {
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_array_2206200446,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_texture_array() -> Texture2DArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_array_146117123,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2DArray(godot: __resPtr.pointee)
    }
}