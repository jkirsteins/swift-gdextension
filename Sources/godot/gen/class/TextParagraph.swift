import godot_native

fileprivate var __godot_name_TextParagraph: StringName! = nil

/// Holds a paragraph of text.
/// 
/// Abstraction over [TextServer] for handling paragraph of text.
open class TextParagraph : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_TextParagraph }

    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_direction_1418190634: GDExtensionMethodBindPtr! = nil
    static var _method_get_direction_2516697328: GDExtensionMethodBindPtr! = nil
    static var _method_set_custom_punctuation_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_punctuation_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_orientation_42823726: GDExtensionMethodBindPtr! = nil
    static var _method_get_orientation_175768116: GDExtensionMethodBindPtr! = nil
    static var _method_set_preserve_invalid_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_preserve_invalid_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_preserve_control_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_preserve_control_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_bidi_override_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_set_dropcap_2613124475: GDExtensionMethodBindPtr! = nil
    static var _method_clear_dropcap_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_add_string_867188035: GDExtensionMethodBindPtr! = nil
    static var _method_add_object_735420116: GDExtensionMethodBindPtr! = nil
    static var _method_resize_object_960819067: GDExtensionMethodBindPtr! = nil
    static var _method_set_alignment_2312603777: GDExtensionMethodBindPtr! = nil
    static var _method_get_alignment_341400642: GDExtensionMethodBindPtr! = nil
    static var _method_tab_align_2899603908: GDExtensionMethodBindPtr! = nil
    static var _method_set_break_flags_2809697122: GDExtensionMethodBindPtr! = nil
    static var _method_get_break_flags_2340632602: GDExtensionMethodBindPtr! = nil
    static var _method_set_justification_flags_2877345813: GDExtensionMethodBindPtr! = nil
    static var _method_get_justification_flags_1583363614: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_overrun_behavior_1008890932: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_overrun_behavior_3779142101: GDExtensionMethodBindPtr! = nil
    static var _method_set_width_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_width_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_non_wrapped_size_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_rid_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_rid_495598643: GDExtensionMethodBindPtr! = nil
    static var _method_get_dropcap_rid_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_lines_visible_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_lines_visible_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_objects_663333327: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_object_rect_204315017: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_size_2299179447: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_range_880721226: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_ascent_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_descent_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_width_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_underline_position_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_underline_thickness_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_get_dropcap_size_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_dropcap_lines_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_draw_367324453: GDExtensionMethodBindPtr! = nil
    static var _method_draw_outline_2159523405: GDExtensionMethodBindPtr! = nil
    static var _method_draw_line_3963848920: GDExtensionMethodBindPtr! = nil
    static var _method_draw_line_outline_1814903311: GDExtensionMethodBindPtr! = nil
    static var _method_draw_dropcap_1164457837: GDExtensionMethodBindPtr! = nil
    static var _method_draw_dropcap_outline_1364491366: GDExtensionMethodBindPtr! = nil
    static var _method_hit_test_3820158470: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_TextParagraph = StringName(from: "TextParagraph")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(TextParagraph._method_clear_3218959716 != nil)
        let _method_set_direction_1418190634_name = StringName(from: "set_direction")
        self._method_set_direction_1418190634 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_set_direction_1418190634_name._native_ptr(), 1418190634)
        assert(TextParagraph._method_set_direction_1418190634 != nil)
        let _method_get_direction_2516697328_name = StringName(from: "get_direction")
        self._method_get_direction_2516697328 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_direction_2516697328_name._native_ptr(), 2516697328)
        assert(TextParagraph._method_get_direction_2516697328 != nil)
        let _method_set_custom_punctuation_83702148_name = StringName(from: "set_custom_punctuation")
        self._method_set_custom_punctuation_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_set_custom_punctuation_83702148_name._native_ptr(), 83702148)
        assert(TextParagraph._method_set_custom_punctuation_83702148 != nil)
        let _method_get_custom_punctuation_201670096_name = StringName(from: "get_custom_punctuation")
        self._method_get_custom_punctuation_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_custom_punctuation_201670096_name._native_ptr(), 201670096)
        assert(TextParagraph._method_get_custom_punctuation_201670096 != nil)
        let _method_set_orientation_42823726_name = StringName(from: "set_orientation")
        self._method_set_orientation_42823726 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_set_orientation_42823726_name._native_ptr(), 42823726)
        assert(TextParagraph._method_set_orientation_42823726 != nil)
        let _method_get_orientation_175768116_name = StringName(from: "get_orientation")
        self._method_get_orientation_175768116 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_orientation_175768116_name._native_ptr(), 175768116)
        assert(TextParagraph._method_get_orientation_175768116 != nil)
        let _method_set_preserve_invalid_2586408642_name = StringName(from: "set_preserve_invalid")
        self._method_set_preserve_invalid_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_set_preserve_invalid_2586408642_name._native_ptr(), 2586408642)
        assert(TextParagraph._method_set_preserve_invalid_2586408642 != nil)
        let _method_get_preserve_invalid_36873697_name = StringName(from: "get_preserve_invalid")
        self._method_get_preserve_invalid_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_preserve_invalid_36873697_name._native_ptr(), 36873697)
        assert(TextParagraph._method_get_preserve_invalid_36873697 != nil)
        let _method_set_preserve_control_2586408642_name = StringName(from: "set_preserve_control")
        self._method_set_preserve_control_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_set_preserve_control_2586408642_name._native_ptr(), 2586408642)
        assert(TextParagraph._method_set_preserve_control_2586408642 != nil)
        let _method_get_preserve_control_36873697_name = StringName(from: "get_preserve_control")
        self._method_get_preserve_control_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_preserve_control_36873697_name._native_ptr(), 36873697)
        assert(TextParagraph._method_get_preserve_control_36873697 != nil)
        let _method_set_bidi_override_381264803_name = StringName(from: "set_bidi_override")
        self._method_set_bidi_override_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_set_bidi_override_381264803_name._native_ptr(), 381264803)
        assert(TextParagraph._method_set_bidi_override_381264803 != nil)
        let _method_set_dropcap_2613124475_name = StringName(from: "set_dropcap")
        self._method_set_dropcap_2613124475 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_set_dropcap_2613124475_name._native_ptr(), 2613124475)
        assert(TextParagraph._method_set_dropcap_2613124475 != nil)
        let _method_clear_dropcap_3218959716_name = StringName(from: "clear_dropcap")
        self._method_clear_dropcap_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_clear_dropcap_3218959716_name._native_ptr(), 3218959716)
        assert(TextParagraph._method_clear_dropcap_3218959716 != nil)
        let _method_add_string_867188035_name = StringName(from: "add_string")
        self._method_add_string_867188035 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_add_string_867188035_name._native_ptr(), 867188035)
        assert(TextParagraph._method_add_string_867188035 != nil)
        let _method_add_object_735420116_name = StringName(from: "add_object")
        self._method_add_object_735420116 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_add_object_735420116_name._native_ptr(), 735420116)
        assert(TextParagraph._method_add_object_735420116 != nil)
        let _method_resize_object_960819067_name = StringName(from: "resize_object")
        self._method_resize_object_960819067 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_resize_object_960819067_name._native_ptr(), 960819067)
        assert(TextParagraph._method_resize_object_960819067 != nil)
        let _method_set_alignment_2312603777_name = StringName(from: "set_alignment")
        self._method_set_alignment_2312603777 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_set_alignment_2312603777_name._native_ptr(), 2312603777)
        assert(TextParagraph._method_set_alignment_2312603777 != nil)
        let _method_get_alignment_341400642_name = StringName(from: "get_alignment")
        self._method_get_alignment_341400642 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_alignment_341400642_name._native_ptr(), 341400642)
        assert(TextParagraph._method_get_alignment_341400642 != nil)
        let _method_tab_align_2899603908_name = StringName(from: "tab_align")
        self._method_tab_align_2899603908 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_tab_align_2899603908_name._native_ptr(), 2899603908)
        assert(TextParagraph._method_tab_align_2899603908 != nil)
        let _method_set_break_flags_2809697122_name = StringName(from: "set_break_flags")
        self._method_set_break_flags_2809697122 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_set_break_flags_2809697122_name._native_ptr(), 2809697122)
        assert(TextParagraph._method_set_break_flags_2809697122 != nil)
        let _method_get_break_flags_2340632602_name = StringName(from: "get_break_flags")
        self._method_get_break_flags_2340632602 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_break_flags_2340632602_name._native_ptr(), 2340632602)
        assert(TextParagraph._method_get_break_flags_2340632602 != nil)
        let _method_set_justification_flags_2877345813_name = StringName(from: "set_justification_flags")
        self._method_set_justification_flags_2877345813 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_set_justification_flags_2877345813_name._native_ptr(), 2877345813)
        assert(TextParagraph._method_set_justification_flags_2877345813 != nil)
        let _method_get_justification_flags_1583363614_name = StringName(from: "get_justification_flags")
        self._method_get_justification_flags_1583363614 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_justification_flags_1583363614_name._native_ptr(), 1583363614)
        assert(TextParagraph._method_get_justification_flags_1583363614 != nil)
        let _method_set_text_overrun_behavior_1008890932_name = StringName(from: "set_text_overrun_behavior")
        self._method_set_text_overrun_behavior_1008890932 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_set_text_overrun_behavior_1008890932_name._native_ptr(), 1008890932)
        assert(TextParagraph._method_set_text_overrun_behavior_1008890932 != nil)
        let _method_get_text_overrun_behavior_3779142101_name = StringName(from: "get_text_overrun_behavior")
        self._method_get_text_overrun_behavior_3779142101 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_text_overrun_behavior_3779142101_name._native_ptr(), 3779142101)
        assert(TextParagraph._method_get_text_overrun_behavior_3779142101 != nil)
        let _method_set_width_373806689_name = StringName(from: "set_width")
        self._method_set_width_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_set_width_373806689_name._native_ptr(), 373806689)
        assert(TextParagraph._method_set_width_373806689 != nil)
        let _method_get_width_1740695150_name = StringName(from: "get_width")
        self._method_get_width_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_width_1740695150_name._native_ptr(), 1740695150)
        assert(TextParagraph._method_get_width_1740695150 != nil)
        let _method_get_non_wrapped_size_3341600327_name = StringName(from: "get_non_wrapped_size")
        self._method_get_non_wrapped_size_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_non_wrapped_size_3341600327_name._native_ptr(), 3341600327)
        assert(TextParagraph._method_get_non_wrapped_size_3341600327 != nil)
        let _method_get_size_3341600327_name = StringName(from: "get_size")
        self._method_get_size_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_size_3341600327_name._native_ptr(), 3341600327)
        assert(TextParagraph._method_get_size_3341600327 != nil)
        let _method_get_rid_2944877500_name = StringName(from: "get_rid")
        self._method_get_rid_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_rid_2944877500_name._native_ptr(), 2944877500)
        assert(TextParagraph._method_get_rid_2944877500 != nil)
        let _method_get_line_rid_495598643_name = StringName(from: "get_line_rid")
        self._method_get_line_rid_495598643 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_line_rid_495598643_name._native_ptr(), 495598643)
        assert(TextParagraph._method_get_line_rid_495598643 != nil)
        let _method_get_dropcap_rid_2944877500_name = StringName(from: "get_dropcap_rid")
        self._method_get_dropcap_rid_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_dropcap_rid_2944877500_name._native_ptr(), 2944877500)
        assert(TextParagraph._method_get_dropcap_rid_2944877500 != nil)
        let _method_get_line_count_3905245786_name = StringName(from: "get_line_count")
        self._method_get_line_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_line_count_3905245786_name._native_ptr(), 3905245786)
        assert(TextParagraph._method_get_line_count_3905245786 != nil)
        let _method_set_max_lines_visible_1286410249_name = StringName(from: "set_max_lines_visible")
        self._method_set_max_lines_visible_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_set_max_lines_visible_1286410249_name._native_ptr(), 1286410249)
        assert(TextParagraph._method_set_max_lines_visible_1286410249 != nil)
        let _method_get_max_lines_visible_3905245786_name = StringName(from: "get_max_lines_visible")
        self._method_get_max_lines_visible_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_max_lines_visible_3905245786_name._native_ptr(), 3905245786)
        assert(TextParagraph._method_get_max_lines_visible_3905245786 != nil)
        let _method_get_line_objects_663333327_name = StringName(from: "get_line_objects")
        self._method_get_line_objects_663333327 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_line_objects_663333327_name._native_ptr(), 663333327)
        assert(TextParagraph._method_get_line_objects_663333327 != nil)
        let _method_get_line_object_rect_204315017_name = StringName(from: "get_line_object_rect")
        self._method_get_line_object_rect_204315017 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_line_object_rect_204315017_name._native_ptr(), 204315017)
        assert(TextParagraph._method_get_line_object_rect_204315017 != nil)
        let _method_get_line_size_2299179447_name = StringName(from: "get_line_size")
        self._method_get_line_size_2299179447 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_line_size_2299179447_name._native_ptr(), 2299179447)
        assert(TextParagraph._method_get_line_size_2299179447 != nil)
        let _method_get_line_range_880721226_name = StringName(from: "get_line_range")
        self._method_get_line_range_880721226 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_line_range_880721226_name._native_ptr(), 880721226)
        assert(TextParagraph._method_get_line_range_880721226 != nil)
        let _method_get_line_ascent_2339986948_name = StringName(from: "get_line_ascent")
        self._method_get_line_ascent_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_line_ascent_2339986948_name._native_ptr(), 2339986948)
        assert(TextParagraph._method_get_line_ascent_2339986948 != nil)
        let _method_get_line_descent_2339986948_name = StringName(from: "get_line_descent")
        self._method_get_line_descent_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_line_descent_2339986948_name._native_ptr(), 2339986948)
        assert(TextParagraph._method_get_line_descent_2339986948 != nil)
        let _method_get_line_width_2339986948_name = StringName(from: "get_line_width")
        self._method_get_line_width_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_line_width_2339986948_name._native_ptr(), 2339986948)
        assert(TextParagraph._method_get_line_width_2339986948 != nil)
        let _method_get_line_underline_position_2339986948_name = StringName(from: "get_line_underline_position")
        self._method_get_line_underline_position_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_line_underline_position_2339986948_name._native_ptr(), 2339986948)
        assert(TextParagraph._method_get_line_underline_position_2339986948 != nil)
        let _method_get_line_underline_thickness_2339986948_name = StringName(from: "get_line_underline_thickness")
        self._method_get_line_underline_thickness_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_line_underline_thickness_2339986948_name._native_ptr(), 2339986948)
        assert(TextParagraph._method_get_line_underline_thickness_2339986948 != nil)
        let _method_get_dropcap_size_3341600327_name = StringName(from: "get_dropcap_size")
        self._method_get_dropcap_size_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_dropcap_size_3341600327_name._native_ptr(), 3341600327)
        assert(TextParagraph._method_get_dropcap_size_3341600327 != nil)
        let _method_get_dropcap_lines_3905245786_name = StringName(from: "get_dropcap_lines")
        self._method_get_dropcap_lines_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_get_dropcap_lines_3905245786_name._native_ptr(), 3905245786)
        assert(TextParagraph._method_get_dropcap_lines_3905245786 != nil)
        let _method_draw_367324453_name = StringName(from: "draw")
        self._method_draw_367324453 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_draw_367324453_name._native_ptr(), 367324453)
        assert(TextParagraph._method_draw_367324453 != nil)
        let _method_draw_outline_2159523405_name = StringName(from: "draw_outline")
        self._method_draw_outline_2159523405 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_draw_outline_2159523405_name._native_ptr(), 2159523405)
        assert(TextParagraph._method_draw_outline_2159523405 != nil)
        let _method_draw_line_3963848920_name = StringName(from: "draw_line")
        self._method_draw_line_3963848920 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_draw_line_3963848920_name._native_ptr(), 3963848920)
        assert(TextParagraph._method_draw_line_3963848920 != nil)
        let _method_draw_line_outline_1814903311_name = StringName(from: "draw_line_outline")
        self._method_draw_line_outline_1814903311 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_draw_line_outline_1814903311_name._native_ptr(), 1814903311)
        assert(TextParagraph._method_draw_line_outline_1814903311 != nil)
        let _method_draw_dropcap_1164457837_name = StringName(from: "draw_dropcap")
        self._method_draw_dropcap_1164457837 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_draw_dropcap_1164457837_name._native_ptr(), 1164457837)
        assert(TextParagraph._method_draw_dropcap_1164457837 != nil)
        let _method_draw_dropcap_outline_1364491366_name = StringName(from: "draw_dropcap_outline")
        self._method_draw_dropcap_outline_1364491366 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_draw_dropcap_outline_1364491366_name._native_ptr(), 1364491366)
        assert(TextParagraph._method_draw_dropcap_outline_1364491366 != nil)
        let _method_hit_test_3820158470_name = StringName(from: "hit_test")
        self._method_hit_test_3820158470 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextParagraph._native_ptr(), _method_hit_test_3820158470_name._native_ptr(), 3820158470)
        assert(TextParagraph._method_hit_test_3820158470 != nil)
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
            return TextServer.Direction(godot: __resPtr.pointee)
    }
    public func set_custom_punctuation(custom_punctuation: godot.String)  {
        let custom_punctuation_native = custom_punctuation._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(custom_punctuation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_punctuation_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_custom_punctuation() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_punctuation_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
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
            return TextServer.Orientation(godot: __resPtr.pointee)
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
            return UInt8(godot: __resPtr.pointee)
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
            return UInt8(godot: __resPtr.pointee)
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
    public func set_dropcap(text: godot.String, font: Font, font_size: Int64, dropcap_margins: Rect2, language: godot.String) -> UInt8 {
        withUnsafePointer(to: font_size) { font_size_native in
        let language_native = language._native_ptr()
        let dropcap_margins_native = dropcap_margins._native_ptr()
        let font_native = font._native_ptr()
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native), .init(font_native), .init(font_size_native), .init(dropcap_margins_native), .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_dropcap_2613124475,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func clear_dropcap()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_dropcap_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_string(text: godot.String, font: Font, font_size: Int64, language: godot.String, meta: Variant) -> UInt8 {
        withUnsafePointer(to: font_size) { font_size_native in
        let meta_native = meta._native_ptr()
        let language_native = language._native_ptr()
        let font_native = font._native_ptr()
        let text_native = text._native_ptr()
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
            return UInt8(godot: __resPtr.pointee)
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
            return UInt8(godot: __resPtr.pointee)
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
            return UInt8(godot: __resPtr.pointee)
        }
        }
    }
    public func set_alignment(alignment: HorizontalAlignment)  {
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(alignment_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_alignment_2312603777,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_alignment() -> HorizontalAlignment {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_alignment_341400642,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return HorizontalAlignment(godot: __resPtr.pointee)
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
    public func set_break_flags(flags: TextServer.LineBreakFlag)  {
        withUnsafePointer(to: flags.rawValue) { flags_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flags_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_break_flags_2809697122,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_break_flags() -> TextServer.LineBreakFlag {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_break_flags_2340632602,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.LineBreakFlag(godot: __resPtr.pointee)
    }
    public func set_justification_flags(flags: TextServer.JustificationFlag)  {
        withUnsafePointer(to: flags.rawValue) { flags_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flags_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_justification_flags_2877345813,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_justification_flags() -> TextServer.JustificationFlag {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_justification_flags_1583363614,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.JustificationFlag(godot: __resPtr.pointee)
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
            return TextServer.OverrunBehavior(godot: __resPtr.pointee)
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
            return Float64(godot: __resPtr.pointee)
    }
    public func get_non_wrapped_size() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_non_wrapped_size_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
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
            return Vector2(godot: __resPtr.pointee)
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
            return RID(godot: __resPtr.pointee)
    }
    public func get_line_rid(line: Int64) -> RID {
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_rid_495598643,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
        }
    }
    public func get_dropcap_rid() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_dropcap_rid_2944877500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
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
            return Int64(godot: __resPtr.pointee)
    }
    public func set_max_lines_visible(max_lines_visible: Int64)  {
        withUnsafePointer(to: max_lines_visible) { max_lines_visible_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_lines_visible_native)
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
            return Int64(godot: __resPtr.pointee)
    }
    public func get_line_objects(line: Int64) -> Array {
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_objects_663333327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
        }
    }
    public func get_line_object_rect(line: Int64, key: Variant) -> Rect2 {
        withUnsafePointer(to: line) { line_native in
        let key_native = key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native), .init(key_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_object_rect_204315017,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(godot: __resPtr.pointee)
        }
    }
    public func get_line_size(line: Int64) -> Vector2 {
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_size_2299179447,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
    }
    public func get_line_range(line: Int64) -> Vector2i {
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_range_880721226,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
        }
    }
    public func get_line_ascent(line: Int64) -> Float64 {
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
                    Self._method_get_line_ascent_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func get_line_descent(line: Int64) -> Float64 {
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
                    Self._method_get_line_descent_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func get_line_width(line: Int64) -> Float64 {
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
                    Self._method_get_line_width_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func get_line_underline_position(line: Int64) -> Float64 {
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
                    Self._method_get_line_underline_position_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func get_line_underline_thickness(line: Int64) -> Float64 {
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
                    Self._method_get_line_underline_thickness_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func get_dropcap_size() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_dropcap_size_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func get_dropcap_lines() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_dropcap_lines_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func draw(canvas: RID, pos: Vector2, color: Color, dc_color: Color)  {
        let dc_color_native = dc_color._native_ptr()
        let color_native = color._native_ptr()
        let pos_native = pos._native_ptr()
        let canvas_native = canvas._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_native), .init(pos_native), .init(color_native), .init(dc_color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_draw_367324453,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func draw_outline(canvas: RID, pos: Vector2, outline_size: Int64, color: Color, dc_color: Color)  {
        withUnsafePointer(to: outline_size) { outline_size_native in
        let dc_color_native = dc_color._native_ptr()
        let color_native = color._native_ptr()
        let pos_native = pos._native_ptr()
        let canvas_native = canvas._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_native), .init(pos_native), .init(outline_size_native), .init(color_native), .init(dc_color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_draw_outline_2159523405,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func draw_line(canvas: RID, pos: Vector2, line: Int64, color: Color)  {
        withUnsafePointer(to: line) { line_native in
        let color_native = color._native_ptr()
        let pos_native = pos._native_ptr()
        let canvas_native = canvas._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_native), .init(pos_native), .init(line_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_draw_line_3963848920,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func draw_line_outline(canvas: RID, pos: Vector2, line: Int64, outline_size: Int64, color: Color)  {
        withUnsafePointer(to: outline_size) { outline_size_native in
        withUnsafePointer(to: line) { line_native in
        let color_native = color._native_ptr()
        let pos_native = pos._native_ptr()
        let canvas_native = canvas._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_native), .init(pos_native), .init(line_native), .init(outline_size_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_draw_line_outline_1814903311,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func draw_dropcap(canvas: RID, pos: Vector2, color: Color)  {
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
                    Self._method_draw_dropcap_1164457837,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func draw_dropcap_outline(canvas: RID, pos: Vector2, outline_size: Int64, color: Color)  {
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
                    Self._method_draw_dropcap_outline_1364491366,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func hit_test(coords: Vector2) -> Int64 {
        let coords_native = coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(coords_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_hit_test_3820158470,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}