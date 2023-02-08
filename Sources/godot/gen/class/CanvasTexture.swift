import godot_native

fileprivate var __godot_name_CanvasTexture: StringName! = nil

/// Texture with optional normal and specular maps for use in 2D rendering.
/// 
/// [CanvasTexture] is an alternative to [ImageTexture] for 2D rendering. It allows using normal maps and specular maps in any node that inherits from [CanvasItem]. [CanvasTexture] also allows overriding the texture's filter and repeat mode independently of the node's properties (or the project settings).
///  
/// [b]Note:[/b] [CanvasTexture] cannot be used in 3D rendering. For physically-based materials in 3D, use [BaseMaterial3D] instead.
open class CanvasTexture : Texture2D {

    

    public override class var __godot_name: StringName { __godot_name_CanvasTexture }

    static var _method_set_diffuse_texture_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_diffuse_texture_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_set_normal_texture_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_normal_texture_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_set_specular_texture_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_specular_texture_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_set_specular_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_specular_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_specular_shininess_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_specular_shininess_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_filter_1037999706: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_filter_121960042: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_repeat_1716472974: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_repeat_2667158319: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_CanvasTexture = StringName(from: "CanvasTexture")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_diffuse_texture_4051416890_name = StringName(from: "set_diffuse_texture")
        self._method_set_diffuse_texture_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasTexture._native_ptr(), _method_set_diffuse_texture_4051416890_name._native_ptr(), 4051416890)
        assert(CanvasTexture._method_set_diffuse_texture_4051416890 != nil)
        let _method_get_diffuse_texture_3635182373_name = StringName(from: "get_diffuse_texture")
        self._method_get_diffuse_texture_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasTexture._native_ptr(), _method_get_diffuse_texture_3635182373_name._native_ptr(), 3635182373)
        assert(CanvasTexture._method_get_diffuse_texture_3635182373 != nil)
        let _method_set_normal_texture_4051416890_name = StringName(from: "set_normal_texture")
        self._method_set_normal_texture_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasTexture._native_ptr(), _method_set_normal_texture_4051416890_name._native_ptr(), 4051416890)
        assert(CanvasTexture._method_set_normal_texture_4051416890 != nil)
        let _method_get_normal_texture_3635182373_name = StringName(from: "get_normal_texture")
        self._method_get_normal_texture_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasTexture._native_ptr(), _method_get_normal_texture_3635182373_name._native_ptr(), 3635182373)
        assert(CanvasTexture._method_get_normal_texture_3635182373 != nil)
        let _method_set_specular_texture_4051416890_name = StringName(from: "set_specular_texture")
        self._method_set_specular_texture_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasTexture._native_ptr(), _method_set_specular_texture_4051416890_name._native_ptr(), 4051416890)
        assert(CanvasTexture._method_set_specular_texture_4051416890 != nil)
        let _method_get_specular_texture_3635182373_name = StringName(from: "get_specular_texture")
        self._method_get_specular_texture_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasTexture._native_ptr(), _method_get_specular_texture_3635182373_name._native_ptr(), 3635182373)
        assert(CanvasTexture._method_get_specular_texture_3635182373 != nil)
        let _method_set_specular_color_2920490490_name = StringName(from: "set_specular_color")
        self._method_set_specular_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasTexture._native_ptr(), _method_set_specular_color_2920490490_name._native_ptr(), 2920490490)
        assert(CanvasTexture._method_set_specular_color_2920490490 != nil)
        let _method_get_specular_color_3444240500_name = StringName(from: "get_specular_color")
        self._method_get_specular_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasTexture._native_ptr(), _method_get_specular_color_3444240500_name._native_ptr(), 3444240500)
        assert(CanvasTexture._method_get_specular_color_3444240500 != nil)
        let _method_set_specular_shininess_373806689_name = StringName(from: "set_specular_shininess")
        self._method_set_specular_shininess_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasTexture._native_ptr(), _method_set_specular_shininess_373806689_name._native_ptr(), 373806689)
        assert(CanvasTexture._method_set_specular_shininess_373806689 != nil)
        let _method_get_specular_shininess_1740695150_name = StringName(from: "get_specular_shininess")
        self._method_get_specular_shininess_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasTexture._native_ptr(), _method_get_specular_shininess_1740695150_name._native_ptr(), 1740695150)
        assert(CanvasTexture._method_get_specular_shininess_1740695150 != nil)
        let _method_set_texture_filter_1037999706_name = StringName(from: "set_texture_filter")
        self._method_set_texture_filter_1037999706 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasTexture._native_ptr(), _method_set_texture_filter_1037999706_name._native_ptr(), 1037999706)
        assert(CanvasTexture._method_set_texture_filter_1037999706 != nil)
        let _method_get_texture_filter_121960042_name = StringName(from: "get_texture_filter")
        self._method_get_texture_filter_121960042 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasTexture._native_ptr(), _method_get_texture_filter_121960042_name._native_ptr(), 121960042)
        assert(CanvasTexture._method_get_texture_filter_121960042 != nil)
        let _method_set_texture_repeat_1716472974_name = StringName(from: "set_texture_repeat")
        self._method_set_texture_repeat_1716472974 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasTexture._native_ptr(), _method_set_texture_repeat_1716472974_name._native_ptr(), 1716472974)
        assert(CanvasTexture._method_set_texture_repeat_1716472974 != nil)
        let _method_get_texture_repeat_2667158319_name = StringName(from: "get_texture_repeat")
        self._method_get_texture_repeat_2667158319 = self.interface.pointee.classdb_get_method_bind(__godot_name_CanvasTexture._native_ptr(), _method_get_texture_repeat_2667158319_name._native_ptr(), 2667158319)
        assert(CanvasTexture._method_get_texture_repeat_2667158319 != nil)
    }

    public func set_diffuse_texture(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_diffuse_texture_4051416890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_diffuse_texture() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_diffuse_texture_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func set_normal_texture(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_normal_texture_4051416890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_normal_texture() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_normal_texture_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func set_specular_texture(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_specular_texture_4051416890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_specular_texture() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_specular_texture_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func set_specular_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_specular_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_specular_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_specular_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_specular_shininess(shininess: Float64)  {
        withUnsafePointer(to: shininess) { shininess_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shininess_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_specular_shininess_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_specular_shininess() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_specular_shininess_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_texture_filter(filter: CanvasItem.TextureFilter)  {
        withUnsafePointer(to: filter.rawValue) { filter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filter_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_filter_1037999706,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_texture_filter() -> CanvasItem.TextureFilter {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_filter_121960042,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CanvasItem.TextureFilter(godot: __resPtr.pointee)
    }
    public func set_texture_repeat(`repeat`: CanvasItem.TextureRepeat)  {
        withUnsafePointer(to: `repeat`.rawValue) { repeat_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(repeat_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_repeat_1716472974,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_texture_repeat() -> CanvasItem.TextureRepeat {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_repeat_2667158319,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CanvasItem.TextureRepeat(godot: __resPtr.pointee)
    }
}