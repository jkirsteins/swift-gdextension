import godot_native

fileprivate var __godot_name_ColorPickerButton: StringName! = nil

/// Button that pops out a [ColorPicker].
/// 
/// Encapsulates a [ColorPicker] making it accessible by pressing a button. Pressing the button will toggle the [ColorPicker] visibility.
///  
/// See also [BaseButton] which contains common properties and methods associated with this node.
///  
/// [b]Note:[/b] By default, the button may not be wide enough for the color preview swatch to be visible. Make sure to set [member Control.custom_minimum_size] to a big enough value to give the button enough space.
open class ColorPickerButton : Button {

    

    public override class var __godot_name: StringName { __godot_name_ColorPickerButton }

    static var _method_set_pick_color_2920490490: StringName! = nil
    static var _method_get_pick_color_3444240500: StringName! = nil
    static var _method_get_picker_331835996: StringName! = nil
    static var _method_get_popup_1322440207: StringName! = nil
    static var _method_set_edit_alpha_2586408642: StringName! = nil
    static var _method_is_editing_alpha_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ColorPickerButton == nil)
        __godot_name_ColorPickerButton = StringName(from: "ColorPickerButton")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_pick_color_2920490490 = StringName(from: "set_pick_color")
        assert(self._method_set_pick_color_2920490490 != nil)
        self._method_get_pick_color_3444240500 = StringName(from: "get_pick_color")
        assert(self._method_get_pick_color_3444240500 != nil)
        self._method_get_picker_331835996 = StringName(from: "get_picker")
        assert(self._method_get_picker_331835996 != nil)
        self._method_get_popup_1322440207 = StringName(from: "get_popup")
        assert(self._method_get_popup_1322440207 != nil)
        self._method_set_edit_alpha_2586408642 = StringName(from: "set_edit_alpha")
        assert(self._method_set_edit_alpha_2586408642 != nil)
        self._method_is_editing_alpha_36873697 = StringName(from: "is_editing_alpha")
        assert(self._method_is_editing_alpha_36873697 != nil)
    }

    public func set_pick_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_pick_color_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_pick_color_3444240500._native_ptr(),
                    3444240500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func get_picker() -> ColorPicker {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_picker_331835996._native_ptr(),
                    331835996)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ColorPicker(godot: __resPtr.pointee)
    }
    public func get_popup() -> PopupPanel {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_popup_1322440207._native_ptr(),
                    1322440207)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PopupPanel(godot: __resPtr.pointee)
    }
    public func set_edit_alpha(show: UInt8)  {
        withUnsafePointer(to: show) { show_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(show_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_edit_alpha_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_editing_alpha_36873697._native_ptr(),
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
}