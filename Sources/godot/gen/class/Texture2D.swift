import godot_native

fileprivate var __godot_name_Texture2D: StringName! = nil

/// Texture for 2D and 3D.
/// 
/// A texture works by registering an image in the video hardware, which then can be used in 3D models or 2D [Sprite2D] or GUI [Control].
///  
/// Textures are often created by loading them from a file. See [method @GDScript.load].
///  
/// [Texture2D] is a base for other resources. It cannot be used directly.
///  
/// [b]Note:[/b] The maximum texture size is 16384×16384 pixels due to graphics hardware limitations. Larger textures may fail to import.
open class Texture2D : Texture {

    

    public override class var __godot_name: StringName { __godot_name_Texture2D }

    static var _method__get_width_0: StringName! = nil
    static var _method__get_height_0: StringName! = nil
    static var _method__is_pixel_opaque_0: StringName! = nil
    static var _method__has_alpha_0: StringName! = nil
    static var _method__draw_0: StringName! = nil
    static var _method__draw_rect_0: StringName! = nil
    static var _method__draw_rect_region_0: StringName! = nil
    static var _method_get_width_3905245786: StringName! = nil
    static var _method_get_height_3905245786: StringName! = nil
    static var _method_get_size_3341600327: StringName! = nil
    static var _method_has_alpha_36873697: StringName! = nil
    static var _method_draw_1115460088: StringName! = nil
    static var _method_draw_rect_575156982: StringName! = nil
    static var _method_draw_rect_region_1066564656: StringName! = nil
    static var _method_get_image_4190603485: StringName! = nil
    static var _method_create_placeholder_121922552: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Texture2D == nil)
        __godot_name_Texture2D = StringName(from: "Texture2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_width_3905245786 = StringName(from: "get_width")
        assert(self._method_get_width_3905245786 != nil)
        self._method_get_height_3905245786 = StringName(from: "get_height")
        assert(self._method_get_height_3905245786 != nil)
        self._method_get_size_3341600327 = StringName(from: "get_size")
        assert(self._method_get_size_3341600327 != nil)
        self._method_has_alpha_36873697 = StringName(from: "has_alpha")
        assert(self._method_has_alpha_36873697 != nil)
        self._method_draw_1115460088 = StringName(from: "draw")
        assert(self._method_draw_1115460088 != nil)
        self._method_draw_rect_575156982 = StringName(from: "draw_rect")
        assert(self._method_draw_rect_575156982 != nil)
        self._method_draw_rect_region_1066564656 = StringName(from: "draw_rect_region")
        assert(self._method_draw_rect_region_1066564656 != nil)
        self._method_get_image_4190603485 = StringName(from: "get_image")
        assert(self._method_get_image_4190603485 != nil)
        self._method_create_placeholder_121922552 = StringName(from: "create_placeholder")
        assert(self._method_create_placeholder_121922552 != nil)
    }

    public func _get_width() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return Int64(godot: __resPtr.pointee)
    }
    public func _get_height() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return Int64(godot: __resPtr.pointee)
    }
    public func _is_pixel_opaque(x: Int64, y: Int64) -> UInt8 {
        withUnsafePointer(to: y) { y_native in
        withUnsafePointer(to: x) { x_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(x_native), .init(y_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
        }
        }
    }
    public func _has_alpha() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _draw(to_canvas_item: RID, pos: Vector2, modulate: Color, transpose: UInt8)  {
        withUnsafePointer(to: transpose) { transpose_native in
        let modulate_native = modulate._native_ptr()
        let pos_native = pos._native_ptr()
        let to_canvas_item_native = to_canvas_item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_canvas_item_native), .init(pos_native), .init(modulate_native), .init(transpose_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
    }
    public func _draw_rect(to_canvas_item: RID, rect: Rect2, tile: UInt8, modulate: Color, transpose: UInt8)  {
        withUnsafePointer(to: transpose) { transpose_native in
        withUnsafePointer(to: tile) { tile_native in
        let modulate_native = modulate._native_ptr()
        let rect_native = rect._native_ptr()
        let to_canvas_item_native = to_canvas_item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_canvas_item_native), .init(rect_native), .init(tile_native), .init(modulate_native), .init(transpose_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
        }
    }
    public func _draw_rect_region(to_canvas_item: RID, rect: Rect2, src_rect: Rect2, modulate: Color, transpose: UInt8, clip_uv: UInt8)  {
        withUnsafePointer(to: clip_uv) { clip_uv_native in
        withUnsafePointer(to: transpose) { transpose_native in
        let modulate_native = modulate._native_ptr()
        let src_rect_native = src_rect._native_ptr()
        let rect_native = rect._native_ptr()
        let to_canvas_item_native = to_canvas_item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_canvas_item_native), .init(rect_native), .init(src_rect_native), .init(modulate_native), .init(transpose_native), .init(clip_uv_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
        }
    }
    public func get_width() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_width_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_height() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_height_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_size() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_size_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func has_alpha() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_alpha_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func draw(canvas_item: RID, position: Vector2, modulate: Color, transpose: UInt8)  {
        withUnsafePointer(to: transpose) { transpose_native in
        let modulate_native = modulate._native_ptr()
        let position_native = position._native_ptr()
        let canvas_item_native = canvas_item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_item_native), .init(position_native), .init(modulate_native), .init(transpose_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_1115460088._native_ptr(),
                    1115460088)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func draw_rect(canvas_item: RID, rect: Rect2, tile: UInt8, modulate: Color, transpose: UInt8)  {
        withUnsafePointer(to: transpose) { transpose_native in
        withUnsafePointer(to: tile) { tile_native in
        let modulate_native = modulate._native_ptr()
        let rect_native = rect._native_ptr()
        let canvas_item_native = canvas_item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_item_native), .init(rect_native), .init(tile_native), .init(modulate_native), .init(transpose_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_rect_575156982._native_ptr(),
                    575156982)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func draw_rect_region(canvas_item: RID, rect: Rect2, src_rect: Rect2, modulate: Color, transpose: UInt8, clip_uv: UInt8)  {
        withUnsafePointer(to: clip_uv) { clip_uv_native in
        withUnsafePointer(to: transpose) { transpose_native in
        let modulate_native = modulate._native_ptr()
        let src_rect_native = src_rect._native_ptr()
        let rect_native = rect._native_ptr()
        let canvas_item_native = canvas_item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_item_native), .init(rect_native), .init(src_rect_native), .init(modulate_native), .init(transpose_native), .init(clip_uv_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_rect_region_1066564656._native_ptr(),
                    1066564656)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_image() -> Image {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_image_4190603485._native_ptr(),
                    4190603485)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image(godot: __resPtr.pointee)
    }
    public func create_placeholder() -> Resource {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_placeholder_121922552._native_ptr(),
                    121922552)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Resource(godot: __resPtr.pointee)
    }
}