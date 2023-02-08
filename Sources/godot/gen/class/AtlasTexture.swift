import godot_native

fileprivate var __godot_name_AtlasTexture: StringName! = nil

/// A texture that crops out part of another Texture2D.
/// 
/// [Texture2D] resource that draws only part of its [member atlas] texture, as defined by the [member region]. An additional [member margin] can also be set, which is useful for small adjustments.
///  
/// Multiple [AtlasTexture] resources can be cropped from the same [member atlas]. Packing many smaller textures into a singular large texture helps to optimize video memory costs and render calls.
///  
/// [b]Note:[/b] [AtlasTexture] cannot be used in an [AnimatedTexture], and may not tile properly in nodes such as [TextureRect], when inside other [AtlasTexture] resources.
open class AtlasTexture : Texture2D {

    

    public override class var __godot_name: StringName { __godot_name_AtlasTexture }

    static var _method_set_atlas_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_atlas_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_set_region_2046264180: GDExtensionMethodBindPtr! = nil
    static var _method_get_region_1639390495: GDExtensionMethodBindPtr! = nil
    static var _method_set_margin_2046264180: GDExtensionMethodBindPtr! = nil
    static var _method_get_margin_1639390495: GDExtensionMethodBindPtr! = nil
    static var _method_set_filter_clip_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_has_filter_clip_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AtlasTexture = StringName(from: "AtlasTexture")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_atlas_4051416890_name = StringName(from: "set_atlas")
        self._method_set_atlas_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name_AtlasTexture._native_ptr(), _method_set_atlas_4051416890_name._native_ptr(), 4051416890)
        assert(AtlasTexture._method_set_atlas_4051416890 != nil)
        let _method_get_atlas_3635182373_name = StringName(from: "get_atlas")
        self._method_get_atlas_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name_AtlasTexture._native_ptr(), _method_get_atlas_3635182373_name._native_ptr(), 3635182373)
        assert(AtlasTexture._method_get_atlas_3635182373 != nil)
        let _method_set_region_2046264180_name = StringName(from: "set_region")
        self._method_set_region_2046264180 = self.interface.pointee.classdb_get_method_bind(__godot_name_AtlasTexture._native_ptr(), _method_set_region_2046264180_name._native_ptr(), 2046264180)
        assert(AtlasTexture._method_set_region_2046264180 != nil)
        let _method_get_region_1639390495_name = StringName(from: "get_region")
        self._method_get_region_1639390495 = self.interface.pointee.classdb_get_method_bind(__godot_name_AtlasTexture._native_ptr(), _method_get_region_1639390495_name._native_ptr(), 1639390495)
        assert(AtlasTexture._method_get_region_1639390495 != nil)
        let _method_set_margin_2046264180_name = StringName(from: "set_margin")
        self._method_set_margin_2046264180 = self.interface.pointee.classdb_get_method_bind(__godot_name_AtlasTexture._native_ptr(), _method_set_margin_2046264180_name._native_ptr(), 2046264180)
        assert(AtlasTexture._method_set_margin_2046264180 != nil)
        let _method_get_margin_1639390495_name = StringName(from: "get_margin")
        self._method_get_margin_1639390495 = self.interface.pointee.classdb_get_method_bind(__godot_name_AtlasTexture._native_ptr(), _method_get_margin_1639390495_name._native_ptr(), 1639390495)
        assert(AtlasTexture._method_get_margin_1639390495 != nil)
        let _method_set_filter_clip_2586408642_name = StringName(from: "set_filter_clip")
        self._method_set_filter_clip_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_AtlasTexture._native_ptr(), _method_set_filter_clip_2586408642_name._native_ptr(), 2586408642)
        assert(AtlasTexture._method_set_filter_clip_2586408642 != nil)
        let _method_has_filter_clip_36873697_name = StringName(from: "has_filter_clip")
        self._method_has_filter_clip_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_AtlasTexture._native_ptr(), _method_has_filter_clip_36873697_name._native_ptr(), 36873697)
        assert(AtlasTexture._method_has_filter_clip_36873697 != nil)
    }

    public func set_atlas(atlas: Texture2D)  {
        let atlas_native = atlas._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(atlas_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_atlas_4051416890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_atlas() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_atlas_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func set_region(region: Rect2)  {
        let region_native = region._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(region_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_region_2046264180,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_region() -> Rect2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_region_1639390495,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(godot: __resPtr.pointee)
    }
    public func set_margin(margin: Rect2)  {
        let margin_native = margin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_margin_2046264180,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_margin() -> Rect2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_margin_1639390495,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(godot: __resPtr.pointee)
    }
    public func set_filter_clip(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_filter_clip_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func has_filter_clip() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_filter_clip_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}