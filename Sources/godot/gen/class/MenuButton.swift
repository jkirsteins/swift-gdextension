import godot_native

fileprivate var __godot_name_MenuButton: StringName! = nil

/// Special button that brings up a [PopupMenu] when clicked.
/// 
/// Special button that brings up a [PopupMenu] when clicked.
///  
/// New items can be created inside this [PopupMenu] using [code]get_popup().add_item("My Item Name")[/code]. You can also create them directly from the editor. To do so, select the [MenuButton] node, then in the toolbar at the top of the 2D editor, click [b]Items[/b] then click [b]Add[/b] in the popup. You will be able to give each item new properties.
///  
/// See also [BaseButton] which contains common properties and methods associated with this node.
open class MenuButton : Button {

    

    public override class var __godot_name: StringName { __godot_name_MenuButton }

    static var _method_get_popup_229722558: GDExtensionMethodBindPtr! = nil
    static var _method_show_popup_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_switch_on_hover_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_switch_on_hover_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_disable_shortcuts_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_count_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_count_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_MenuButton = StringName(from: "MenuButton")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_popup_229722558_name = StringName(from: "get_popup")
        self._method_get_popup_229722558 = self.interface.pointee.classdb_get_method_bind(__godot_name_MenuButton._native_ptr(), _method_get_popup_229722558_name._native_ptr(), 229722558)
        assert(MenuButton._method_get_popup_229722558 != nil)
        let _method_show_popup_3218959716_name = StringName(from: "show_popup")
        self._method_show_popup_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_MenuButton._native_ptr(), _method_show_popup_3218959716_name._native_ptr(), 3218959716)
        assert(MenuButton._method_show_popup_3218959716 != nil)
        let _method_set_switch_on_hover_2586408642_name = StringName(from: "set_switch_on_hover")
        self._method_set_switch_on_hover_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_MenuButton._native_ptr(), _method_set_switch_on_hover_2586408642_name._native_ptr(), 2586408642)
        assert(MenuButton._method_set_switch_on_hover_2586408642 != nil)
        let _method_is_switch_on_hover_2240911060_name = StringName(from: "is_switch_on_hover")
        self._method_is_switch_on_hover_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name_MenuButton._native_ptr(), _method_is_switch_on_hover_2240911060_name._native_ptr(), 2240911060)
        assert(MenuButton._method_is_switch_on_hover_2240911060 != nil)
        let _method_set_disable_shortcuts_2586408642_name = StringName(from: "set_disable_shortcuts")
        self._method_set_disable_shortcuts_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_MenuButton._native_ptr(), _method_set_disable_shortcuts_2586408642_name._native_ptr(), 2586408642)
        assert(MenuButton._method_set_disable_shortcuts_2586408642 != nil)
        let _method_set_item_count_1286410249_name = StringName(from: "set_item_count")
        self._method_set_item_count_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_MenuButton._native_ptr(), _method_set_item_count_1286410249_name._native_ptr(), 1286410249)
        assert(MenuButton._method_set_item_count_1286410249 != nil)
        let _method_get_item_count_3905245786_name = StringName(from: "get_item_count")
        self._method_get_item_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_MenuButton._native_ptr(), _method_get_item_count_3905245786_name._native_ptr(), 3905245786)
        assert(MenuButton._method_get_item_count_3905245786 != nil)
    }

    public func get_popup() -> PopupMenu {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_popup_229722558,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PopupMenu(godot: __resPtr.pointee)
    }
    public func show_popup()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_show_popup_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_switch_on_hover(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_switch_on_hover_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_switch_on_hover() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_switch_on_hover_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_disable_shortcuts(disabled: UInt8)  {
        withUnsafePointer(to: disabled) { disabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(disabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_disable_shortcuts_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_item_count(count: Int64)  {
        withUnsafePointer(to: count) { count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(count_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_count_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_item_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}