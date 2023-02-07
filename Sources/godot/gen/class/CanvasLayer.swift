import godot_native

fileprivate var __godot_name_CanvasLayer: StringName! = nil

/// Canvas drawing layer.
/// 
/// Canvas drawing layer. [CanvasItem] nodes that are direct or indirect children of a [CanvasLayer] will be drawn in that layer. The layer is a numeric index that defines the draw order. The default 2D scene renders with index 0, so a [CanvasLayer] with index -1 will be drawn below, and one with index 1 will be drawn above. This is very useful for HUDs (in layer 1+ or above), or backgrounds (in layer -1 or below).
///  
/// Embedded [Window]s are placed in layer 1024. CanvasItems in layer 1025 or above appear in front of embedded windows, CanvasItems in layer 1023 or below appear behind embedded windows.
public class CanvasLayer : Node {

    

    public override class var __godot_name: StringName { __godot_name_CanvasLayer }

    static var _method_set_layer_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_layer_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_visible_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_visible_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_show_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_hide_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_transform_2761652528: GDExtensionMethodBindPtr! = nil
    static var _method_get_transform_3814499831: GDExtensionMethodBindPtr! = nil
    static var _method_get_final_transform_3814499831: GDExtensionMethodBindPtr! = nil
    static var _method_set_offset_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_offset_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_rotation_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_rotation_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_scale_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_scale_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_follow_viewport_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_following_viewport_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_follow_viewport_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_follow_viewport_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_custom_viewport_1078189570: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_viewport_3160264692: GDExtensionMethodBindPtr! = nil
    static var _method_get_canvas_2944877500: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_CanvasLayer = StringName(from: "CanvasLayer")

        let _method_set_layer_1286410249_name = StringName(from: "set_layer")
        self._method_set_layer_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_layer_1286410249_name._native_ptr(), 1286410249)
        assert(CanvasLayer._method_set_layer_1286410249 != nil)
        let _method_get_layer_3905245786_name = StringName(from: "get_layer")
        self._method_get_layer_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_layer_3905245786_name._native_ptr(), 3905245786)
        assert(CanvasLayer._method_get_layer_3905245786 != nil)
        let _method_set_visible_2586408642_name = StringName(from: "set_visible")
        self._method_set_visible_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_visible_2586408642_name._native_ptr(), 2586408642)
        assert(CanvasLayer._method_set_visible_2586408642 != nil)
        let _method_is_visible_36873697_name = StringName(from: "is_visible")
        self._method_is_visible_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_visible_36873697_name._native_ptr(), 36873697)
        assert(CanvasLayer._method_is_visible_36873697 != nil)
        let _method_show_3218959716_name = StringName(from: "show")
        self._method_show_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_show_3218959716_name._native_ptr(), 3218959716)
        assert(CanvasLayer._method_show_3218959716 != nil)
        let _method_hide_3218959716_name = StringName(from: "hide")
        self._method_hide_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_hide_3218959716_name._native_ptr(), 3218959716)
        assert(CanvasLayer._method_hide_3218959716 != nil)
        let _method_set_transform_2761652528_name = StringName(from: "set_transform")
        self._method_set_transform_2761652528 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_transform_2761652528_name._native_ptr(), 2761652528)
        assert(CanvasLayer._method_set_transform_2761652528 != nil)
        let _method_get_transform_3814499831_name = StringName(from: "get_transform")
        self._method_get_transform_3814499831 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_transform_3814499831_name._native_ptr(), 3814499831)
        assert(CanvasLayer._method_get_transform_3814499831 != nil)
        let _method_get_final_transform_3814499831_name = StringName(from: "get_final_transform")
        self._method_get_final_transform_3814499831 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_final_transform_3814499831_name._native_ptr(), 3814499831)
        assert(CanvasLayer._method_get_final_transform_3814499831 != nil)
        let _method_set_offset_743155724_name = StringName(from: "set_offset")
        self._method_set_offset_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_offset_743155724_name._native_ptr(), 743155724)
        assert(CanvasLayer._method_set_offset_743155724 != nil)
        let _method_get_offset_3341600327_name = StringName(from: "get_offset")
        self._method_get_offset_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_offset_3341600327_name._native_ptr(), 3341600327)
        assert(CanvasLayer._method_get_offset_3341600327 != nil)
        let _method_set_rotation_373806689_name = StringName(from: "set_rotation")
        self._method_set_rotation_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_rotation_373806689_name._native_ptr(), 373806689)
        assert(CanvasLayer._method_set_rotation_373806689 != nil)
        let _method_get_rotation_1740695150_name = StringName(from: "get_rotation")
        self._method_get_rotation_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rotation_1740695150_name._native_ptr(), 1740695150)
        assert(CanvasLayer._method_get_rotation_1740695150 != nil)
        let _method_set_scale_743155724_name = StringName(from: "set_scale")
        self._method_set_scale_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_scale_743155724_name._native_ptr(), 743155724)
        assert(CanvasLayer._method_set_scale_743155724 != nil)
        let _method_get_scale_3341600327_name = StringName(from: "get_scale")
        self._method_get_scale_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_scale_3341600327_name._native_ptr(), 3341600327)
        assert(CanvasLayer._method_get_scale_3341600327 != nil)
        let _method_set_follow_viewport_2586408642_name = StringName(from: "set_follow_viewport")
        self._method_set_follow_viewport_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_follow_viewport_2586408642_name._native_ptr(), 2586408642)
        assert(CanvasLayer._method_set_follow_viewport_2586408642 != nil)
        let _method_is_following_viewport_36873697_name = StringName(from: "is_following_viewport")
        self._method_is_following_viewport_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_following_viewport_36873697_name._native_ptr(), 36873697)
        assert(CanvasLayer._method_is_following_viewport_36873697 != nil)
        let _method_set_follow_viewport_scale_373806689_name = StringName(from: "set_follow_viewport_scale")
        self._method_set_follow_viewport_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_follow_viewport_scale_373806689_name._native_ptr(), 373806689)
        assert(CanvasLayer._method_set_follow_viewport_scale_373806689 != nil)
        let _method_get_follow_viewport_scale_1740695150_name = StringName(from: "get_follow_viewport_scale")
        self._method_get_follow_viewport_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_follow_viewport_scale_1740695150_name._native_ptr(), 1740695150)
        assert(CanvasLayer._method_get_follow_viewport_scale_1740695150 != nil)
        let _method_set_custom_viewport_1078189570_name = StringName(from: "set_custom_viewport")
        self._method_set_custom_viewport_1078189570 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_custom_viewport_1078189570_name._native_ptr(), 1078189570)
        assert(CanvasLayer._method_set_custom_viewport_1078189570 != nil)
        let _method_get_custom_viewport_3160264692_name = StringName(from: "get_custom_viewport")
        self._method_get_custom_viewport_3160264692 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_custom_viewport_3160264692_name._native_ptr(), 3160264692)
        assert(CanvasLayer._method_get_custom_viewport_3160264692 != nil)
        let _method_get_canvas_2944877500_name = StringName(from: "get_canvas")
        self._method_get_canvas_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_canvas_2944877500_name._native_ptr(), 2944877500)
        assert(CanvasLayer._method_get_canvas_2944877500 != nil)
    }

    public func set_layer(layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_layer_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_layer() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_layer_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_visible(visible: UInt8)  {
        withUnsafePointer(to: visible) { visible_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(visible_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_visible_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_visible() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_visible_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func show()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_show_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func hide()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_hide_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_transform(transform: Transform2D)  {
        let transform_native = transform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_transform_2761652528,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_transform() -> Transform2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_transform_3814499831,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(from: __resPtr.pointee)
    }
    public func get_final_transform() -> Transform2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_final_transform_3814499831,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(from: __resPtr.pointee)
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
    public func set_rotation(radians: Float64)  {
        withUnsafePointer(to: radians) { radians_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radians_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_rotation_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_rotation() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rotation_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_scale(scale: Vector2)  {
        let scale_native = scale._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_scale_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_scale() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_scale_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_follow_viewport(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_follow_viewport_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_following_viewport() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_following_viewport_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_follow_viewport_scale(scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_follow_viewport_scale_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_follow_viewport_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_follow_viewport_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_custom_viewport(viewport: Node)  {
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_viewport_1078189570,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_custom_viewport() -> Node {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_viewport_3160264692,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(from: __resPtr.pointee)
    }
    public func get_canvas() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_canvas_2944877500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
}