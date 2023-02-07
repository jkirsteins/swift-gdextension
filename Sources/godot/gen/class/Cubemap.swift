import godot_native

fileprivate var __godot_name_Cubemap: StringName! = nil

/// 6-sided texture typically used in 3D rendering.
/// 
/// A cubemap is made of 6 textures organized in layers. They are typically used for faking reflections in 3D rendering (see [ReflectionProbe]). It can be used to make an object look as if it's reflecting its surroundings. This usually delivers much better performance than other reflection methods.
///  
/// This resource is typically used as a uniform in custom shaders. Few core Godot methods make use of [Cubemap] resources.
///  
/// To create such a texture file yourself, reimport your image files using the Godot Editor import presets.
///  
/// [b]Note:[/b] Godot doesn't support using cubemaps in a [PanoramaSkyMaterial]. You can use [url=https://danilw.github.io/GLSL-howto/cubemap_to_panorama_js/cubemap_to_panorama.html]this tool[/url] to convert a cubemap to an equirectangular sky map.
public class Cubemap : ImageTextureLayered {

    

    public override class var __godot_name: StringName { __godot_name_Cubemap }

    static var _method_create_placeholder_121922552: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Cubemap = StringName(from: "Cubemap")

        let _method_create_placeholder_121922552_name = StringName(from: "create_placeholder")
        self._method_create_placeholder_121922552 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_placeholder_121922552_name._native_ptr(), 121922552)
        assert(Cubemap._method_create_placeholder_121922552 != nil)
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