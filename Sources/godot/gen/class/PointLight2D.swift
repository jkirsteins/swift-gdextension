import godot_native

fileprivate var __godot_name_PointLight2D: StringName! = nil

/// Positional 2D light source.
/// 
/// Casts light in a 2D environment. This light's shape is defined by a (usually grayscale) texture
open class PointLight2D : Light2D {

    

    public override class var __godot_name: StringName { __godot_name_PointLight2D }

    static var _method_set_texture_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_offset_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_offset_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_scale_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_PointLight2D = StringName(from: "PointLight2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_texture_4051416890_name = StringName(from: "set_texture")
        self._method_set_texture_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name_PointLight2D._native_ptr(), _method_set_texture_4051416890_name._native_ptr(), 4051416890)
        assert(PointLight2D._method_set_texture_4051416890 != nil)
        let _method_get_texture_3635182373_name = StringName(from: "get_texture")
        self._method_get_texture_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name_PointLight2D._native_ptr(), _method_get_texture_3635182373_name._native_ptr(), 3635182373)
        assert(PointLight2D._method_get_texture_3635182373 != nil)
        let _method_set_texture_offset_743155724_name = StringName(from: "set_texture_offset")
        self._method_set_texture_offset_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_PointLight2D._native_ptr(), _method_set_texture_offset_743155724_name._native_ptr(), 743155724)
        assert(PointLight2D._method_set_texture_offset_743155724 != nil)
        let _method_get_texture_offset_3341600327_name = StringName(from: "get_texture_offset")
        self._method_get_texture_offset_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_PointLight2D._native_ptr(), _method_get_texture_offset_3341600327_name._native_ptr(), 3341600327)
        assert(PointLight2D._method_get_texture_offset_3341600327 != nil)
        let _method_set_texture_scale_373806689_name = StringName(from: "set_texture_scale")
        self._method_set_texture_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_PointLight2D._native_ptr(), _method_set_texture_scale_373806689_name._native_ptr(), 373806689)
        assert(PointLight2D._method_set_texture_scale_373806689 != nil)
        let _method_get_texture_scale_1740695150_name = StringName(from: "get_texture_scale")
        self._method_get_texture_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_PointLight2D._native_ptr(), _method_get_texture_scale_1740695150_name._native_ptr(), 1740695150)
        assert(PointLight2D._method_get_texture_scale_1740695150 != nil)
    }

    public func set_texture(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_4051416890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_texture() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func set_texture_offset(texture_offset: Vector2)  {
        let texture_offset_native = texture_offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_offset_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_texture_offset() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_offset_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_texture_scale(texture_scale: Float64)  {
        withUnsafePointer(to: texture_scale) { texture_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_scale_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_texture_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
}