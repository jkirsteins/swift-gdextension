import godot_native

fileprivate var __godot_name_OptionButton: StringName! = nil

/// Button control that provides selectable options when pressed.
/// 
/// OptionButton is a type button that provides a selectable list of items when pressed. The item selected becomes the "current" item and is displayed as the button text.
///  
/// See also [BaseButton] which contains common properties and methods associated with this node.
///  
/// [b]Note:[/b] Properties [member Button.text] and [member Button.icon] are automatically set based on the selected item. They shouldn't be changed manually.
open class OptionButton : Button {

    

    public override class var __godot_name: StringName { __godot_name_OptionButton }

    static var _method_add_item_3043792800: GDExtensionMethodBindPtr! = nil
    static var _method_add_icon_item_3944051090: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_text_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_icon_666127730: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_disabled_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_id_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_metadata_2152698145: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_tooltip_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_text_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_icon_3536238170: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_id_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_index_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_metadata_4227898402: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_tooltip_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_is_item_disabled_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_is_item_separator_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_add_separator_3005725572: GDExtensionMethodBindPtr! = nil
    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_select_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_selected_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_selected_id_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_selected_metadata_1214101251: GDExtensionMethodBindPtr! = nil
    static var _method_remove_item_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_popup_229722558: GDExtensionMethodBindPtr! = nil
    static var _method_show_popup_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_count_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_has_selectable_items_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_selectable_item_894402480: GDExtensionMethodBindPtr! = nil
    static var _method_set_fit_to_longest_item_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_fit_to_longest_item_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_OptionButton = StringName(from: "OptionButton")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_add_item_3043792800_name = StringName(from: "add_item")
        self._method_add_item_3043792800 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_add_item_3043792800_name._native_ptr(), 3043792800)
        assert(OptionButton._method_add_item_3043792800 != nil)
        let _method_add_icon_item_3944051090_name = StringName(from: "add_icon_item")
        self._method_add_icon_item_3944051090 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_add_icon_item_3944051090_name._native_ptr(), 3944051090)
        assert(OptionButton._method_add_icon_item_3944051090 != nil)
        let _method_set_item_text_501894301_name = StringName(from: "set_item_text")
        self._method_set_item_text_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_set_item_text_501894301_name._native_ptr(), 501894301)
        assert(OptionButton._method_set_item_text_501894301 != nil)
        let _method_set_item_icon_666127730_name = StringName(from: "set_item_icon")
        self._method_set_item_icon_666127730 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_set_item_icon_666127730_name._native_ptr(), 666127730)
        assert(OptionButton._method_set_item_icon_666127730 != nil)
        let _method_set_item_disabled_300928843_name = StringName(from: "set_item_disabled")
        self._method_set_item_disabled_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_set_item_disabled_300928843_name._native_ptr(), 300928843)
        assert(OptionButton._method_set_item_disabled_300928843 != nil)
        let _method_set_item_id_3937882851_name = StringName(from: "set_item_id")
        self._method_set_item_id_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_set_item_id_3937882851_name._native_ptr(), 3937882851)
        assert(OptionButton._method_set_item_id_3937882851 != nil)
        let _method_set_item_metadata_2152698145_name = StringName(from: "set_item_metadata")
        self._method_set_item_metadata_2152698145 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_set_item_metadata_2152698145_name._native_ptr(), 2152698145)
        assert(OptionButton._method_set_item_metadata_2152698145 != nil)
        let _method_set_item_tooltip_501894301_name = StringName(from: "set_item_tooltip")
        self._method_set_item_tooltip_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_set_item_tooltip_501894301_name._native_ptr(), 501894301)
        assert(OptionButton._method_set_item_tooltip_501894301 != nil)
        let _method_get_item_text_844755477_name = StringName(from: "get_item_text")
        self._method_get_item_text_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_get_item_text_844755477_name._native_ptr(), 844755477)
        assert(OptionButton._method_get_item_text_844755477 != nil)
        let _method_get_item_icon_3536238170_name = StringName(from: "get_item_icon")
        self._method_get_item_icon_3536238170 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_get_item_icon_3536238170_name._native_ptr(), 3536238170)
        assert(OptionButton._method_get_item_icon_3536238170 != nil)
        let _method_get_item_id_923996154_name = StringName(from: "get_item_id")
        self._method_get_item_id_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_get_item_id_923996154_name._native_ptr(), 923996154)
        assert(OptionButton._method_get_item_id_923996154 != nil)
        let _method_get_item_index_923996154_name = StringName(from: "get_item_index")
        self._method_get_item_index_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_get_item_index_923996154_name._native_ptr(), 923996154)
        assert(OptionButton._method_get_item_index_923996154 != nil)
        let _method_get_item_metadata_4227898402_name = StringName(from: "get_item_metadata")
        self._method_get_item_metadata_4227898402 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_get_item_metadata_4227898402_name._native_ptr(), 4227898402)
        assert(OptionButton._method_get_item_metadata_4227898402 != nil)
        let _method_get_item_tooltip_844755477_name = StringName(from: "get_item_tooltip")
        self._method_get_item_tooltip_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_get_item_tooltip_844755477_name._native_ptr(), 844755477)
        assert(OptionButton._method_get_item_tooltip_844755477 != nil)
        let _method_is_item_disabled_1116898809_name = StringName(from: "is_item_disabled")
        self._method_is_item_disabled_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_is_item_disabled_1116898809_name._native_ptr(), 1116898809)
        assert(OptionButton._method_is_item_disabled_1116898809 != nil)
        let _method_is_item_separator_1116898809_name = StringName(from: "is_item_separator")
        self._method_is_item_separator_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_is_item_separator_1116898809_name._native_ptr(), 1116898809)
        assert(OptionButton._method_is_item_separator_1116898809 != nil)
        let _method_add_separator_3005725572_name = StringName(from: "add_separator")
        self._method_add_separator_3005725572 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_add_separator_3005725572_name._native_ptr(), 3005725572)
        assert(OptionButton._method_add_separator_3005725572 != nil)
        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(OptionButton._method_clear_3218959716 != nil)
        let _method_select_1286410249_name = StringName(from: "select")
        self._method_select_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_select_1286410249_name._native_ptr(), 1286410249)
        assert(OptionButton._method_select_1286410249 != nil)
        let _method_get_selected_3905245786_name = StringName(from: "get_selected")
        self._method_get_selected_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_get_selected_3905245786_name._native_ptr(), 3905245786)
        assert(OptionButton._method_get_selected_3905245786 != nil)
        let _method_get_selected_id_3905245786_name = StringName(from: "get_selected_id")
        self._method_get_selected_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_get_selected_id_3905245786_name._native_ptr(), 3905245786)
        assert(OptionButton._method_get_selected_id_3905245786 != nil)
        let _method_get_selected_metadata_1214101251_name = StringName(from: "get_selected_metadata")
        self._method_get_selected_metadata_1214101251 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_get_selected_metadata_1214101251_name._native_ptr(), 1214101251)
        assert(OptionButton._method_get_selected_metadata_1214101251 != nil)
        let _method_remove_item_1286410249_name = StringName(from: "remove_item")
        self._method_remove_item_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_remove_item_1286410249_name._native_ptr(), 1286410249)
        assert(OptionButton._method_remove_item_1286410249 != nil)
        let _method_get_popup_229722558_name = StringName(from: "get_popup")
        self._method_get_popup_229722558 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_get_popup_229722558_name._native_ptr(), 229722558)
        assert(OptionButton._method_get_popup_229722558 != nil)
        let _method_show_popup_3218959716_name = StringName(from: "show_popup")
        self._method_show_popup_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_show_popup_3218959716_name._native_ptr(), 3218959716)
        assert(OptionButton._method_show_popup_3218959716 != nil)
        let _method_set_item_count_1286410249_name = StringName(from: "set_item_count")
        self._method_set_item_count_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_set_item_count_1286410249_name._native_ptr(), 1286410249)
        assert(OptionButton._method_set_item_count_1286410249 != nil)
        let _method_get_item_count_3905245786_name = StringName(from: "get_item_count")
        self._method_get_item_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_get_item_count_3905245786_name._native_ptr(), 3905245786)
        assert(OptionButton._method_get_item_count_3905245786 != nil)
        let _method_has_selectable_items_36873697_name = StringName(from: "has_selectable_items")
        self._method_has_selectable_items_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_has_selectable_items_36873697_name._native_ptr(), 36873697)
        assert(OptionButton._method_has_selectable_items_36873697 != nil)
        let _method_get_selectable_item_894402480_name = StringName(from: "get_selectable_item")
        self._method_get_selectable_item_894402480 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_get_selectable_item_894402480_name._native_ptr(), 894402480)
        assert(OptionButton._method_get_selectable_item_894402480 != nil)
        let _method_set_fit_to_longest_item_2586408642_name = StringName(from: "set_fit_to_longest_item")
        self._method_set_fit_to_longest_item_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_set_fit_to_longest_item_2586408642_name._native_ptr(), 2586408642)
        assert(OptionButton._method_set_fit_to_longest_item_2586408642 != nil)
        let _method_is_fit_to_longest_item_36873697_name = StringName(from: "is_fit_to_longest_item")
        self._method_is_fit_to_longest_item_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptionButton._native_ptr(), _method_is_fit_to_longest_item_36873697_name._native_ptr(), 36873697)
        assert(OptionButton._method_is_fit_to_longest_item_36873697 != nil)
    }

    public func add_item(label: godot.String, id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let label_native = label._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(label_native), .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_item_3043792800,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_icon_item(texture: Texture2D, label: godot.String, id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let label_native = label._native_ptr()
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(label_native), .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_icon_item_3944051090,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_item_text(idx: Int64, text: godot.String)  {
        withUnsafePointer(to: idx) { idx_native in
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_text_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_item_icon(idx: Int64, texture: Texture2D)  {
        withUnsafePointer(to: idx) { idx_native in
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_icon_666127730,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_item_disabled(idx: Int64, disabled: UInt8)  {
        withUnsafePointer(to: disabled) { disabled_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(disabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_disabled_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_item_id(idx: Int64, id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_id_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_item_metadata(idx: Int64, metadata: Variant)  {
        withUnsafePointer(to: idx) { idx_native in
        let metadata_native = metadata._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(metadata_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_metadata_2152698145,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_item_tooltip(idx: Int64, tooltip: godot.String)  {
        withUnsafePointer(to: idx) { idx_native in
        let tooltip_native = tooltip._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(tooltip_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_tooltip_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_item_text(idx: Int64) -> godot.String {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_text_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func get_item_icon(idx: Int64) -> Texture2D {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_icon_3536238170,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
        }
    }
    public func get_item_id(idx: Int64) -> Int64 {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_id_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_item_index(id: Int64) -> Int64 {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_index_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_item_metadata(idx: Int64) -> Variant {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_metadata_4227898402,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
        }
    }
    public func get_item_tooltip(idx: Int64) -> godot.String {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_tooltip_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func is_item_disabled(idx: Int64) -> UInt8 {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_item_disabled_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func is_item_separator(idx: Int64) -> UInt8 {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_item_separator_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func add_separator(text: godot.String)  {
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_separator_3005725572,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
    public func select(idx: Int64)  {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_select_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_selected() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selected_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_selected_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selected_id_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_selected_metadata() -> Variant {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selected_metadata_1214101251,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
    public func remove_item(idx: Int64)  {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_item_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
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
    public func has_selectable_items() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_selectable_items_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_selectable_item(from_last: UInt8) -> Int64 {
        withUnsafePointer(to: from_last) { from_last_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_last_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selectable_item_894402480,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func set_fit_to_longest_item(fit: UInt8)  {
        withUnsafePointer(to: fit) { fit_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fit_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fit_to_longest_item_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_fit_to_longest_item() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_fit_to_longest_item_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}