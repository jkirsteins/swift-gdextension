import godot_native

fileprivate var __godot_name_ButtonGroup: StringName! = nil

/// Group of Buttons.
/// 
/// Group of [BaseButton]. The members of this group are treated like radio buttons in the sense that only one button can be pressed at the same time.
///  
/// Every member of the ButtonGroup should have [member BaseButton.toggle_mode] set to [code]true[/code].
open class ButtonGroup : Resource {

    

    public override class var __godot_name: StringName { __godot_name_ButtonGroup }

    static var _method_get_pressed_button_3886434893: GDExtensionMethodBindPtr! = nil
    static var _method_get_buttons_2915620761: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_ButtonGroup = StringName(from: "ButtonGroup")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_pressed_button_3886434893_name = StringName(from: "get_pressed_button")
        self._method_get_pressed_button_3886434893 = self.interface.pointee.classdb_get_method_bind(__godot_name_ButtonGroup._native_ptr(), _method_get_pressed_button_3886434893_name._native_ptr(), 3886434893)
        assert(ButtonGroup._method_get_pressed_button_3886434893 != nil)
        let _method_get_buttons_2915620761_name = StringName(from: "get_buttons")
        self._method_get_buttons_2915620761 = self.interface.pointee.classdb_get_method_bind(__godot_name_ButtonGroup._native_ptr(), _method_get_buttons_2915620761_name._native_ptr(), 2915620761)
        assert(ButtonGroup._method_get_buttons_2915620761 != nil)
    }

    public func get_pressed_button() -> BaseButton {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pressed_button_3886434893,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseButton(godot: __resPtr.pointee)
    }
    public func get_buttons() -> [BaseButton] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_buttons_2915620761,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [BaseButton](godot: __resPtr.pointee)
    }
}