import godot_native

fileprivate var __godot_name_ParallaxBackground: StringName! = nil

/// A node used to create a parallax scrolling background.
/// 
/// A ParallaxBackground uses one or more [ParallaxLayer] child nodes to create a parallax effect. Each [ParallaxLayer] can move at a different speed using [member ParallaxLayer.motion_offset]. This creates an illusion of depth in a 2D game. If not used with a [Camera2D], you must manually calculate the [member scroll_offset].
public class ParallaxBackground : CanvasLayer {

    

    public override class var __godot_name: StringName { __godot_name_ParallaxBackground }

    static var _method_set_scroll_offset_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_scroll_offset_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_scroll_base_offset_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_scroll_base_offset_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_scroll_base_scale_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_scroll_base_scale_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_limit_begin_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_limit_begin_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_limit_end_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_limit_end_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_ignore_camera_zoom_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_ignore_camera_zoom_2240911060: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_ParallaxBackground = StringName(from: "ParallaxBackground")

        let _method_set_scroll_offset_743155724_name = StringName(from: "set_scroll_offset")
        self._method_set_scroll_offset_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_scroll_offset_743155724_name._native_ptr(), 743155724)
        assert(ParallaxBackground._method_set_scroll_offset_743155724 != nil)
        let _method_get_scroll_offset_3341600327_name = StringName(from: "get_scroll_offset")
        self._method_get_scroll_offset_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_scroll_offset_3341600327_name._native_ptr(), 3341600327)
        assert(ParallaxBackground._method_get_scroll_offset_3341600327 != nil)
        let _method_set_scroll_base_offset_743155724_name = StringName(from: "set_scroll_base_offset")
        self._method_set_scroll_base_offset_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_scroll_base_offset_743155724_name._native_ptr(), 743155724)
        assert(ParallaxBackground._method_set_scroll_base_offset_743155724 != nil)
        let _method_get_scroll_base_offset_3341600327_name = StringName(from: "get_scroll_base_offset")
        self._method_get_scroll_base_offset_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_scroll_base_offset_3341600327_name._native_ptr(), 3341600327)
        assert(ParallaxBackground._method_get_scroll_base_offset_3341600327 != nil)
        let _method_set_scroll_base_scale_743155724_name = StringName(from: "set_scroll_base_scale")
        self._method_set_scroll_base_scale_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_scroll_base_scale_743155724_name._native_ptr(), 743155724)
        assert(ParallaxBackground._method_set_scroll_base_scale_743155724 != nil)
        let _method_get_scroll_base_scale_3341600327_name = StringName(from: "get_scroll_base_scale")
        self._method_get_scroll_base_scale_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_scroll_base_scale_3341600327_name._native_ptr(), 3341600327)
        assert(ParallaxBackground._method_get_scroll_base_scale_3341600327 != nil)
        let _method_set_limit_begin_743155724_name = StringName(from: "set_limit_begin")
        self._method_set_limit_begin_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_limit_begin_743155724_name._native_ptr(), 743155724)
        assert(ParallaxBackground._method_set_limit_begin_743155724 != nil)
        let _method_get_limit_begin_3341600327_name = StringName(from: "get_limit_begin")
        self._method_get_limit_begin_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_limit_begin_3341600327_name._native_ptr(), 3341600327)
        assert(ParallaxBackground._method_get_limit_begin_3341600327 != nil)
        let _method_set_limit_end_743155724_name = StringName(from: "set_limit_end")
        self._method_set_limit_end_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_limit_end_743155724_name._native_ptr(), 743155724)
        assert(ParallaxBackground._method_set_limit_end_743155724 != nil)
        let _method_get_limit_end_3341600327_name = StringName(from: "get_limit_end")
        self._method_get_limit_end_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_limit_end_3341600327_name._native_ptr(), 3341600327)
        assert(ParallaxBackground._method_get_limit_end_3341600327 != nil)
        let _method_set_ignore_camera_zoom_2586408642_name = StringName(from: "set_ignore_camera_zoom")
        self._method_set_ignore_camera_zoom_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ignore_camera_zoom_2586408642_name._native_ptr(), 2586408642)
        assert(ParallaxBackground._method_set_ignore_camera_zoom_2586408642 != nil)
        let _method_is_ignore_camera_zoom_2240911060_name = StringName(from: "is_ignore_camera_zoom")
        self._method_is_ignore_camera_zoom_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_ignore_camera_zoom_2240911060_name._native_ptr(), 2240911060)
        assert(ParallaxBackground._method_is_ignore_camera_zoom_2240911060 != nil)
    }

    public func set_scroll_offset(offset: Vector2)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_scroll_offset_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_scroll_offset() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_scroll_offset_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_scroll_base_offset(offset: Vector2)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_scroll_base_offset_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_scroll_base_offset() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_scroll_base_offset_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_scroll_base_scale(scale: Vector2)  {
        let scale_native = scale._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_scroll_base_scale_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_scroll_base_scale() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_scroll_base_scale_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_limit_begin(offset: Vector2)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_limit_begin_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_limit_begin() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_limit_begin_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_limit_end(offset: Vector2)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_limit_end_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_limit_end() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_limit_end_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_ignore_camera_zoom(ignore: UInt8)  {
        withUnsafePointer(to: ignore) { ignore_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ignore_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ignore_camera_zoom_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_ignore_camera_zoom() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_ignore_camera_zoom_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}