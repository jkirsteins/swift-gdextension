import godot_native

fileprivate var __godot_name_Tree: StringName! = nil

/// Control to show a tree of items.
/// 
/// This shows a tree of items that can be selected, expanded and collapsed. The tree can have multiple columns with custom controls like text editing, buttons and popups. It can be useful for structured displays and interactions.
///  
/// Trees are built via code, using [TreeItem] objects to create the structure. They have a single root but multiple roots can be simulated if a dummy hidden root is added.
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// func _ready():
///  
///     var tree = Tree.new()
///  
///     var root = tree.create_item()
///  
///     tree.hide_root = true
///  
///     var child1 = tree.create_item(root)
///  
///     var child2 = tree.create_item(root)
///  
///     var subchild1 = tree.create_item(child1)
///  
///     subchild1.set_text(0, "Subchild1")
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// public override void _Ready()
///  
/// {
///  
///     var tree = new Tree();
///  
///     TreeItem root = tree.CreateItem();
///  
///     tree.HideRoot = true;
///  
///     TreeItem child1 = tree.CreateItem(root);
///  
///     TreeItem child2 = tree.CreateItem(root);
///  
///     TreeItem subchild1 = tree.CreateItem(child1);
///  
///     subchild1.SetText(0, "Subchild1");
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// To iterate over all the [TreeItem] objects in a [Tree] object, use [method TreeItem.get_next] and [method TreeItem.get_first_child] after getting the root through [method get_root]. You can use [method Object.free] on a [TreeItem] to remove it from the [Tree].
///  
/// [b]Incremental search:[/b] Like [ItemList] and [PopupMenu], [Tree] supports searching within the list while the control is focused. Press a key that matches the first letter of an item's name to select the first item starting with the given letter. After that point, there are two ways to perform incremental search: 1) Press the same key again before the timeout duration to select the next item starting with the same letter. 2) Press letter keys that match the rest of the word before the timeout duration to match to select the item in question directly. Both of these actions will be reset to the beginning of the list if the timeout duration has passed since the last keystroke was registered. You can adjust the timeout duration by changing [member ProjectSettings.gui/timers/incremental_search_max_interval_msec].
open class Tree : Control {

    public enum SelectMode : Int32 {
        case SELECT_SINGLE = 0
        case SELECT_ROW = 1
        case SELECT_MULTI = 2
    }
    public enum DropModeFlags : Int32 {
        case DROP_MODE_DISABLED = 0
        case DROP_MODE_ON_ITEM = 1
        case DROP_MODE_INBETWEEN = 2
    }

    public override class var __godot_name: StringName { __godot_name_Tree }

    static var _method_clear_3218959716: StringName! = nil
    static var _method_create_item_528467046: StringName! = nil
    static var _method_get_root_1514277247: StringName! = nil
    static var _method_set_column_custom_minimum_width_3937882851: StringName! = nil
    static var _method_set_column_expand_300928843: StringName! = nil
    static var _method_set_column_expand_ratio_3937882851: StringName! = nil
    static var _method_set_column_clip_content_300928843: StringName! = nil
    static var _method_is_column_expanding_1116898809: StringName! = nil
    static var _method_is_column_clipping_content_1116898809: StringName! = nil
    static var _method_get_column_expand_ratio_923996154: StringName! = nil
    static var _method_get_column_width_923996154: StringName! = nil
    static var _method_set_hide_root_2586408642: StringName! = nil
    static var _method_is_root_hidden_36873697: StringName! = nil
    static var _method_get_next_selected_873446299: StringName! = nil
    static var _method_get_selected_1514277247: StringName! = nil
    static var _method_set_selected_2662547442: StringName! = nil
    static var _method_get_selected_column_3905245786: StringName! = nil
    static var _method_get_pressed_button_3905245786: StringName! = nil
    static var _method_set_select_mode_3223887270: StringName! = nil
    static var _method_get_select_mode_100748571: StringName! = nil
    static var _method_deselect_all_3218959716: StringName! = nil
    static var _method_set_columns_1286410249: StringName! = nil
    static var _method_get_columns_3905245786: StringName! = nil
    static var _method_get_edited_1514277247: StringName! = nil
    static var _method_get_edited_column_3905245786: StringName! = nil
    static var _method_edit_selected_2240911060: StringName! = nil
    static var _method_get_custom_popup_rect_1639390495: StringName! = nil
    static var _method_get_item_area_rect_1235226180: StringName! = nil
    static var _method_get_item_at_position_4193340126: StringName! = nil
    static var _method_get_column_at_position_3820158470: StringName! = nil
    static var _method_get_drop_section_at_position_3820158470: StringName! = nil
    static var _method_get_button_id_at_position_3820158470: StringName! = nil
    static var _method_ensure_cursor_is_visible_3218959716: StringName! = nil
    static var _method_set_column_titles_visible_2586408642: StringName! = nil
    static var _method_are_column_titles_visible_36873697: StringName! = nil
    static var _method_set_column_title_501894301: StringName! = nil
    static var _method_get_column_title_844755477: StringName! = nil
    static var _method_set_column_title_direction_1707680378: StringName! = nil
    static var _method_get_column_title_direction_4235602388: StringName! = nil
    static var _method_set_column_title_language_501894301: StringName! = nil
    static var _method_get_column_title_language_844755477: StringName! = nil
    static var _method_get_scroll_3341600327: StringName! = nil
    static var _method_scroll_to_item_1314737213: StringName! = nil
    static var _method_set_h_scroll_enabled_2586408642: StringName! = nil
    static var _method_is_h_scroll_enabled_36873697: StringName! = nil
    static var _method_set_v_scroll_enabled_2586408642: StringName! = nil
    static var _method_is_v_scroll_enabled_36873697: StringName! = nil
    static var _method_set_hide_folding_2586408642: StringName! = nil
    static var _method_is_folding_hidden_36873697: StringName! = nil
    static var _method_set_enable_recursive_folding_2586408642: StringName! = nil
    static var _method_is_recursive_folding_enabled_36873697: StringName! = nil
    static var _method_set_drop_mode_flags_1286410249: StringName! = nil
    static var _method_get_drop_mode_flags_3905245786: StringName! = nil
    static var _method_set_allow_rmb_select_2586408642: StringName! = nil
    static var _method_get_allow_rmb_select_36873697: StringName! = nil
    static var _method_set_allow_reselect_2586408642: StringName! = nil
    static var _method_get_allow_reselect_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Tree == nil)
        __godot_name_Tree = StringName(from: "Tree")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_clear_3218959716 = StringName(from: "clear")
        assert(self._method_clear_3218959716 != nil)
        self._method_create_item_528467046 = StringName(from: "create_item")
        assert(self._method_create_item_528467046 != nil)
        self._method_get_root_1514277247 = StringName(from: "get_root")
        assert(self._method_get_root_1514277247 != nil)
        self._method_set_column_custom_minimum_width_3937882851 = StringName(from: "set_column_custom_minimum_width")
        assert(self._method_set_column_custom_minimum_width_3937882851 != nil)
        self._method_set_column_expand_300928843 = StringName(from: "set_column_expand")
        assert(self._method_set_column_expand_300928843 != nil)
        self._method_set_column_expand_ratio_3937882851 = StringName(from: "set_column_expand_ratio")
        assert(self._method_set_column_expand_ratio_3937882851 != nil)
        self._method_set_column_clip_content_300928843 = StringName(from: "set_column_clip_content")
        assert(self._method_set_column_clip_content_300928843 != nil)
        self._method_is_column_expanding_1116898809 = StringName(from: "is_column_expanding")
        assert(self._method_is_column_expanding_1116898809 != nil)
        self._method_is_column_clipping_content_1116898809 = StringName(from: "is_column_clipping_content")
        assert(self._method_is_column_clipping_content_1116898809 != nil)
        self._method_get_column_expand_ratio_923996154 = StringName(from: "get_column_expand_ratio")
        assert(self._method_get_column_expand_ratio_923996154 != nil)
        self._method_get_column_width_923996154 = StringName(from: "get_column_width")
        assert(self._method_get_column_width_923996154 != nil)
        self._method_set_hide_root_2586408642 = StringName(from: "set_hide_root")
        assert(self._method_set_hide_root_2586408642 != nil)
        self._method_is_root_hidden_36873697 = StringName(from: "is_root_hidden")
        assert(self._method_is_root_hidden_36873697 != nil)
        self._method_get_next_selected_873446299 = StringName(from: "get_next_selected")
        assert(self._method_get_next_selected_873446299 != nil)
        self._method_get_selected_1514277247 = StringName(from: "get_selected")
        assert(self._method_get_selected_1514277247 != nil)
        self._method_set_selected_2662547442 = StringName(from: "set_selected")
        assert(self._method_set_selected_2662547442 != nil)
        self._method_get_selected_column_3905245786 = StringName(from: "get_selected_column")
        assert(self._method_get_selected_column_3905245786 != nil)
        self._method_get_pressed_button_3905245786 = StringName(from: "get_pressed_button")
        assert(self._method_get_pressed_button_3905245786 != nil)
        self._method_set_select_mode_3223887270 = StringName(from: "set_select_mode")
        assert(self._method_set_select_mode_3223887270 != nil)
        self._method_get_select_mode_100748571 = StringName(from: "get_select_mode")
        assert(self._method_get_select_mode_100748571 != nil)
        self._method_deselect_all_3218959716 = StringName(from: "deselect_all")
        assert(self._method_deselect_all_3218959716 != nil)
        self._method_set_columns_1286410249 = StringName(from: "set_columns")
        assert(self._method_set_columns_1286410249 != nil)
        self._method_get_columns_3905245786 = StringName(from: "get_columns")
        assert(self._method_get_columns_3905245786 != nil)
        self._method_get_edited_1514277247 = StringName(from: "get_edited")
        assert(self._method_get_edited_1514277247 != nil)
        self._method_get_edited_column_3905245786 = StringName(from: "get_edited_column")
        assert(self._method_get_edited_column_3905245786 != nil)
        self._method_edit_selected_2240911060 = StringName(from: "edit_selected")
        assert(self._method_edit_selected_2240911060 != nil)
        self._method_get_custom_popup_rect_1639390495 = StringName(from: "get_custom_popup_rect")
        assert(self._method_get_custom_popup_rect_1639390495 != nil)
        self._method_get_item_area_rect_1235226180 = StringName(from: "get_item_area_rect")
        assert(self._method_get_item_area_rect_1235226180 != nil)
        self._method_get_item_at_position_4193340126 = StringName(from: "get_item_at_position")
        assert(self._method_get_item_at_position_4193340126 != nil)
        self._method_get_column_at_position_3820158470 = StringName(from: "get_column_at_position")
        assert(self._method_get_column_at_position_3820158470 != nil)
        self._method_get_drop_section_at_position_3820158470 = StringName(from: "get_drop_section_at_position")
        assert(self._method_get_drop_section_at_position_3820158470 != nil)
        self._method_get_button_id_at_position_3820158470 = StringName(from: "get_button_id_at_position")
        assert(self._method_get_button_id_at_position_3820158470 != nil)
        self._method_ensure_cursor_is_visible_3218959716 = StringName(from: "ensure_cursor_is_visible")
        assert(self._method_ensure_cursor_is_visible_3218959716 != nil)
        self._method_set_column_titles_visible_2586408642 = StringName(from: "set_column_titles_visible")
        assert(self._method_set_column_titles_visible_2586408642 != nil)
        self._method_are_column_titles_visible_36873697 = StringName(from: "are_column_titles_visible")
        assert(self._method_are_column_titles_visible_36873697 != nil)
        self._method_set_column_title_501894301 = StringName(from: "set_column_title")
        assert(self._method_set_column_title_501894301 != nil)
        self._method_get_column_title_844755477 = StringName(from: "get_column_title")
        assert(self._method_get_column_title_844755477 != nil)
        self._method_set_column_title_direction_1707680378 = StringName(from: "set_column_title_direction")
        assert(self._method_set_column_title_direction_1707680378 != nil)
        self._method_get_column_title_direction_4235602388 = StringName(from: "get_column_title_direction")
        assert(self._method_get_column_title_direction_4235602388 != nil)
        self._method_set_column_title_language_501894301 = StringName(from: "set_column_title_language")
        assert(self._method_set_column_title_language_501894301 != nil)
        self._method_get_column_title_language_844755477 = StringName(from: "get_column_title_language")
        assert(self._method_get_column_title_language_844755477 != nil)
        self._method_get_scroll_3341600327 = StringName(from: "get_scroll")
        assert(self._method_get_scroll_3341600327 != nil)
        self._method_scroll_to_item_1314737213 = StringName(from: "scroll_to_item")
        assert(self._method_scroll_to_item_1314737213 != nil)
        self._method_set_h_scroll_enabled_2586408642 = StringName(from: "set_h_scroll_enabled")
        assert(self._method_set_h_scroll_enabled_2586408642 != nil)
        self._method_is_h_scroll_enabled_36873697 = StringName(from: "is_h_scroll_enabled")
        assert(self._method_is_h_scroll_enabled_36873697 != nil)
        self._method_set_v_scroll_enabled_2586408642 = StringName(from: "set_v_scroll_enabled")
        assert(self._method_set_v_scroll_enabled_2586408642 != nil)
        self._method_is_v_scroll_enabled_36873697 = StringName(from: "is_v_scroll_enabled")
        assert(self._method_is_v_scroll_enabled_36873697 != nil)
        self._method_set_hide_folding_2586408642 = StringName(from: "set_hide_folding")
        assert(self._method_set_hide_folding_2586408642 != nil)
        self._method_is_folding_hidden_36873697 = StringName(from: "is_folding_hidden")
        assert(self._method_is_folding_hidden_36873697 != nil)
        self._method_set_enable_recursive_folding_2586408642 = StringName(from: "set_enable_recursive_folding")
        assert(self._method_set_enable_recursive_folding_2586408642 != nil)
        self._method_is_recursive_folding_enabled_36873697 = StringName(from: "is_recursive_folding_enabled")
        assert(self._method_is_recursive_folding_enabled_36873697 != nil)
        self._method_set_drop_mode_flags_1286410249 = StringName(from: "set_drop_mode_flags")
        assert(self._method_set_drop_mode_flags_1286410249 != nil)
        self._method_get_drop_mode_flags_3905245786 = StringName(from: "get_drop_mode_flags")
        assert(self._method_get_drop_mode_flags_3905245786 != nil)
        self._method_set_allow_rmb_select_2586408642 = StringName(from: "set_allow_rmb_select")
        assert(self._method_set_allow_rmb_select_2586408642 != nil)
        self._method_get_allow_rmb_select_36873697 = StringName(from: "get_allow_rmb_select")
        assert(self._method_get_allow_rmb_select_36873697 != nil)
        self._method_set_allow_reselect_2586408642 = StringName(from: "set_allow_reselect")
        assert(self._method_set_allow_reselect_2586408642 != nil)
        self._method_get_allow_reselect_36873697 = StringName(from: "get_allow_reselect")
        assert(self._method_get_allow_reselect_36873697 != nil)
    }

    public func clear()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func create_item(parent: TreeItem, index: Int64) -> TreeItem {
        withUnsafePointer(to: index) { index_native in
        let parent_native = parent._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parent_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_item_528467046._native_ptr(),
                    528467046)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem(godot: __resPtr.pointee)
        }
    }
    public func get_root() -> TreeItem {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_root_1514277247._native_ptr(),
                    1514277247)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem(godot: __resPtr.pointee)
    }
    public func set_column_custom_minimum_width(column: Int64, min_width: Int64)  {
        withUnsafePointer(to: min_width) { min_width_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(min_width_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_column_custom_minimum_width_3937882851._native_ptr(),
                    3937882851)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_column_expand(column: Int64, expand: UInt8)  {
        withUnsafePointer(to: expand) { expand_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(expand_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_column_expand_300928843._native_ptr(),
                    300928843)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_column_expand_ratio(column: Int64, ratio: Int64)  {
        withUnsafePointer(to: ratio) { ratio_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(ratio_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_column_expand_ratio_3937882851._native_ptr(),
                    3937882851)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_column_clip_content(column: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_column_clip_content_300928843._native_ptr(),
                    300928843)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func is_column_expanding(column: Int64) -> UInt8 {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_column_expanding_1116898809._native_ptr(),
                    1116898809)
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
    public func is_column_clipping_content(column: Int64) -> UInt8 {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_column_clipping_content_1116898809._native_ptr(),
                    1116898809)
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
    public func get_column_expand_ratio(column: Int64) -> Int64 {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_column_expand_ratio_923996154._native_ptr(),
                    923996154)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_column_width(column: Int64) -> Int64 {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_column_width_923996154._native_ptr(),
                    923996154)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func set_hide_root(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_hide_root_2586408642._native_ptr(),
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
    public func is_root_hidden() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_root_hidden_36873697._native_ptr(),
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
    public func get_next_selected(from: TreeItem) -> TreeItem {
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_next_selected_873446299._native_ptr(),
                    873446299)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem(godot: __resPtr.pointee)
    }
    public func get_selected() -> TreeItem {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_selected_1514277247._native_ptr(),
                    1514277247)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem(godot: __resPtr.pointee)
    }
    public func set_selected(item: TreeItem, column: Int64)  {
        withUnsafePointer(to: column) { column_native in
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(column_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_selected_2662547442._native_ptr(),
                    2662547442)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_selected_column() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_selected_column_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_pressed_button() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_pressed_button_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_select_mode(mode: Tree.SelectMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_select_mode_3223887270._native_ptr(),
                    3223887270)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_select_mode() -> Tree.SelectMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_select_mode_100748571._native_ptr(),
                    100748571)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Tree.SelectMode(godot: __resPtr.pointee)
    }
    public func deselect_all()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_deselect_all_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_columns(amount: Int64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_columns_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_columns() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_columns_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_edited() -> TreeItem {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_edited_1514277247._native_ptr(),
                    1514277247)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem(godot: __resPtr.pointee)
    }
    public func get_edited_column() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_edited_column_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func edit_selected() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_edit_selected_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_custom_popup_rect() -> Rect2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_custom_popup_rect_1639390495._native_ptr(),
                    1639390495)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(godot: __resPtr.pointee)
    }
    public func get_item_area_rect(item: TreeItem, column: Int64, button_index: Int64) -> Rect2 {
        withUnsafePointer(to: button_index) { button_index_native in
        withUnsafePointer(to: column) { column_native in
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(column_native), .init(button_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_item_area_rect_1235226180._native_ptr(),
                    1235226180)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(godot: __resPtr.pointee)
        }
        }
    }
    public func get_item_at_position(position: Vector2) -> TreeItem {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_item_at_position_4193340126._native_ptr(),
                    4193340126)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TreeItem(godot: __resPtr.pointee)
    }
    public func get_column_at_position(position: Vector2) -> Int64 {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_column_at_position_3820158470._native_ptr(),
                    3820158470)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_drop_section_at_position(position: Vector2) -> Int64 {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_drop_section_at_position_3820158470._native_ptr(),
                    3820158470)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_button_id_at_position(position: Vector2) -> Int64 {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_button_id_at_position_3820158470._native_ptr(),
                    3820158470)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func ensure_cursor_is_visible()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_ensure_cursor_is_visible_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_column_titles_visible(visible: UInt8)  {
        withUnsafePointer(to: visible) { visible_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(visible_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_column_titles_visible_2586408642._native_ptr(),
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
    public func are_column_titles_visible() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_are_column_titles_visible_36873697._native_ptr(),
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
    public func set_column_title(column: Int64, title: godot.String)  {
        withUnsafePointer(to: column) { column_native in
        let title_native = title._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(title_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_column_title_501894301._native_ptr(),
                    501894301)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_column_title(column: Int64) -> godot.String {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_column_title_844755477._native_ptr(),
                    844755477)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func set_column_title_direction(column: Int64, direction: Control.TextDirection)  {
        withUnsafePointer(to: column) { column_native in
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(direction_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_column_title_direction_1707680378._native_ptr(),
                    1707680378)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_column_title_direction(column: Int64) -> Control.TextDirection {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_column_title_direction_4235602388._native_ptr(),
                    4235602388)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control.TextDirection(godot: __resPtr.pointee)
        }
    }
    public func set_column_title_language(column: Int64, language: godot.String)  {
        withUnsafePointer(to: column) { column_native in
        let language_native = language._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native), .init(language_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_column_title_language_501894301._native_ptr(),
                    501894301)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_column_title_language(column: Int64) -> godot.String {
        withUnsafePointer(to: column) { column_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_column_title_language_844755477._native_ptr(),
                    844755477)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func get_scroll() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_scroll_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func scroll_to_item(item: TreeItem, center_on_item: UInt8)  {
        withUnsafePointer(to: center_on_item) { center_on_item_native in
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(center_on_item_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_scroll_to_item_1314737213._native_ptr(),
                    1314737213)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_h_scroll_enabled(h_scroll: UInt8)  {
        withUnsafePointer(to: h_scroll) { h_scroll_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(h_scroll_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_h_scroll_enabled_2586408642._native_ptr(),
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
    public func is_h_scroll_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_h_scroll_enabled_36873697._native_ptr(),
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
    public func set_v_scroll_enabled(h_scroll: UInt8)  {
        withUnsafePointer(to: h_scroll) { h_scroll_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(h_scroll_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_v_scroll_enabled_2586408642._native_ptr(),
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
    public func is_v_scroll_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_v_scroll_enabled_36873697._native_ptr(),
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
    public func set_hide_folding(hide: UInt8)  {
        withUnsafePointer(to: hide) { hide_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hide_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_hide_folding_2586408642._native_ptr(),
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
    public func is_folding_hidden() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_folding_hidden_36873697._native_ptr(),
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
    public func set_enable_recursive_folding(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_enable_recursive_folding_2586408642._native_ptr(),
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
    public func is_recursive_folding_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_recursive_folding_enabled_36873697._native_ptr(),
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
    public func set_drop_mode_flags(flags: Int64)  {
        withUnsafePointer(to: flags) { flags_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flags_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_drop_mode_flags_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_drop_mode_flags() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_drop_mode_flags_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_allow_rmb_select(allow: UInt8)  {
        withUnsafePointer(to: allow) { allow_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(allow_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_allow_rmb_select_2586408642._native_ptr(),
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
    public func get_allow_rmb_select() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_allow_rmb_select_36873697._native_ptr(),
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
    public func set_allow_reselect(allow: UInt8)  {
        withUnsafePointer(to: allow) { allow_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(allow_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_allow_reselect_2586408642._native_ptr(),
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
    public func get_allow_reselect() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_allow_reselect_36873697._native_ptr(),
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