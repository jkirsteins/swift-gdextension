import godot_native

fileprivate var __godot_name_Sprite2D: StringName! = nil

/// General-purpose sprite node.
/// 
/// A node that displays a 2D texture. The texture displayed can be a region from a larger atlas texture, or a frame from a sprite sheet animation.
public class Sprite2D : Node2D {

    

    public override class var __godot_name: StringName { __godot_name_Sprite2D }

    static var _method_set_texture_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_set_centered_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_centered_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_offset_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_offset_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_flip_h_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_flipped_h_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_flip_v_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_flipped_v_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_region_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_region_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_pixel_opaque_556197845: GDExtensionMethodBindPtr! = nil
    static var _method_set_region_rect_2046264180: GDExtensionMethodBindPtr! = nil
    static var _method_get_region_rect_1639390495: GDExtensionMethodBindPtr! = nil
    static var _method_set_region_filter_clip_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_region_filter_clip_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_frame_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_frame_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_frame_coords_1130785943: GDExtensionMethodBindPtr! = nil
    static var _method_get_frame_coords_3690982128: GDExtensionMethodBindPtr! = nil
    static var _method_set_vframes_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_vframes_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_hframes_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_hframes_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_rect_1639390495: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Sprite2D = StringName(from: "Sprite2D")

        let _method_set_texture_4051416890_name = StringName(from: "set_texture")
        self._method_set_texture_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_4051416890_name._native_ptr(), 4051416890)
        assert(Sprite2D._method_set_texture_4051416890 != nil)
        let _method_get_texture_3635182373_name = StringName(from: "get_texture")
        self._method_get_texture_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_3635182373_name._native_ptr(), 3635182373)
        assert(Sprite2D._method_get_texture_3635182373 != nil)
        let _method_set_centered_2586408642_name = StringName(from: "set_centered")
        self._method_set_centered_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_centered_2586408642_name._native_ptr(), 2586408642)
        assert(Sprite2D._method_set_centered_2586408642 != nil)
        let _method_is_centered_36873697_name = StringName(from: "is_centered")
        self._method_is_centered_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_centered_36873697_name._native_ptr(), 36873697)
        assert(Sprite2D._method_is_centered_36873697 != nil)
        let _method_set_offset_743155724_name = StringName(from: "set_offset")
        self._method_set_offset_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_offset_743155724_name._native_ptr(), 743155724)
        assert(Sprite2D._method_set_offset_743155724 != nil)
        let _method_get_offset_3341600327_name = StringName(from: "get_offset")
        self._method_get_offset_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_offset_3341600327_name._native_ptr(), 3341600327)
        assert(Sprite2D._method_get_offset_3341600327 != nil)
        let _method_set_flip_h_2586408642_name = StringName(from: "set_flip_h")
        self._method_set_flip_h_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_flip_h_2586408642_name._native_ptr(), 2586408642)
        assert(Sprite2D._method_set_flip_h_2586408642 != nil)
        let _method_is_flipped_h_36873697_name = StringName(from: "is_flipped_h")
        self._method_is_flipped_h_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_flipped_h_36873697_name._native_ptr(), 36873697)
        assert(Sprite2D._method_is_flipped_h_36873697 != nil)
        let _method_set_flip_v_2586408642_name = StringName(from: "set_flip_v")
        self._method_set_flip_v_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_flip_v_2586408642_name._native_ptr(), 2586408642)
        assert(Sprite2D._method_set_flip_v_2586408642 != nil)
        let _method_is_flipped_v_36873697_name = StringName(from: "is_flipped_v")
        self._method_is_flipped_v_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_flipped_v_36873697_name._native_ptr(), 36873697)
        assert(Sprite2D._method_is_flipped_v_36873697 != nil)
        let _method_set_region_enabled_2586408642_name = StringName(from: "set_region_enabled")
        self._method_set_region_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_region_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Sprite2D._method_set_region_enabled_2586408642 != nil)
        let _method_is_region_enabled_36873697_name = StringName(from: "is_region_enabled")
        self._method_is_region_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_region_enabled_36873697_name._native_ptr(), 36873697)
        assert(Sprite2D._method_is_region_enabled_36873697 != nil)
        let _method_is_pixel_opaque_556197845_name = StringName(from: "is_pixel_opaque")
        self._method_is_pixel_opaque_556197845 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_pixel_opaque_556197845_name._native_ptr(), 556197845)
        assert(Sprite2D._method_is_pixel_opaque_556197845 != nil)
        let _method_set_region_rect_2046264180_name = StringName(from: "set_region_rect")
        self._method_set_region_rect_2046264180 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_region_rect_2046264180_name._native_ptr(), 2046264180)
        assert(Sprite2D._method_set_region_rect_2046264180 != nil)
        let _method_get_region_rect_1639390495_name = StringName(from: "get_region_rect")
        self._method_get_region_rect_1639390495 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_region_rect_1639390495_name._native_ptr(), 1639390495)
        assert(Sprite2D._method_get_region_rect_1639390495 != nil)
        let _method_set_region_filter_clip_enabled_2586408642_name = StringName(from: "set_region_filter_clip_enabled")
        self._method_set_region_filter_clip_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_region_filter_clip_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Sprite2D._method_set_region_filter_clip_enabled_2586408642 != nil)
        let _method_is_region_filter_clip_enabled_36873697_name = StringName(from: "is_region_filter_clip_enabled")
        self._method_is_region_filter_clip_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_region_filter_clip_enabled_36873697_name._native_ptr(), 36873697)
        assert(Sprite2D._method_is_region_filter_clip_enabled_36873697 != nil)
        let _method_set_frame_1286410249_name = StringName(from: "set_frame")
        self._method_set_frame_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_frame_1286410249_name._native_ptr(), 1286410249)
        assert(Sprite2D._method_set_frame_1286410249 != nil)
        let _method_get_frame_3905245786_name = StringName(from: "get_frame")
        self._method_get_frame_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_frame_3905245786_name._native_ptr(), 3905245786)
        assert(Sprite2D._method_get_frame_3905245786 != nil)
        let _method_set_frame_coords_1130785943_name = StringName(from: "set_frame_coords")
        self._method_set_frame_coords_1130785943 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_frame_coords_1130785943_name._native_ptr(), 1130785943)
        assert(Sprite2D._method_set_frame_coords_1130785943 != nil)
        let _method_get_frame_coords_3690982128_name = StringName(from: "get_frame_coords")
        self._method_get_frame_coords_3690982128 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_frame_coords_3690982128_name._native_ptr(), 3690982128)
        assert(Sprite2D._method_get_frame_coords_3690982128 != nil)
        let _method_set_vframes_1286410249_name = StringName(from: "set_vframes")
        self._method_set_vframes_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_vframes_1286410249_name._native_ptr(), 1286410249)
        assert(Sprite2D._method_set_vframes_1286410249 != nil)
        let _method_get_vframes_3905245786_name = StringName(from: "get_vframes")
        self._method_get_vframes_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_vframes_3905245786_name._native_ptr(), 3905245786)
        assert(Sprite2D._method_get_vframes_3905245786 != nil)
        let _method_set_hframes_1286410249_name = StringName(from: "set_hframes")
        self._method_set_hframes_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_hframes_1286410249_name._native_ptr(), 1286410249)
        assert(Sprite2D._method_set_hframes_1286410249 != nil)
        let _method_get_hframes_3905245786_name = StringName(from: "get_hframes")
        self._method_get_hframes_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_hframes_3905245786_name._native_ptr(), 3905245786)
        assert(Sprite2D._method_get_hframes_3905245786 != nil)
        let _method_get_rect_1639390495_name = StringName(from: "get_rect")
        self._method_get_rect_1639390495 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rect_1639390495_name._native_ptr(), 1639390495)
        assert(Sprite2D._method_get_rect_1639390495 != nil)
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
            return Texture2D(from: __resPtr.pointee)
    }
    public func set_centered(centered: UInt8)  {
        withUnsafePointer(to: centered) { centered_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(centered_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_centered_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_centered() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_centered_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_offset(offset: Vector2)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_offset_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_offset() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_offset_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_flip_h(flip_h: UInt8)  {
        withUnsafePointer(to: flip_h) { flip_h_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flip_h_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_flip_h_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_flipped_h() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_flipped_h_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_flip_v(flip_v: UInt8)  {
        withUnsafePointer(to: flip_v) { flip_v_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flip_v_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_flip_v_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_flipped_v() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_flipped_v_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_region_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_region_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_region_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_region_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func is_pixel_opaque(pos: Vector2) -> UInt8 {
        let pos_native = pos._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pos_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_pixel_opaque_556197845,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_region_rect(rect: Rect2)  {
        let rect_native = rect._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rect_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_region_rect_2046264180,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_region_rect() -> Rect2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_region_rect_1639390495,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(from: __resPtr.pointee)
    }
    public func set_region_filter_clip_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_region_filter_clip_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_region_filter_clip_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_region_filter_clip_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_frame(frame: Int64)  {
        withUnsafePointer(to: frame) { frame_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frame_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_frame_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_frame() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_frame_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_frame_coords(coords: Vector2i)  {
        let coords_native = coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(coords_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_frame_coords_1130785943,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_frame_coords() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_frame_coords_3690982128,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
    }
    public func set_vframes(vframes: Int64)  {
        withUnsafePointer(to: vframes) { vframes_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vframes_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_vframes_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_vframes() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_vframes_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_hframes(hframes: Int64)  {
        withUnsafePointer(to: hframes) { hframes_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hframes_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_hframes_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_hframes() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_hframes_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_rect() -> Rect2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rect_1639390495,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(from: __resPtr.pointee)
    }
}