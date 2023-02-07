import godot_native

fileprivate var __godot_name_Label: StringName! = nil

/// Displays plain text in a line or wrapped inside a rectangle. For formatted text, use [RichTextLabel].
/// 
/// Label displays plain text on the screen. It gives you control over the horizontal and vertical alignment and can wrap the text inside the node's bounding rectangle. It doesn't support bold, italics, or other formatting. For that, use [RichTextLabel] instead.
///  
/// [b]Note:[/b] Contrarily to most other [Control]s, Label's [member Control.mouse_filter] defaults to [constant Control.MOUSE_FILTER_IGNORE] (i.e. it doesn't react to mouse input events). This implies that a label won't display any configured [member Control.tooltip_text], unless you change its mouse filter.
public class Label : Control {

    

    public override class var __godot_name: StringName { __godot_name_Label }

    static var _method_set_horizontal_alignment_2312603777: GDExtensionMethodBindPtr! = nil
    static var _method_get_horizontal_alignment_341400642: GDExtensionMethodBindPtr! = nil
    static var _method_set_vertical_alignment_1796458609: GDExtensionMethodBindPtr! = nil
    static var _method_get_vertical_alignment_3274884059: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_label_settings_1030653839: GDExtensionMethodBindPtr! = nil
    static var _method_get_label_settings_826676056: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_direction_119160795: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_direction_797257663: GDExtensionMethodBindPtr! = nil
    static var _method_set_language_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_language_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_autowrap_mode_3289138044: GDExtensionMethodBindPtr! = nil
    static var _method_get_autowrap_mode_1549071663: GDExtensionMethodBindPtr! = nil
    static var _method_set_clip_text_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_clipping_text_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_overrun_behavior_1008890932: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_overrun_behavior_3779142101: GDExtensionMethodBindPtr! = nil
    static var _method_set_uppercase_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_uppercase_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_height_181039630: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_visible_line_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_total_character_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_visible_characters_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_visible_characters_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_visible_characters_behavior_258789322: GDExtensionMethodBindPtr! = nil
    static var _method_set_visible_characters_behavior_3383839701: GDExtensionMethodBindPtr! = nil
    static var _method_set_visible_ratio_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_visible_ratio_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_lines_skipped_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_lines_skipped_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_lines_visible_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_lines_visible_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_structured_text_bidi_override_55961453: GDExtensionMethodBindPtr! = nil
    static var _method_get_structured_text_bidi_override_3385126229: GDExtensionMethodBindPtr! = nil
    static var _method_set_structured_text_bidi_override_options_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_get_structured_text_bidi_override_options_3995934104: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Label = StringName(from: "Label")

        let _method_set_horizontal_alignment_2312603777_name = StringName(from: "set_horizontal_alignment")
        self._method_set_horizontal_alignment_2312603777 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_horizontal_alignment_2312603777_name._native_ptr(), 2312603777)
        assert(Label._method_set_horizontal_alignment_2312603777 != nil)
        let _method_get_horizontal_alignment_341400642_name = StringName(from: "get_horizontal_alignment")
        self._method_get_horizontal_alignment_341400642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_horizontal_alignment_341400642_name._native_ptr(), 341400642)
        assert(Label._method_get_horizontal_alignment_341400642 != nil)
        let _method_set_vertical_alignment_1796458609_name = StringName(from: "set_vertical_alignment")
        self._method_set_vertical_alignment_1796458609 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_vertical_alignment_1796458609_name._native_ptr(), 1796458609)
        assert(Label._method_set_vertical_alignment_1796458609 != nil)
        let _method_get_vertical_alignment_3274884059_name = StringName(from: "get_vertical_alignment")
        self._method_get_vertical_alignment_3274884059 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_vertical_alignment_3274884059_name._native_ptr(), 3274884059)
        assert(Label._method_get_vertical_alignment_3274884059 != nil)
        let _method_set_text_83702148_name = StringName(from: "set_text")
        self._method_set_text_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_text_83702148_name._native_ptr(), 83702148)
        assert(Label._method_set_text_83702148 != nil)
        let _method_get_text_201670096_name = StringName(from: "get_text")
        self._method_get_text_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_text_201670096_name._native_ptr(), 201670096)
        assert(Label._method_get_text_201670096 != nil)
        let _method_set_label_settings_1030653839_name = StringName(from: "set_label_settings")
        self._method_set_label_settings_1030653839 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_label_settings_1030653839_name._native_ptr(), 1030653839)
        assert(Label._method_set_label_settings_1030653839 != nil)
        let _method_get_label_settings_826676056_name = StringName(from: "get_label_settings")
        self._method_get_label_settings_826676056 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_label_settings_826676056_name._native_ptr(), 826676056)
        assert(Label._method_get_label_settings_826676056 != nil)
        let _method_set_text_direction_119160795_name = StringName(from: "set_text_direction")
        self._method_set_text_direction_119160795 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_text_direction_119160795_name._native_ptr(), 119160795)
        assert(Label._method_set_text_direction_119160795 != nil)
        let _method_get_text_direction_797257663_name = StringName(from: "get_text_direction")
        self._method_get_text_direction_797257663 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_text_direction_797257663_name._native_ptr(), 797257663)
        assert(Label._method_get_text_direction_797257663 != nil)
        let _method_set_language_83702148_name = StringName(from: "set_language")
        self._method_set_language_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_language_83702148_name._native_ptr(), 83702148)
        assert(Label._method_set_language_83702148 != nil)
        let _method_get_language_201670096_name = StringName(from: "get_language")
        self._method_get_language_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_language_201670096_name._native_ptr(), 201670096)
        assert(Label._method_get_language_201670096 != nil)
        let _method_set_autowrap_mode_3289138044_name = StringName(from: "set_autowrap_mode")
        self._method_set_autowrap_mode_3289138044 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_autowrap_mode_3289138044_name._native_ptr(), 3289138044)
        assert(Label._method_set_autowrap_mode_3289138044 != nil)
        let _method_get_autowrap_mode_1549071663_name = StringName(from: "get_autowrap_mode")
        self._method_get_autowrap_mode_1549071663 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_autowrap_mode_1549071663_name._native_ptr(), 1549071663)
        assert(Label._method_get_autowrap_mode_1549071663 != nil)
        let _method_set_clip_text_2586408642_name = StringName(from: "set_clip_text")
        self._method_set_clip_text_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_clip_text_2586408642_name._native_ptr(), 2586408642)
        assert(Label._method_set_clip_text_2586408642 != nil)
        let _method_is_clipping_text_36873697_name = StringName(from: "is_clipping_text")
        self._method_is_clipping_text_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_clipping_text_36873697_name._native_ptr(), 36873697)
        assert(Label._method_is_clipping_text_36873697 != nil)
        let _method_set_text_overrun_behavior_1008890932_name = StringName(from: "set_text_overrun_behavior")
        self._method_set_text_overrun_behavior_1008890932 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_text_overrun_behavior_1008890932_name._native_ptr(), 1008890932)
        assert(Label._method_set_text_overrun_behavior_1008890932 != nil)
        let _method_get_text_overrun_behavior_3779142101_name = StringName(from: "get_text_overrun_behavior")
        self._method_get_text_overrun_behavior_3779142101 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_text_overrun_behavior_3779142101_name._native_ptr(), 3779142101)
        assert(Label._method_get_text_overrun_behavior_3779142101 != nil)
        let _method_set_uppercase_2586408642_name = StringName(from: "set_uppercase")
        self._method_set_uppercase_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_uppercase_2586408642_name._native_ptr(), 2586408642)
        assert(Label._method_set_uppercase_2586408642 != nil)
        let _method_is_uppercase_36873697_name = StringName(from: "is_uppercase")
        self._method_is_uppercase_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_uppercase_36873697_name._native_ptr(), 36873697)
        assert(Label._method_is_uppercase_36873697 != nil)
        let _method_get_line_height_181039630_name = StringName(from: "get_line_height")
        self._method_get_line_height_181039630 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_height_181039630_name._native_ptr(), 181039630)
        assert(Label._method_get_line_height_181039630 != nil)
        let _method_get_line_count_3905245786_name = StringName(from: "get_line_count")
        self._method_get_line_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_count_3905245786_name._native_ptr(), 3905245786)
        assert(Label._method_get_line_count_3905245786 != nil)
        let _method_get_visible_line_count_3905245786_name = StringName(from: "get_visible_line_count")
        self._method_get_visible_line_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_visible_line_count_3905245786_name._native_ptr(), 3905245786)
        assert(Label._method_get_visible_line_count_3905245786 != nil)
        let _method_get_total_character_count_3905245786_name = StringName(from: "get_total_character_count")
        self._method_get_total_character_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_total_character_count_3905245786_name._native_ptr(), 3905245786)
        assert(Label._method_get_total_character_count_3905245786 != nil)
        let _method_set_visible_characters_1286410249_name = StringName(from: "set_visible_characters")
        self._method_set_visible_characters_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_visible_characters_1286410249_name._native_ptr(), 1286410249)
        assert(Label._method_set_visible_characters_1286410249 != nil)
        let _method_get_visible_characters_3905245786_name = StringName(from: "get_visible_characters")
        self._method_get_visible_characters_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_visible_characters_3905245786_name._native_ptr(), 3905245786)
        assert(Label._method_get_visible_characters_3905245786 != nil)
        let _method_get_visible_characters_behavior_258789322_name = StringName(from: "get_visible_characters_behavior")
        self._method_get_visible_characters_behavior_258789322 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_visible_characters_behavior_258789322_name._native_ptr(), 258789322)
        assert(Label._method_get_visible_characters_behavior_258789322 != nil)
        let _method_set_visible_characters_behavior_3383839701_name = StringName(from: "set_visible_characters_behavior")
        self._method_set_visible_characters_behavior_3383839701 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_visible_characters_behavior_3383839701_name._native_ptr(), 3383839701)
        assert(Label._method_set_visible_characters_behavior_3383839701 != nil)
        let _method_set_visible_ratio_373806689_name = StringName(from: "set_visible_ratio")
        self._method_set_visible_ratio_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_visible_ratio_373806689_name._native_ptr(), 373806689)
        assert(Label._method_set_visible_ratio_373806689 != nil)
        let _method_get_visible_ratio_1740695150_name = StringName(from: "get_visible_ratio")
        self._method_get_visible_ratio_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_visible_ratio_1740695150_name._native_ptr(), 1740695150)
        assert(Label._method_get_visible_ratio_1740695150 != nil)
        let _method_set_lines_skipped_1286410249_name = StringName(from: "set_lines_skipped")
        self._method_set_lines_skipped_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_lines_skipped_1286410249_name._native_ptr(), 1286410249)
        assert(Label._method_set_lines_skipped_1286410249 != nil)
        let _method_get_lines_skipped_3905245786_name = StringName(from: "get_lines_skipped")
        self._method_get_lines_skipped_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_lines_skipped_3905245786_name._native_ptr(), 3905245786)
        assert(Label._method_get_lines_skipped_3905245786 != nil)
        let _method_set_max_lines_visible_1286410249_name = StringName(from: "set_max_lines_visible")
        self._method_set_max_lines_visible_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_max_lines_visible_1286410249_name._native_ptr(), 1286410249)
        assert(Label._method_set_max_lines_visible_1286410249 != nil)
        let _method_get_max_lines_visible_3905245786_name = StringName(from: "get_max_lines_visible")
        self._method_get_max_lines_visible_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_max_lines_visible_3905245786_name._native_ptr(), 3905245786)
        assert(Label._method_get_max_lines_visible_3905245786 != nil)
        let _method_set_structured_text_bidi_override_55961453_name = StringName(from: "set_structured_text_bidi_override")
        self._method_set_structured_text_bidi_override_55961453 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_structured_text_bidi_override_55961453_name._native_ptr(), 55961453)
        assert(Label._method_set_structured_text_bidi_override_55961453 != nil)
        let _method_get_structured_text_bidi_override_3385126229_name = StringName(from: "get_structured_text_bidi_override")
        self._method_get_structured_text_bidi_override_3385126229 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_structured_text_bidi_override_3385126229_name._native_ptr(), 3385126229)
        assert(Label._method_get_structured_text_bidi_override_3385126229 != nil)
        let _method_set_structured_text_bidi_override_options_381264803_name = StringName(from: "set_structured_text_bidi_override_options")
        self._method_set_structured_text_bidi_override_options_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_structured_text_bidi_override_options_381264803_name._native_ptr(), 381264803)
        assert(Label._method_set_structured_text_bidi_override_options_381264803 != nil)
        let _method_get_structured_text_bidi_override_options_3995934104_name = StringName(from: "get_structured_text_bidi_override_options")
        self._method_get_structured_text_bidi_override_options_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_structured_text_bidi_override_options_3995934104_name._native_ptr(), 3995934104)
        assert(Label._method_get_structured_text_bidi_override_options_3995934104 != nil)
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
    public func set_vertical_alignment(alignment: VerticalAlignment)  {
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(alignment_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_vertical_alignment_1796458609,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_vertical_alignment() -> VerticalAlignment {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_vertical_alignment_3274884059,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VerticalAlignment(from: __resPtr.pointee)
    }
    public func set_text(text: String)  {
        withUnsafePointer(to: text) { text_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_text_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_text() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_text_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_label_settings(settings: LabelSettings)  {
        let settings_native = settings._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(settings_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_label_settings_1030653839,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_label_settings() -> LabelSettings {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_label_settings_826676056,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return LabelSettings(from: __resPtr.pointee)
    }
    public func set_text_direction(direction: Control.TextDirection)  {
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(direction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_text_direction_119160795,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_text_direction() -> Control.TextDirection {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_text_direction_797257663,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control.TextDirection(from: __resPtr.pointee)
    }
    public func set_language(language: String)  {
        withUnsafePointer(to: language) { language_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(language_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_language_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_language() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_language_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_autowrap_mode(autowrap_mode: TextServer.AutowrapMode)  {
        withUnsafePointer(to: autowrap_mode.rawValue) { autowrap_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(autowrap_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_autowrap_mode_3289138044,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_autowrap_mode() -> TextServer.AutowrapMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_autowrap_mode_1549071663,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.AutowrapMode(from: __resPtr.pointee)
    }
    public func set_clip_text(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_clip_text_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_clipping_text() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_clipping_text_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
    public func set_uppercase(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_uppercase_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_uppercase() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_uppercase_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_line_height(line: Int64) -> Int64 {
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_height_181039630,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func get_line_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_visible_line_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_visible_line_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_total_character_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_total_character_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_visible_characters(amount: Int64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_visible_characters_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_visible_characters() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_visible_characters_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_visible_characters_behavior() -> TextServer.VisibleCharactersBehavior {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_visible_characters_behavior_258789322,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.VisibleCharactersBehavior(from: __resPtr.pointee)
    }
    public func set_visible_characters_behavior(behavior: TextServer.VisibleCharactersBehavior)  {
        withUnsafePointer(to: behavior.rawValue) { behavior_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(behavior_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_visible_characters_behavior_3383839701,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_visible_ratio(ratio: Float64)  {
        withUnsafePointer(to: ratio) { ratio_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ratio_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_visible_ratio_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_visible_ratio() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_visible_ratio_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_lines_skipped(lines_skipped: Int64)  {
        withUnsafePointer(to: lines_skipped) { lines_skipped_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(lines_skipped_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_lines_skipped_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_lines_skipped() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_lines_skipped_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_max_lines_visible(lines_visible: Int64)  {
        withUnsafePointer(to: lines_visible) { lines_visible_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(lines_visible_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_lines_visible_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max_lines_visible() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_lines_visible_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_structured_text_bidi_override(parser: TextServer.StructuredTextParser)  {
        withUnsafePointer(to: parser.rawValue) { parser_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parser_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_structured_text_bidi_override_55961453,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_structured_text_bidi_override() -> TextServer.StructuredTextParser {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_structured_text_bidi_override_3385126229,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.StructuredTextParser(from: __resPtr.pointee)
    }
    public func set_structured_text_bidi_override_options(args: Array)  {
        let args_native = args._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(args_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_structured_text_bidi_override_options_381264803,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_structured_text_bidi_override_options() -> Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_structured_text_bidi_override_options_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(from: __resPtr.pointee)
    }
}