import godot_native

fileprivate var __godot_name_TextLine: StringName! = nil

/// Holds a line of text.
/// 
/// Abstraction over [TextServer] for handling single line of text.
public class TextLine : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_TextLine }

    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_direction_1418190634: GDExtensionMethodBindPtr! = nil
    static var _method_get_direction_2516697328: GDExtensionMethodBindPtr! = nil
    static var _method_set_orientation_42823726: GDExtensionMethodBindPtr! = nil
    static var _method_get_orientation_175768116: GDExtensionMethodBindPtr! = nil
    static var _method_set_preserve_invalid_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_preserve_invalid_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_preserve_control_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_preserve_control_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_bidi_override_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_add_string_867188035: GDExtensionMethodBindPtr! = nil
    static var _method_add_object_735420116: GDExtensionMethodBindPtr! = nil
    static var _method_resize_object_960819067: GDExtensionMethodBindPtr! = nil
    static var _method_set_width_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_width_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_horizontal_alignment_2312603777: GDExtensionMethodBindPtr! = nil
    static var _method_get_horizontal_alignment_341400642: GDExtensionMethodBindPtr! = nil
    static var _method_tab_align_2899603908: GDExtensionMethodBindPtr! = nil
    static var _method_set_flags_2877345813: GDExtensionMethodBindPtr! = nil
    static var _method_get_flags_1583363614: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_overrun_behavior_1008890932: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_overrun_behavior_3779142101: GDExtensionMethodBindPtr! = nil
    static var _method_get_objects_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_get_object_rect_1742700391: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_rid_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_ascent_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_descent_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_width_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_underline_position_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_underline_thickness_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_draw_1164457837: GDExtensionMethodBindPtr! = nil
    static var _method_draw_outline_1364491366: GDExtensionMethodBindPtr! = nil
    static var _method_hit_test_2401831903: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_TextLine = StringName(from: "TextLine")

        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(TextLine._method_clear_3218959716 != nil)
        let _method_set_direction_1418190634_name = StringName(from: "set_direction")
        self._method_set_direction_1418190634 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_direction_1418190634_name._native_ptr(), 1418190634)
        assert(TextLine._method_set_direction_1418190634 != nil)
        let _method_get_direction_2516697328_name = StringName(from: "get_direction")
        self._method_get_direction_2516697328 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_direction_2516697328_name._native_ptr(), 2516697328)
        assert(TextLine._method_get_direction_2516697328 != nil)
        let _method_set_orientation_42823726_name = StringName(from: "set_orientation")
        self._method_set_orientation_42823726 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_orientation_42823726_name._native_ptr(), 42823726)
        assert(TextLine._method_set_orientation_42823726 != nil)
        let _method_get_orientation_175768116_name = StringName(from: "get_orientation")
        self._method_get_orientation_175768116 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_orientation_175768116_name._native_ptr(), 175768116)
        assert(TextLine._method_get_orientation_175768116 != nil)
        let _method_set_preserve_invalid_2586408642_name = StringName(from: "set_preserve_invalid")
        self._method_set_preserve_invalid_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_preserve_invalid_2586408642_name._native_ptr(), 2586408642)
        assert(TextLine._method_set_preserve_invalid_2586408642 != nil)
        let _method_get_preserve_invalid_36873697_name = StringName(from: "get_preserve_invalid")
        self._method_get_preserve_invalid_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_preserve_invalid_36873697_name._native_ptr(), 36873697)
        assert(TextLine._method_get_preserve_invalid_36873697 != nil)
        let _method_set_preserve_control_2586408642_name = StringName(from: "set_preserve_control")
        self._method_set_preserve_control_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_preserve_control_2586408642_name._native_ptr(), 2586408642)
        assert(TextLine._method_set_preserve_control_2586408642 != nil)
        let _method_get_preserve_control_36873697_name = StringName(from: "get_preserve_control")
        self._method_get_preserve_control_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_preserve_control_36873697_name._native_ptr(), 36873697)
        assert(TextLine._method_get_preserve_control_36873697 != nil)
        let _method_set_bidi_override_381264803_name = StringName(from: "set_bidi_override")
        self._method_set_bidi_override_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bidi_override_381264803_name._native_ptr(), 381264803)
        assert(TextLine._method_set_bidi_override_381264803 != nil)
        let _method_add_string_867188035_name = StringName(from: "add_string")
        self._method_add_string_867188035 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_string_867188035_name._native_ptr(), 867188035)
        assert(TextLine._method_add_string_867188035 != nil)
        let _method_add_object_735420116_name = StringName(from: "add_object")
        self._method_add_object_735420116 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_object_735420116_name._native_ptr(), 735420116)
        assert(TextLine._method_add_object_735420116 != nil)
        let _method_resize_object_960819067_name = StringName(from: "resize_object")
        self._method_resize_object_960819067 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_resize_object_960819067_name._native_ptr(), 960819067)
        assert(TextLine._method_resize_object_960819067 != nil)
        let _method_set_width_373806689_name = StringName(from: "set_width")
        self._method_set_width_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_width_373806689_name._native_ptr(), 373806689)
        assert(TextLine._method_set_width_373806689 != nil)
        let _method_get_width_1740695150_name = StringName(from: "get_width")
        self._method_get_width_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_width_1740695150_name._native_ptr(), 1740695150)
        assert(TextLine._method_get_width_1740695150 != nil)
        let _method_set_horizontal_alignment_2312603777_name = StringName(from: "set_horizontal_alignment")
        self._method_set_horizontal_alignment_2312603777 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_horizontal_alignment_2312603777_name._native_ptr(), 2312603777)
        assert(TextLine._method_set_horizontal_alignment_2312603777 != nil)
        let _method_get_horizontal_alignment_341400642_name = StringName(from: "get_horizontal_alignment")
        self._method_get_horizontal_alignment_341400642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_horizontal_alignment_341400642_name._native_ptr(), 341400642)
        assert(TextLine._method_get_horizontal_alignment_341400642 != nil)
        let _method_tab_align_2899603908_name = StringName(from: "tab_align")
        self._method_tab_align_2899603908 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_tab_align_2899603908_name._native_ptr(), 2899603908)
        assert(TextLine._method_tab_align_2899603908 != nil)
        let _method_set_flags_2877345813_name = StringName(from: "set_flags")
        self._method_set_flags_2877345813 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_flags_2877345813_name._native_ptr(), 2877345813)
        assert(TextLine._method_set_flags_2877345813 != nil)
        let _method_get_flags_1583363614_name = StringName(from: "get_flags")
        self._method_get_flags_1583363614 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_flags_1583363614_name._native_ptr(), 1583363614)
        assert(TextLine._method_get_flags_1583363614 != nil)
        let _method_set_text_overrun_behavior_1008890932_name = StringName(from: "set_text_overrun_behavior")
        self._method_set_text_overrun_behavior_1008890932 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_text_overrun_behavior_1008890932_name._native_ptr(), 1008890932)
        assert(TextLine._method_set_text_overrun_behavior_1008890932 != nil)
        let _method_get_text_overrun_behavior_3779142101_name = StringName(from: "get_text_overrun_behavior")
        self._method_get_text_overrun_behavior_3779142101 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_text_overrun_behavior_3779142101_name._native_ptr(), 3779142101)
        assert(TextLine._method_get_text_overrun_behavior_3779142101 != nil)
        let _method_get_objects_3995934104_name = StringName(from: "get_objects")
        self._method_get_objects_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_objects_3995934104_name._native_ptr(), 3995934104)
        assert(TextLine._method_get_objects_3995934104 != nil)
        let _method_get_object_rect_1742700391_name = StringName(from: "get_object_rect")
        self._method_get_object_rect_1742700391 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_object_rect_1742700391_name._native_ptr(), 1742700391)
        assert(TextLine._method_get_object_rect_1742700391 != nil)
        let _method_get_size_3341600327_name = StringName(from: "get_size")
        self._method_get_size_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_size_3341600327_name._native_ptr(), 3341600327)
        assert(TextLine._method_get_size_3341600327 != nil)
        let _method_get_rid_2944877500_name = StringName(from: "get_rid")
        self._method_get_rid_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rid_2944877500_name._native_ptr(), 2944877500)
        assert(TextLine._method_get_rid_2944877500 != nil)
        let _method_get_line_ascent_1740695150_name = StringName(from: "get_line_ascent")
        self._method_get_line_ascent_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_ascent_1740695150_name._native_ptr(), 1740695150)
        assert(TextLine._method_get_line_ascent_1740695150 != nil)
        let _method_get_line_descent_1740695150_name = StringName(from: "get_line_descent")
        self._method_get_line_descent_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_descent_1740695150_name._native_ptr(), 1740695150)
        assert(TextLine._method_get_line_descent_1740695150 != nil)
        let _method_get_line_width_1740695150_name = StringName(from: "get_line_width")
        self._method_get_line_width_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_width_1740695150_name._native_ptr(), 1740695150)
        assert(TextLine._method_get_line_width_1740695150 != nil)
        let _method_get_line_underline_position_1740695150_name = StringName(from: "get_line_underline_position")
        self._method_get_line_underline_position_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_underline_position_1740695150_name._native_ptr(), 1740695150)
        assert(TextLine._method_get_line_underline_position_1740695150 != nil)
        let _method_get_line_underline_thickness_1740695150_name = StringName(from: "get_line_underline_thickness")
        self._method_get_line_underline_thickness_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_underline_thickness_1740695150_name._native_ptr(), 1740695150)
        assert(TextLine._method_get_line_underline_thickness_1740695150 != nil)
        let _method_draw_1164457837_name = StringName(from: "draw")
        self._method_draw_1164457837 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_1164457837_name._native_ptr(), 1164457837)
        assert(TextLine._method_draw_1164457837 != nil)
        let _method_draw_outline_1364491366_name = StringName(from: "draw_outline")
        self._method_draw_outline_1364491366 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_outline_1364491366_name._native_ptr(), 1364491366)
        assert(TextLine._method_draw_outline_1364491366 != nil)
        let _method_hit_test_2401831903_name = StringName(from: "hit_test")
        self._method_hit_test_2401831903 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_hit_test_2401831903_name._native_ptr(), 2401831903)
        assert(TextLine._method_hit_test_2401831903 != nil)
    }

    public func clear()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_direction(direction: TextServer.Direction)  {
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(direction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_direction_1418190634,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_direction() -> TextServer.Direction {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_direction_2516697328,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.Direction(from: __resPtr.pointee)
    }
    public func set_orientation(orientation: TextServer.Orientation)  {
        withUnsafePointer(to: orientation.rawValue) { orientation_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(orientation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_orientation_42823726,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_orientation() -> TextServer.Orientation {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_orientation_175768116,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.Orientation(from: __resPtr.pointee)
    }
    public func set_preserve_invalid(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_preserve_invalid_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_preserve_invalid() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_preserve_invalid_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_preserve_control(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_preserve_control_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_preserve_control() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_preserve_control_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_bidi_override(override: Array)  {
        let override_native = override._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(override_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bidi_override_381264803,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_string(text: String, font: Font, font_size: Int64, language: String, meta: Variant) -> UInt8 {
        withUnsafePointer(to: language) { language_native in
        withUnsafePointer(to: font_size) { font_size_native in
        withUnsafePointer(to: text) { text_native in
        let meta_native = meta._native_ptr()
        let font_native = font._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native), .init(font_native), .init(font_size_native), .init(language_native), .init(meta_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_string_867188035,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
        }
        }
    }
    public func add_object(key: Variant, size: Vector2, inline_align: InlineAlignment, length: Int64, baseline: Float64) -> UInt8 {
        withUnsafePointer(to: baseline) { baseline_native in
        withUnsafePointer(to: length) { length_native in
        withUnsafePointer(to: inline_align.rawValue) { inline_align_native in
        let size_native = size._native_ptr()
        let key_native = key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(key_native), .init(size_native), .init(inline_align_native), .init(length_native), .init(baseline_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_object_735420116,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
        }
        }
    }
    public func resize_object(key: Variant, size: Vector2, inline_align: InlineAlignment, baseline: Float64) -> UInt8 {
        withUnsafePointer(to: baseline) { baseline_native in
        withUnsafePointer(to: inline_align.rawValue) { inline_align_native in
        let size_native = size._native_ptr()
        let key_native = key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(key_native), .init(size_native), .init(inline_align_native), .init(baseline_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_resize_object_960819067,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
        }
    }
    public func set_width(width: Float64)  {
        withUnsafePointer(to: width) { width_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(width_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_width_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_width() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_width_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_horizontal_alignment(alignment: HorizontalAlignment)  {
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(alignment_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_horizontal_alignment_2312603777,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_horizontal_alignment() -> HorizontalAlignment {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_horizontal_alignment_341400642,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return HorizontalAlignment(from: __resPtr.pointee)
    }
    public func tab_align(tab_stops: PackedFloat32Array)  {
        let tab_stops_native = tab_stops._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_stops_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tab_align_2899603908,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_flags(flags: TextServer.JustificationFlag)  {
        withUnsafePointer(to: flags.rawValue) { flags_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flags_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_flags_2877345813,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_flags() -> TextServer.JustificationFlag {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_flags_1583363614,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.JustificationFlag(from: __resPtr.pointee)
    }
    public func set_text_overrun_behavior(overrun_behavior: TextServer.OverrunBehavior)  {
        withUnsafePointer(to: overrun_behavior.rawValue) { overrun_behavior_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(overrun_behavior_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_text_overrun_behavior_1008890932,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_text_overrun_behavior() -> TextServer.OverrunBehavior {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_text_overrun_behavior_3779142101,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.OverrunBehavior(from: __resPtr.pointee)
    }
    public func get_objects() -> Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_objects_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(from: __resPtr.pointee)
    }
    public func get_object_rect(key: Variant) -> Rect2 {
        let key_native = key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(key_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_object_rect_1742700391,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(from: __resPtr.pointee)
    }
    public func get_size() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_size_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func get_rid() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rid_2944877500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func get_line_ascent() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_ascent_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func get_line_descent() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_descent_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func get_line_width() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_width_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func get_line_underline_position() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_underline_position_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func get_line_underline_thickness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_underline_thickness_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func draw(canvas: RID, pos: Vector2, color: Color)  {
        let color_native = color._native_ptr()
        let pos_native = pos._native_ptr()
        let canvas_native = canvas._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_native), .init(pos_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_draw_1164457837,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func draw_outline(canvas: RID, pos: Vector2, outline_size: Int64, color: Color)  {
        withUnsafePointer(to: outline_size) { outline_size_native in
        let color_native = color._native_ptr()
        let pos_native = pos._native_ptr()
        let canvas_native = canvas._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_native), .init(pos_native), .init(outline_size_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_draw_outline_1364491366,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func hit_test(coords: Float64) -> Int64 {
        withUnsafePointer(to: coords) { coords_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(coords_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_hit_test_2401831903,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
}