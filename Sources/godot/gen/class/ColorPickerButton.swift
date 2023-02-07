import godot_native

fileprivate var __godot_name_ColorPickerButton: StringName! = nil

/// Button that pops out a [ColorPicker].
/// 
/// Encapsulates a [ColorPicker] making it accessible by pressing a button. Pressing the button will toggle the [ColorPicker] visibility.
///  
/// See also [BaseButton] which contains common properties and methods associated with this node.
///  
/// [b]Note:[/b] By default, the button may not be wide enough for the color preview swatch to be visible. Make sure to set [member Control.custom_minimum_size] to a big enough value to give the button enough space.
public class ColorPickerButton : Button {

    

    public override class var __godot_name: StringName { __godot_name_ColorPickerButton }

    static var _method_set_pick_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_pick_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_get_picker_331835996: GDExtensionMethodBindPtr! = nil
    static var _method_get_popup_1322440207: GDExtensionMethodBindPtr! = nil
    static var _method_set_edit_alpha_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_editing_alpha_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_ColorPickerButton = StringName(from: "ColorPickerButton")

        let _method_set_pick_color_2920490490_name = StringName(from: "set_pick_color")
        self._method_set_pick_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_pick_color_2920490490_name._native_ptr(), 2920490490)
        assert(ColorPickerButton._method_set_pick_color_2920490490 != nil)
        let _method_get_pick_color_3444240500_name = StringName(from: "get_pick_color")
        self._method_get_pick_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_pick_color_3444240500_name._native_ptr(), 3444240500)
        assert(ColorPickerButton._method_get_pick_color_3444240500 != nil)
        let _method_get_picker_331835996_name = StringName(from: "get_picker")
        self._method_get_picker_331835996 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_picker_331835996_name._native_ptr(), 331835996)
        assert(ColorPickerButton._method_get_picker_331835996 != nil)
        let _method_get_popup_1322440207_name = StringName(from: "get_popup")
        self._method_get_popup_1322440207 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_popup_1322440207_name._native_ptr(), 1322440207)
        assert(ColorPickerButton._method_get_popup_1322440207 != nil)
        let _method_set_edit_alpha_2586408642_name = StringName(from: "set_edit_alpha")
        self._method_set_edit_alpha_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_edit_alpha_2586408642_name._native_ptr(), 2586408642)
        assert(ColorPickerButton._method_set_edit_alpha_2586408642 != nil)
        let _method_is_editing_alpha_36873697_name = StringName(from: "is_editing_alpha")
        self._method_is_editing_alpha_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_editing_alpha_36873697_name._native_ptr(), 36873697)
        assert(ColorPickerButton._method_is_editing_alpha_36873697 != nil)
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
            return Color(from: __resPtr.pointee)
    }
    public func get_picker() -> ColorPicker {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_picker_331835996,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ColorPicker(from: __resPtr.pointee)
    }
    public func get_popup() -> PopupPanel {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_popup_1322440207,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PopupPanel(from: __resPtr.pointee)
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
            return UInt8(from: __resPtr.pointee)
    }
}