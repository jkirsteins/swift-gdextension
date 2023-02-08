import godot_native

fileprivate var __godot_name_StyleBox: StringName! = nil

/// Base class for drawing stylized boxes for the UI.
/// 
/// StyleBox is [Resource] that provides an abstract base class for drawing stylized boxes for the UI. StyleBoxes are used for drawing the styles of buttons, line edit backgrounds, tree backgrounds, etc. and also for testing a transparency mask for pointer signals. If mask test fails on a StyleBox assigned as mask to a control, clicks and motion signals will go through it to the one below.
///  
/// [b]Note:[/b] For children of [Control] that have [i]Theme Properties[/i], the [code]focus[/code] [StyleBox] is displayed over the [code]normal[/code], [code]hover[/code] or [code]pressed[/code] [StyleBox]. This makes the [code]focus[/code] [StyleBox] more reusable across different nodes.
open class StyleBox : Resource {

    

    public override class var __godot_name: StringName { __godot_name_StyleBox }

    static var _method__draw_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_draw_rect_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_minimum_size_0: GDExtensionMethodBindPtr! = nil
    static var _method__test_mask_0: GDExtensionMethodBindPtr! = nil
    static var _method_get_minimum_size_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_content_margin_4290182280: GDExtensionMethodBindPtr! = nil
    static var _method_set_content_margin_all_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_content_margin_2869120046: GDExtensionMethodBindPtr! = nil
    static var _method_get_margin_2869120046: GDExtensionMethodBindPtr! = nil
    static var _method_get_offset_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_draw_2275962004: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_item_drawn_3213695180: GDExtensionMethodBindPtr! = nil
    static var _method_test_mask_3735564539: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_StyleBox = StringName(from: "StyleBox")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_minimum_size_3341600327_name = StringName(from: "get_minimum_size")
        self._method_get_minimum_size_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_StyleBox._native_ptr(), _method_get_minimum_size_3341600327_name._native_ptr(), 3341600327)
        assert(StyleBox._method_get_minimum_size_3341600327 != nil)
        let _method_set_content_margin_4290182280_name = StringName(from: "set_content_margin")
        self._method_set_content_margin_4290182280 = self.interface.pointee.classdb_get_method_bind(__godot_name_StyleBox._native_ptr(), _method_set_content_margin_4290182280_name._native_ptr(), 4290182280)
        assert(StyleBox._method_set_content_margin_4290182280 != nil)
        let _method_set_content_margin_all_373806689_name = StringName(from: "set_content_margin_all")
        self._method_set_content_margin_all_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_StyleBox._native_ptr(), _method_set_content_margin_all_373806689_name._native_ptr(), 373806689)
        assert(StyleBox._method_set_content_margin_all_373806689 != nil)
        let _method_get_content_margin_2869120046_name = StringName(from: "get_content_margin")
        self._method_get_content_margin_2869120046 = self.interface.pointee.classdb_get_method_bind(__godot_name_StyleBox._native_ptr(), _method_get_content_margin_2869120046_name._native_ptr(), 2869120046)
        assert(StyleBox._method_get_content_margin_2869120046 != nil)
        let _method_get_margin_2869120046_name = StringName(from: "get_margin")
        self._method_get_margin_2869120046 = self.interface.pointee.classdb_get_method_bind(__godot_name_StyleBox._native_ptr(), _method_get_margin_2869120046_name._native_ptr(), 2869120046)
        assert(StyleBox._method_get_margin_2869120046 != nil)
        let _method_get_offset_3341600327_name = StringName(from: "get_offset")
        self._method_get_offset_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_StyleBox._native_ptr(), _method_get_offset_3341600327_name._native_ptr(), 3341600327)
        assert(StyleBox._method_get_offset_3341600327 != nil)
        let _method_draw_2275962004_name = StringName(from: "draw")
        self._method_draw_2275962004 = self.interface.pointee.classdb_get_method_bind(__godot_name_StyleBox._native_ptr(), _method_draw_2275962004_name._native_ptr(), 2275962004)
        assert(StyleBox._method_draw_2275962004 != nil)
        let _method_get_current_item_drawn_3213695180_name = StringName(from: "get_current_item_drawn")
        self._method_get_current_item_drawn_3213695180 = self.interface.pointee.classdb_get_method_bind(__godot_name_StyleBox._native_ptr(), _method_get_current_item_drawn_3213695180_name._native_ptr(), 3213695180)
        assert(StyleBox._method_get_current_item_drawn_3213695180 != nil)
        let _method_test_mask_3735564539_name = StringName(from: "test_mask")
        self._method_test_mask_3735564539 = self.interface.pointee.classdb_get_method_bind(__godot_name_StyleBox._native_ptr(), _method_test_mask_3735564539_name._native_ptr(), 3735564539)
        assert(StyleBox._method_test_mask_3735564539 != nil)
    }

    public func _draw(to_canvas_item: RID, rect: Rect2)  {
        let rect_native = rect._native_ptr()
        let to_canvas_item_native = to_canvas_item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_canvas_item_native), .init(rect_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__draw_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _get_draw_rect(rect: Rect2) -> Rect2 {
        let rect_native = rect._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rect_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_draw_rect_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(godot: __resPtr.pointee)
    }
    public func _get_minimum_size() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_minimum_size_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func _test_mask(point: Vector2, rect: Rect2) -> UInt8 {
        let rect_native = rect._native_ptr()
        let point_native = point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native), .init(rect_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__test_mask_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_minimum_size() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_minimum_size_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_content_margin(margin: Side, offset: Float64)  {
        withUnsafePointer(to: offset) { offset_native in
        withUnsafePointer(to: margin.rawValue) { margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_native), .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_content_margin_4290182280,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_content_margin_all(offset: Float64)  {
        withUnsafePointer(to: offset) { offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_content_margin_all_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_content_margin(margin: Side) -> Float64 {
        withUnsafePointer(to: margin.rawValue) { margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_content_margin_2869120046,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func get_margin(margin: Side) -> Float64 {
        withUnsafePointer(to: margin.rawValue) { margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_margin_2869120046,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
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
            return Vector2(godot: __resPtr.pointee)
    }
    public func draw(canvas_item: RID, rect: Rect2)  {
        let rect_native = rect._native_ptr()
        let canvas_item_native = canvas_item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_item_native), .init(rect_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_draw_2275962004,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_current_item_drawn() -> CanvasItem {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_item_drawn_3213695180,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CanvasItem(godot: __resPtr.pointee)
    }
    public func test_mask(point: Vector2, rect: Rect2) -> UInt8 {
        let rect_native = rect._native_ptr()
        let point_native = point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native), .init(rect_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_test_mask_3735564539,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}