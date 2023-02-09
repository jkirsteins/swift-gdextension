import godot_native

fileprivate var __godot_name_XRInterfaceExtension: StringName! = nil

/// Base class for XR interface extensions (plugins).
/// 
/// External XR interface plugins should inherit from this class.
open class XRInterfaceExtension : XRInterface {

    

    public override class var __godot_name: StringName { __godot_name_XRInterfaceExtension }

    static var _method__get_name_0: StringName! = nil
    static var _method__get_capabilities_0: StringName! = nil
    static var _method__is_initialized_0: StringName! = nil
    static var _method__initialize_0: StringName! = nil
    static var _method__uninitialize_0: StringName! = nil
    static var _method__supports_play_area_mode_0: StringName! = nil
    static var _method__get_play_area_mode_0: StringName! = nil
    static var _method__set_play_area_mode_0: StringName! = nil
    static var _method__get_play_area_0: StringName! = nil
    static var _method__get_render_target_size_0: StringName! = nil
    static var _method__get_view_count_0: StringName! = nil
    static var _method__get_camera_transform_0: StringName! = nil
    static var _method__get_transform_for_view_0: StringName! = nil
    static var _method__get_projection_for_view_0: StringName! = nil
    static var _method__get_vrs_texture_0: StringName! = nil
    static var _method__process_0: StringName! = nil
    static var _method__pre_render_0: StringName! = nil
    static var _method__pre_draw_viewport_0: StringName! = nil
    static var _method__post_draw_viewport_0: StringName! = nil
    static var _method__end_frame_0: StringName! = nil
    static var _method__get_suggested_tracker_names_0: StringName! = nil
    static var _method__get_suggested_pose_names_0: StringName! = nil
    static var _method__get_tracking_status_0: StringName! = nil
    static var _method__trigger_haptic_pulse_0: StringName! = nil
    static var _method__get_anchor_detection_is_enabled_0: StringName! = nil
    static var _method__set_anchor_detection_is_enabled_0: StringName! = nil
    static var _method__get_camera_feed_id_0: StringName! = nil
    static var _method__get_color_texture_0: StringName! = nil
    static var _method__get_depth_texture_0: StringName! = nil
    static var _method__get_velocity_texture_0: StringName! = nil
    static var _method_get_color_texture_529393457: StringName! = nil
    static var _method_get_depth_texture_529393457: StringName! = nil
    static var _method_get_velocity_texture_529393457: StringName! = nil
    static var _method_add_blit_258596971: StringName! = nil
    static var _method_get_render_target_texture_41030802: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_XRInterfaceExtension == nil)
        __godot_name_XRInterfaceExtension = StringName(from: "XRInterfaceExtension")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_color_texture_529393457 = StringName(from: "get_color_texture")
        assert(self._method_get_color_texture_529393457 != nil)
        self._method_get_depth_texture_529393457 = StringName(from: "get_depth_texture")
        assert(self._method_get_depth_texture_529393457 != nil)
        self._method_get_velocity_texture_529393457 = StringName(from: "get_velocity_texture")
        assert(self._method_get_velocity_texture_529393457 != nil)
        self._method_add_blit_258596971 = StringName(from: "add_blit")
        assert(self._method_add_blit_258596971 != nil)
        self._method_get_render_target_texture_41030802 = StringName(from: "get_render_target_texture")
        assert(self._method_get_render_target_texture_41030802 != nil)
    }

    public func _get_name() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return StringName(godot: __resPtr.pointee)
    }
    public func _get_capabilities() -> Int64 {
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
    public func _is_initialized() -> UInt8 {
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
    public func _initialize() -> UInt8 {
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
    public func _uninitialize()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _supports_play_area_mode(mode: XRInterface.PlayAreaMode) -> UInt8 {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func _get_play_area_mode() -> XRInterface.PlayAreaMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return XRInterface.PlayAreaMode(godot: __resPtr.pointee)
    }
    public func _set_play_area_mode(mode: XRInterface.PlayAreaMode) -> UInt8 {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func _get_play_area() -> PackedVector3Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return PackedVector3Array(godot: __resPtr.pointee)
    }
    public func _get_render_target_size() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return Vector2(godot: __resPtr.pointee)
    }
    public func _get_view_count() -> Int64 {
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
    public func _get_camera_transform() -> Transform3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return Transform3D(godot: __resPtr.pointee)
    }
    public func _get_transform_for_view(view: Int64, cam_transform: Transform3D) -> Transform3D {
        withUnsafePointer(to: view) { view_native in
        let cam_transform_native = cam_transform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(view_native), .init(cam_transform_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return Transform3D(godot: __resPtr.pointee)
        }
    }
    public func _get_projection_for_view(view: Int64, aspect: Float64, z_near: Float64, z_far: Float64) -> PackedFloat64Array {
        withUnsafePointer(to: z_far) { z_far_native in
        withUnsafePointer(to: z_near) { z_near_native in
        withUnsafePointer(to: aspect) { aspect_native in
        withUnsafePointer(to: view) { view_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(view_native), .init(aspect_native), .init(z_near_native), .init(z_far_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return PackedFloat64Array(godot: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func _get_vrs_texture() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return RID(godot: __resPtr.pointee)
    }
    public func _process()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _pre_render()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _pre_draw_viewport(render_target: RID) -> UInt8 {
        let render_target_native = render_target._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(render_target_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _post_draw_viewport(render_target: RID, screen_rect: Rect2)  {
        let screen_rect_native = screen_rect._native_ptr()
        let render_target_native = render_target._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(render_target_native), .init(screen_rect_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _end_frame()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _get_suggested_tracker_names() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func _get_suggested_pose_names(tracker_name: StringName) -> PackedStringArray {
        let tracker_name_native = tracker_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tracker_name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func _get_tracking_status() -> XRInterface.TrackingStatus {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return XRInterface.TrackingStatus(godot: __resPtr.pointee)
    }
    public func _trigger_haptic_pulse(action_name: godot.String, tracker_name: StringName, frequency: Float64, amplitude: Float64, duration_sec: Float64, delay_sec: Float64)  {
        withUnsafePointer(to: delay_sec) { delay_sec_native in
        withUnsafePointer(to: duration_sec) { duration_sec_native in
        withUnsafePointer(to: amplitude) { amplitude_native in
        withUnsafePointer(to: frequency) { frequency_native in
        let tracker_name_native = tracker_name._native_ptr()
        let action_name_native = action_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_name_native), .init(tracker_name_native), .init(frequency_native), .init(amplitude_native), .init(duration_sec_native), .init(delay_sec_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
        }
        }
        }
    }
    public func _get_anchor_detection_is_enabled() -> UInt8 {
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
    public func _set_anchor_detection_is_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
    }
    public func _get_camera_feed_id() -> Int64 {
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
    public func _get_color_texture() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return RID(godot: __resPtr.pointee)
    }
    public func _get_depth_texture() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return RID(godot: __resPtr.pointee)
    }
    public func _get_velocity_texture() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return RID(godot: __resPtr.pointee)
    }
    public func get_color_texture() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_color_texture_529393457._native_ptr(),
                    529393457)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func get_depth_texture() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_depth_texture_529393457._native_ptr(),
                    529393457)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func get_velocity_texture() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_velocity_texture_529393457._native_ptr(),
                    529393457)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func add_blit(render_target: RID, src_rect: Rect2, dst_rect: Rect2i, use_layer: UInt8, layer: Int64, apply_lens_distortion: UInt8, eye_center: Vector2, k1: Float64, k2: Float64, upscale: Float64, aspect_ratio: Float64)  {
        withUnsafePointer(to: aspect_ratio) { aspect_ratio_native in
        withUnsafePointer(to: upscale) { upscale_native in
        withUnsafePointer(to: k2) { k2_native in
        withUnsafePointer(to: k1) { k1_native in
        withUnsafePointer(to: apply_lens_distortion) { apply_lens_distortion_native in
        withUnsafePointer(to: layer) { layer_native in
        withUnsafePointer(to: use_layer) { use_layer_native in
        let eye_center_native = eye_center._native_ptr()
        let dst_rect_native = dst_rect._native_ptr()
        let src_rect_native = src_rect._native_ptr()
        let render_target_native = render_target._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 11)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(render_target_native), .init(src_rect_native), .init(dst_rect_native), .init(use_layer_native), .init(layer_native), .init(apply_lens_distortion_native), .init(eye_center_native), .init(k1_native), .init(k2_native), .init(upscale_native), .init(aspect_ratio_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_blit_258596971._native_ptr(),
                    258596971)
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
        }
        }
        }
        }
    }
    public func get_render_target_texture(render_target: RID) -> RID {
        let render_target_native = render_target._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(render_target_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_render_target_texture_41030802._native_ptr(),
                    41030802)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
}