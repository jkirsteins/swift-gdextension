import godot_native

fileprivate var __godot_name_ColorPicker: StringName! = nil

/// Color picker control.
/// 
/// Displays a color picker widget. Useful for selecting a color from an RGB/RGBA colorspace.
///  
/// [b]Note:[/b] This control is the color picker widget itself. You can use a [ColorPickerButton] instead if you need a button that brings up a [ColorPicker] in a pop-up.
open class ColorPicker : VBoxContainer {

    public enum ColorModeType : Int32 {
        case MODE_RGB = 0
        case MODE_HSV = 1
        case MODE_RAW = 2
        case MODE_OKHSL = 3
    }
    public enum PickerShapeType : Int32 {
        case SHAPE_HSV_RECTANGLE = 0
        case SHAPE_HSV_WHEEL = 1
        case SHAPE_VHS_CIRCLE = 2
        case SHAPE_OKHSL_CIRCLE = 3
        case SHAPE_NONE = 4
    }

    public override class var __godot_name: StringName { __godot_name_ColorPicker }

    static var _method_set_pick_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_pick_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_deferred_mode_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_deferred_mode_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_color_mode_1579114136: GDExtensionMethodBindPtr! = nil
    static var _method_get_color_mode_392907674: GDExtensionMethodBindPtr! = nil
    static var _method_set_edit_alpha_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_editing_alpha_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_can_add_swatches_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_are_swatches_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_presets_visible_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_are_presets_visible_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_modes_visible_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_are_modes_visible_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_sampler_visible_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_sampler_visible_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_sliders_visible_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_are_sliders_visible_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_hex_visible_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_hex_visible_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_add_preset_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_erase_preset_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_presets_1392750486: GDExtensionMethodBindPtr! = nil
    static var _method_add_recent_preset_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_erase_recent_preset_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_recent_presets_1392750486: GDExtensionMethodBindPtr! = nil
    static var _method_set_picker_shape_3981373861: GDExtensionMethodBindPtr! = nil
    static var _method_get_picker_shape_1143229889: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_ColorPicker = StringName(from: "ColorPicker")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_pick_color_2920490490_name = StringName(from: "set_pick_color")
        self._method_set_pick_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_set_pick_color_2920490490_name._native_ptr(), 2920490490)
        assert(ColorPicker._method_set_pick_color_2920490490 != nil)
        let _method_get_pick_color_3444240500_name = StringName(from: "get_pick_color")
        self._method_get_pick_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_get_pick_color_3444240500_name._native_ptr(), 3444240500)
        assert(ColorPicker._method_get_pick_color_3444240500 != nil)
        let _method_set_deferred_mode_2586408642_name = StringName(from: "set_deferred_mode")
        self._method_set_deferred_mode_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_set_deferred_mode_2586408642_name._native_ptr(), 2586408642)
        assert(ColorPicker._method_set_deferred_mode_2586408642 != nil)
        let _method_is_deferred_mode_36873697_name = StringName(from: "is_deferred_mode")
        self._method_is_deferred_mode_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_is_deferred_mode_36873697_name._native_ptr(), 36873697)
        assert(ColorPicker._method_is_deferred_mode_36873697 != nil)
        let _method_set_color_mode_1579114136_name = StringName(from: "set_color_mode")
        self._method_set_color_mode_1579114136 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_set_color_mode_1579114136_name._native_ptr(), 1579114136)
        assert(ColorPicker._method_set_color_mode_1579114136 != nil)
        let _method_get_color_mode_392907674_name = StringName(from: "get_color_mode")
        self._method_get_color_mode_392907674 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_get_color_mode_392907674_name._native_ptr(), 392907674)
        assert(ColorPicker._method_get_color_mode_392907674 != nil)
        let _method_set_edit_alpha_2586408642_name = StringName(from: "set_edit_alpha")
        self._method_set_edit_alpha_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_set_edit_alpha_2586408642_name._native_ptr(), 2586408642)
        assert(ColorPicker._method_set_edit_alpha_2586408642 != nil)
        let _method_is_editing_alpha_36873697_name = StringName(from: "is_editing_alpha")
        self._method_is_editing_alpha_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_is_editing_alpha_36873697_name._native_ptr(), 36873697)
        assert(ColorPicker._method_is_editing_alpha_36873697 != nil)
        let _method_set_can_add_swatches_2586408642_name = StringName(from: "set_can_add_swatches")
        self._method_set_can_add_swatches_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_set_can_add_swatches_2586408642_name._native_ptr(), 2586408642)
        assert(ColorPicker._method_set_can_add_swatches_2586408642 != nil)
        let _method_are_swatches_enabled_36873697_name = StringName(from: "are_swatches_enabled")
        self._method_are_swatches_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_are_swatches_enabled_36873697_name._native_ptr(), 36873697)
        assert(ColorPicker._method_are_swatches_enabled_36873697 != nil)
        let _method_set_presets_visible_2586408642_name = StringName(from: "set_presets_visible")
        self._method_set_presets_visible_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_set_presets_visible_2586408642_name._native_ptr(), 2586408642)
        assert(ColorPicker._method_set_presets_visible_2586408642 != nil)
        let _method_are_presets_visible_36873697_name = StringName(from: "are_presets_visible")
        self._method_are_presets_visible_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_are_presets_visible_36873697_name._native_ptr(), 36873697)
        assert(ColorPicker._method_are_presets_visible_36873697 != nil)
        let _method_set_modes_visible_2586408642_name = StringName(from: "set_modes_visible")
        self._method_set_modes_visible_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_set_modes_visible_2586408642_name._native_ptr(), 2586408642)
        assert(ColorPicker._method_set_modes_visible_2586408642 != nil)
        let _method_are_modes_visible_36873697_name = StringName(from: "are_modes_visible")
        self._method_are_modes_visible_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_are_modes_visible_36873697_name._native_ptr(), 36873697)
        assert(ColorPicker._method_are_modes_visible_36873697 != nil)
        let _method_set_sampler_visible_2586408642_name = StringName(from: "set_sampler_visible")
        self._method_set_sampler_visible_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_set_sampler_visible_2586408642_name._native_ptr(), 2586408642)
        assert(ColorPicker._method_set_sampler_visible_2586408642 != nil)
        let _method_is_sampler_visible_36873697_name = StringName(from: "is_sampler_visible")
        self._method_is_sampler_visible_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_is_sampler_visible_36873697_name._native_ptr(), 36873697)
        assert(ColorPicker._method_is_sampler_visible_36873697 != nil)
        let _method_set_sliders_visible_2586408642_name = StringName(from: "set_sliders_visible")
        self._method_set_sliders_visible_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_set_sliders_visible_2586408642_name._native_ptr(), 2586408642)
        assert(ColorPicker._method_set_sliders_visible_2586408642 != nil)
        let _method_are_sliders_visible_36873697_name = StringName(from: "are_sliders_visible")
        self._method_are_sliders_visible_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_are_sliders_visible_36873697_name._native_ptr(), 36873697)
        assert(ColorPicker._method_are_sliders_visible_36873697 != nil)
        let _method_set_hex_visible_2586408642_name = StringName(from: "set_hex_visible")
        self._method_set_hex_visible_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_set_hex_visible_2586408642_name._native_ptr(), 2586408642)
        assert(ColorPicker._method_set_hex_visible_2586408642 != nil)
        let _method_is_hex_visible_36873697_name = StringName(from: "is_hex_visible")
        self._method_is_hex_visible_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_is_hex_visible_36873697_name._native_ptr(), 36873697)
        assert(ColorPicker._method_is_hex_visible_36873697 != nil)
        let _method_add_preset_2920490490_name = StringName(from: "add_preset")
        self._method_add_preset_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_add_preset_2920490490_name._native_ptr(), 2920490490)
        assert(ColorPicker._method_add_preset_2920490490 != nil)
        let _method_erase_preset_2920490490_name = StringName(from: "erase_preset")
        self._method_erase_preset_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_erase_preset_2920490490_name._native_ptr(), 2920490490)
        assert(ColorPicker._method_erase_preset_2920490490 != nil)
        let _method_get_presets_1392750486_name = StringName(from: "get_presets")
        self._method_get_presets_1392750486 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_get_presets_1392750486_name._native_ptr(), 1392750486)
        assert(ColorPicker._method_get_presets_1392750486 != nil)
        let _method_add_recent_preset_2920490490_name = StringName(from: "add_recent_preset")
        self._method_add_recent_preset_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_add_recent_preset_2920490490_name._native_ptr(), 2920490490)
        assert(ColorPicker._method_add_recent_preset_2920490490 != nil)
        let _method_erase_recent_preset_2920490490_name = StringName(from: "erase_recent_preset")
        self._method_erase_recent_preset_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_erase_recent_preset_2920490490_name._native_ptr(), 2920490490)
        assert(ColorPicker._method_erase_recent_preset_2920490490 != nil)
        let _method_get_recent_presets_1392750486_name = StringName(from: "get_recent_presets")
        self._method_get_recent_presets_1392750486 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_get_recent_presets_1392750486_name._native_ptr(), 1392750486)
        assert(ColorPicker._method_get_recent_presets_1392750486 != nil)
        let _method_set_picker_shape_3981373861_name = StringName(from: "set_picker_shape")
        self._method_set_picker_shape_3981373861 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_set_picker_shape_3981373861_name._native_ptr(), 3981373861)
        assert(ColorPicker._method_set_picker_shape_3981373861 != nil)
        let _method_get_picker_shape_1143229889_name = StringName(from: "get_picker_shape")
        self._method_get_picker_shape_1143229889 = self.interface.pointee.classdb_get_method_bind(__godot_name_ColorPicker._native_ptr(), _method_get_picker_shape_1143229889_name._native_ptr(), 1143229889)
        assert(ColorPicker._method_get_picker_shape_1143229889 != nil)
    }

    public func set_pick_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pick_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_pick_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pick_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_deferred_mode(mode: UInt8)  {
        withUnsafePointer(to: mode) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_deferred_mode_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_deferred_mode() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_deferred_mode_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_color_mode(color_mode: ColorPicker.ColorModeType)  {
        withUnsafePointer(to: color_mode.rawValue) { color_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_color_mode_1579114136,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_color_mode() -> ColorPicker.ColorModeType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_color_mode_392907674,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ColorPicker.ColorModeType(godot: __resPtr.pointee)
    }
    public func set_edit_alpha(show: UInt8)  {
        withUnsafePointer(to: show) { show_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(show_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_edit_alpha_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_editing_alpha() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_editing_alpha_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_can_add_swatches(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_can_add_swatches_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func are_swatches_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_are_swatches_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_presets_visible(visible: UInt8)  {
        withUnsafePointer(to: visible) { visible_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(visible_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_presets_visible_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func are_presets_visible() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_are_presets_visible_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_modes_visible(visible: UInt8)  {
        withUnsafePointer(to: visible) { visible_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(visible_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_modes_visible_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func are_modes_visible() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_are_modes_visible_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_sampler_visible(visible: UInt8)  {
        withUnsafePointer(to: visible) { visible_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(visible_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sampler_visible_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_sampler_visible() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_sampler_visible_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_sliders_visible(visible: UInt8)  {
        withUnsafePointer(to: visible) { visible_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(visible_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sliders_visible_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func are_sliders_visible() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_are_sliders_visible_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_hex_visible(visible: UInt8)  {
        withUnsafePointer(to: visible) { visible_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(visible_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_hex_visible_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_hex_visible() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_hex_visible_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func add_preset(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_preset_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func erase_preset(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_erase_preset_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_presets() -> PackedColorArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_presets_1392750486,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedColorArray(godot: __resPtr.pointee)
    }
    public func add_recent_preset(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_recent_preset_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func erase_recent_preset(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_erase_recent_preset_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_recent_presets() -> PackedColorArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_recent_presets_1392750486,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedColorArray(godot: __resPtr.pointee)
    }
    public func set_picker_shape(shape: ColorPicker.PickerShapeType)  {
        withUnsafePointer(to: shape.rawValue) { shape_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_picker_shape_3981373861,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_picker_shape() -> ColorPicker.PickerShapeType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_picker_shape_1143229889,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ColorPicker.PickerShapeType(godot: __resPtr.pointee)
    }
}