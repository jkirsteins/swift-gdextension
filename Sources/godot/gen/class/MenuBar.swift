import godot_native

fileprivate var __godot_name_MenuBar: StringName! = nil

/// A horizontal menu bar, which displays [PopupMenu]s or system global menu.
/// 
/// New items can be created by adding [PopupMenu] nodes to his node.
public class MenuBar : Control {

    

    public override class var __godot_name: StringName { __godot_name_MenuBar }

    static var _method_set_switch_on_hover_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_switch_on_hover_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_disable_shortcuts_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_prefer_global_menu_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_prefer_global_menu_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_native_menu_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_menu_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_direction_119160795: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_direction_797257663: GDExtensionMethodBindPtr! = nil
    static var _method_set_language_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_language_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_flat_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_flat_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_start_index_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_start_index_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_menu_title_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_get_menu_title_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_set_menu_tooltip_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_get_menu_tooltip_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_set_menu_disabled_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_menu_disabled_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_menu_hidden_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_menu_hidden_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_get_menu_popup_2100501353: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_MenuBar = StringName(from: "MenuBar")

        let _method_set_switch_on_hover_2586408642_name = StringName(from: "set_switch_on_hover")
        self._method_set_switch_on_hover_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_switch_on_hover_2586408642_name._native_ptr(), 2586408642)
        assert(MenuBar._method_set_switch_on_hover_2586408642 != nil)
        let _method_is_switch_on_hover_2240911060_name = StringName(from: "is_switch_on_hover")
        self._method_is_switch_on_hover_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_switch_on_hover_2240911060_name._native_ptr(), 2240911060)
        assert(MenuBar._method_is_switch_on_hover_2240911060 != nil)
        let _method_set_disable_shortcuts_2586408642_name = StringName(from: "set_disable_shortcuts")
        self._method_set_disable_shortcuts_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_disable_shortcuts_2586408642_name._native_ptr(), 2586408642)
        assert(MenuBar._method_set_disable_shortcuts_2586408642 != nil)
        let _method_set_prefer_global_menu_2586408642_name = StringName(from: "set_prefer_global_menu")
        self._method_set_prefer_global_menu_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_prefer_global_menu_2586408642_name._native_ptr(), 2586408642)
        assert(MenuBar._method_set_prefer_global_menu_2586408642 != nil)
        let _method_is_prefer_global_menu_36873697_name = StringName(from: "is_prefer_global_menu")
        self._method_is_prefer_global_menu_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_prefer_global_menu_36873697_name._native_ptr(), 36873697)
        assert(MenuBar._method_is_prefer_global_menu_36873697 != nil)
        let _method_is_native_menu_36873697_name = StringName(from: "is_native_menu")
        self._method_is_native_menu_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_native_menu_36873697_name._native_ptr(), 36873697)
        assert(MenuBar._method_is_native_menu_36873697 != nil)
        let _method_get_menu_count_3905245786_name = StringName(from: "get_menu_count")
        self._method_get_menu_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_menu_count_3905245786_name._native_ptr(), 3905245786)
        assert(MenuBar._method_get_menu_count_3905245786 != nil)
        let _method_set_text_direction_119160795_name = StringName(from: "set_text_direction")
        self._method_set_text_direction_119160795 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_text_direction_119160795_name._native_ptr(), 119160795)
        assert(MenuBar._method_set_text_direction_119160795 != nil)
        let _method_get_text_direction_797257663_name = StringName(from: "get_text_direction")
        self._method_get_text_direction_797257663 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_text_direction_797257663_name._native_ptr(), 797257663)
        assert(MenuBar._method_get_text_direction_797257663 != nil)
        let _method_set_language_83702148_name = StringName(from: "set_language")
        self._method_set_language_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_language_83702148_name._native_ptr(), 83702148)
        assert(MenuBar._method_set_language_83702148 != nil)
        let _method_get_language_201670096_name = StringName(from: "get_language")
        self._method_get_language_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_language_201670096_name._native_ptr(), 201670096)
        assert(MenuBar._method_get_language_201670096 != nil)
        let _method_set_flat_2586408642_name = StringName(from: "set_flat")
        self._method_set_flat_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_flat_2586408642_name._native_ptr(), 2586408642)
        assert(MenuBar._method_set_flat_2586408642 != nil)
        let _method_is_flat_36873697_name = StringName(from: "is_flat")
        self._method_is_flat_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_flat_36873697_name._native_ptr(), 36873697)
        assert(MenuBar._method_is_flat_36873697 != nil)
        let _method_set_start_index_1286410249_name = StringName(from: "set_start_index")
        self._method_set_start_index_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_start_index_1286410249_name._native_ptr(), 1286410249)
        assert(MenuBar._method_set_start_index_1286410249 != nil)
        let _method_get_start_index_3905245786_name = StringName(from: "get_start_index")
        self._method_get_start_index_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_start_index_3905245786_name._native_ptr(), 3905245786)
        assert(MenuBar._method_get_start_index_3905245786 != nil)
        let _method_set_menu_title_501894301_name = StringName(from: "set_menu_title")
        self._method_set_menu_title_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_menu_title_501894301_name._native_ptr(), 501894301)
        assert(MenuBar._method_set_menu_title_501894301 != nil)
        let _method_get_menu_title_844755477_name = StringName(from: "get_menu_title")
        self._method_get_menu_title_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_menu_title_844755477_name._native_ptr(), 844755477)
        assert(MenuBar._method_get_menu_title_844755477 != nil)
        let _method_set_menu_tooltip_501894301_name = StringName(from: "set_menu_tooltip")
        self._method_set_menu_tooltip_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_menu_tooltip_501894301_name._native_ptr(), 501894301)
        assert(MenuBar._method_set_menu_tooltip_501894301 != nil)
        let _method_get_menu_tooltip_844755477_name = StringName(from: "get_menu_tooltip")
        self._method_get_menu_tooltip_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_menu_tooltip_844755477_name._native_ptr(), 844755477)
        assert(MenuBar._method_get_menu_tooltip_844755477 != nil)
        let _method_set_menu_disabled_300928843_name = StringName(from: "set_menu_disabled")
        self._method_set_menu_disabled_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_menu_disabled_300928843_name._native_ptr(), 300928843)
        assert(MenuBar._method_set_menu_disabled_300928843 != nil)
        let _method_is_menu_disabled_1116898809_name = StringName(from: "is_menu_disabled")
        self._method_is_menu_disabled_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_menu_disabled_1116898809_name._native_ptr(), 1116898809)
        assert(MenuBar._method_is_menu_disabled_1116898809 != nil)
        let _method_set_menu_hidden_300928843_name = StringName(from: "set_menu_hidden")
        self._method_set_menu_hidden_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_menu_hidden_300928843_name._native_ptr(), 300928843)
        assert(MenuBar._method_set_menu_hidden_300928843 != nil)
        let _method_is_menu_hidden_1116898809_name = StringName(from: "is_menu_hidden")
        self._method_is_menu_hidden_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_menu_hidden_1116898809_name._native_ptr(), 1116898809)
        assert(MenuBar._method_is_menu_hidden_1116898809 != nil)
        let _method_get_menu_popup_2100501353_name = StringName(from: "get_menu_popup")
        self._method_get_menu_popup_2100501353 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_menu_popup_2100501353_name._native_ptr(), 2100501353)
        assert(MenuBar._method_get_menu_popup_2100501353 != nil)
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
            return UInt8(from: __resPtr.pointee)
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
    public func set_prefer_global_menu(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_prefer_global_menu_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_prefer_global_menu() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_prefer_global_menu_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func is_native_menu() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_native_menu_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_menu_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_menu_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
    public func set_flat(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_flat_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_flat() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_flat_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_start_index(enabled: Int64)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_start_index_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_start_index() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_start_index_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_menu_title(menu: Int64, title: String)  {
        withUnsafePointer(to: title) { title_native in
        withUnsafePointer(to: menu) { menu_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_native), .init(title_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_menu_title_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_menu_title(menu: Int64) -> String {
        withUnsafePointer(to: menu) { menu_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_menu_title_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func set_menu_tooltip(menu: Int64, tooltip: String)  {
        withUnsafePointer(to: tooltip) { tooltip_native in
        withUnsafePointer(to: menu) { menu_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_native), .init(tooltip_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_menu_tooltip_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_menu_tooltip(menu: Int64) -> String {
        withUnsafePointer(to: menu) { menu_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_menu_tooltip_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func set_menu_disabled(menu: Int64, disabled: UInt8)  {
        withUnsafePointer(to: disabled) { disabled_native in
        withUnsafePointer(to: menu) { menu_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_native), .init(disabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_menu_disabled_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func is_menu_disabled(menu: Int64) -> UInt8 {
        withUnsafePointer(to: menu) { menu_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_menu_disabled_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_menu_hidden(menu: Int64, hidden: UInt8)  {
        withUnsafePointer(to: hidden) { hidden_native in
        withUnsafePointer(to: menu) { menu_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_native), .init(hidden_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_menu_hidden_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func is_menu_hidden(menu: Int64) -> UInt8 {
        withUnsafePointer(to: menu) { menu_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_menu_hidden_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func get_menu_popup(menu: Int64) -> PopupMenu {
        withUnsafePointer(to: menu) { menu_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_menu_popup_2100501353,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PopupMenu(from: __resPtr.pointee)
        }
    }
}