import godot_native

fileprivate var __godot_name_ButtonGroup: StringName! = nil

/// Group of Buttons.
/// 
/// Group of [BaseButton]. The members of this group are treated like radio buttons in the sense that only one button can be pressed at the same time.
///  
/// Every member of the ButtonGroup should have [member BaseButton.toggle_mode] set to [code]true[/code].
open class ButtonGroup : Resource {

    

    public override class var __godot_name: StringName { __godot_name_ButtonGroup }

    static var _method_get_pressed_button_3886434893: StringName! = nil
    static var _method_get_buttons_2915620761: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ButtonGroup == nil)
        __godot_name_ButtonGroup = StringName(from: "ButtonGroup")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_pressed_button_3886434893 = StringName(from: "get_pressed_button")
        assert(self._method_get_pressed_button_3886434893 != nil)
        self._method_get_buttons_2915620761 = StringName(from: "get_buttons")
        assert(self._method_get_buttons_2915620761 != nil)
    }

    public func get_pressed_button() -> BaseButton {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_pressed_button_3886434893._native_ptr(),
                    3886434893)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_buttons_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [BaseButton](godot: __resPtr.pointee)
    }
}