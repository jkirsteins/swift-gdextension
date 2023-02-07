import godot_native

fileprivate var __godot_name_CubemapArray: StringName! = nil

/// A single composite texture resource which consists of multiple [Cubemap]s.
/// 
/// [CubemapArray]s are made of an array of [Cubemap]s. Accordingly, like [Cubemap]s they are made of multiple textures the amount of which must be divisible by 6 (one image for each face of the cube). The primary benefit of [CubemapArray]s is that they can be accessed in shader code using a single texture reference. In other words, you can pass multiple [Cubemap]s into a shader using a single [CubemapArray].
///  
/// Generally, [CubemapArray]s provide a more efficient way for storing multiple [Cubemap]s compared to storing multiple [Cubemap]s themselves in an array.
///  
/// Internally, Godot uses [CubemapArray]s for many effects including the [Sky], if you set [member ProjectSettings.rendering/reflections/sky_reflections/texture_array_reflections] to [code]true[/code].
///  
/// To create such a texture file yourself, reimport your image files using the Godot Editor import presets.
///  
/// [b]Note:[/b] [CubemapArray] is not supported in the OpenGL 3 rendering backend.
public class CubemapArray : ImageTextureLayered {

    

    public override class var __godot_name: StringName { __godot_name_CubemapArray }

    static var _method_create_placeholder_121922552: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_CubemapArray = StringName(from: "CubemapArray")

        let _method_create_placeholder_121922552_name = StringName(from: "create_placeholder")
        self._method_create_placeholder_121922552 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_placeholder_121922552_name._native_ptr(), 121922552)
        assert(CubemapArray._method_create_placeholder_121922552 != nil)
    }

    public func create_placeholder() -> Resource {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_placeholder_121922552,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Resource(from: __resPtr.pointee)
    }
}