import godot_native

fileprivate var __godot_name_PanoramaSkyMaterial: StringName! = nil

/// A [Material] used with [Sky] to draw a background texture.
/// 
/// A resource referenced in a [Sky] that is used to draw a background. The Panorama sky material functions similar to skyboxes in other engines, except it uses an equirectangular sky map instead of a cubemap.
///  
/// Using an HDR panorama is strongly recommended for accurate, high-quality reflections. Godot supports the Radiance HDR ([code].hdr[/code]) and OpenEXR ([code].exr[/code]) image formats for this purpose.
///  
/// You can use [url=https://danilw.github.io/GLSL-howto/cubemap_to_panorama_js/cubemap_to_panorama.html]this tool[/url] to convert a cubemap to an equirectangular sky map.
open class PanoramaSkyMaterial : Material {

    

    public override class var __godot_name: StringName { __godot_name_PanoramaSkyMaterial }

    static var _method_set_panorama_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_panorama_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_set_filtering_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_filtering_enabled_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_PanoramaSkyMaterial = StringName(from: "PanoramaSkyMaterial")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_panorama_4051416890_name = StringName(from: "set_panorama")
        self._method_set_panorama_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name_PanoramaSkyMaterial._native_ptr(), _method_set_panorama_4051416890_name._native_ptr(), 4051416890)
        assert(PanoramaSkyMaterial._method_set_panorama_4051416890 != nil)
        let _method_get_panorama_3635182373_name = StringName(from: "get_panorama")
        self._method_get_panorama_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name_PanoramaSkyMaterial._native_ptr(), _method_get_panorama_3635182373_name._native_ptr(), 3635182373)
        assert(PanoramaSkyMaterial._method_get_panorama_3635182373 != nil)
        let _method_set_filtering_enabled_2586408642_name = StringName(from: "set_filtering_enabled")
        self._method_set_filtering_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_PanoramaSkyMaterial._native_ptr(), _method_set_filtering_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(PanoramaSkyMaterial._method_set_filtering_enabled_2586408642 != nil)
        let _method_is_filtering_enabled_36873697_name = StringName(from: "is_filtering_enabled")
        self._method_is_filtering_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_PanoramaSkyMaterial._native_ptr(), _method_is_filtering_enabled_36873697_name._native_ptr(), 36873697)
        assert(PanoramaSkyMaterial._method_is_filtering_enabled_36873697 != nil)
    }

    public func set_panorama(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_panorama_4051416890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_panorama() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_panorama_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func set_filtering_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_filtering_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_filtering_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_filtering_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}