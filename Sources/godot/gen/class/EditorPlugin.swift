import godot_native

fileprivate var __godot_name_EditorPlugin: StringName! = nil

/// Used by the editor to extend its functionality.
/// 
/// Plugins are used by the editor to extend functionality. The most common types of plugins are those which edit a given node or resource type, import plugins and export plugins. See also [EditorScript] to add functions to the editor.
open class EditorPlugin : Node {

    public enum CustomControlContainer : Int32 {
        case CONTAINER_TOOLBAR = 0
        case CONTAINER_SPATIAL_EDITOR_MENU = 1
        case CONTAINER_SPATIAL_EDITOR_SIDE_LEFT = 2
        case CONTAINER_SPATIAL_EDITOR_SIDE_RIGHT = 3
        case CONTAINER_SPATIAL_EDITOR_BOTTOM = 4
        case CONTAINER_CANVAS_EDITOR_MENU = 5
        case CONTAINER_CANVAS_EDITOR_SIDE_LEFT = 6
        case CONTAINER_CANVAS_EDITOR_SIDE_RIGHT = 7
        case CONTAINER_CANVAS_EDITOR_BOTTOM = 8
        case CONTAINER_INSPECTOR_BOTTOM = 9
        case CONTAINER_PROJECT_SETTING_TAB_LEFT = 10
        case CONTAINER_PROJECT_SETTING_TAB_RIGHT = 11
    }
    public enum DockSlot : Int32 {
        case DOCK_SLOT_LEFT_UL = 0
        case DOCK_SLOT_LEFT_BL = 1
        case DOCK_SLOT_LEFT_UR = 2
        case DOCK_SLOT_LEFT_BR = 3
        case DOCK_SLOT_RIGHT_UL = 4
        case DOCK_SLOT_RIGHT_BL = 5
        case DOCK_SLOT_RIGHT_UR = 6
        case DOCK_SLOT_RIGHT_BR = 7
        case DOCK_SLOT_MAX = 8
    }
    public enum AfterGUIInput : Int32 {
        case AFTER_GUI_INPUT_PASS = 0
        case AFTER_GUI_INPUT_STOP = 1
        case AFTER_GUI_INPUT_CUSTOM = 2
    }

    public override class var __godot_name: StringName { __godot_name_EditorPlugin }

    static var _method__forward_canvas_gui_input_0: StringName! = nil
    static var _method__forward_canvas_draw_over_viewport_0: StringName! = nil
    static var _method__forward_canvas_force_draw_over_viewport_0: StringName! = nil
    static var _method__forward_3d_gui_input_0: StringName! = nil
    static var _method__forward_3d_draw_over_viewport_0: StringName! = nil
    static var _method__forward_3d_force_draw_over_viewport_0: StringName! = nil
    static var _method__get_plugin_name_0: StringName! = nil
    static var _method__get_plugin_icon_0: StringName! = nil
    static var _method__has_main_screen_0: StringName! = nil
    static var _method__make_visible_0: StringName! = nil
    static var _method__edit_0: StringName! = nil
    static var _method__handles_0: StringName! = nil
    static var _method__get_state_0: StringName! = nil
    static var _method__set_state_0: StringName! = nil
    static var _method__clear_0: StringName! = nil
    static var _method__save_external_data_0: StringName! = nil
    static var _method__apply_changes_0: StringName! = nil
    static var _method__get_breakpoints_0: StringName! = nil
    static var _method__set_window_layout_0: StringName! = nil
    static var _method__get_window_layout_0: StringName! = nil
    static var _method__build_0: StringName! = nil
    static var _method__enable_plugin_0: StringName! = nil
    static var _method__disable_plugin_0: StringName! = nil
    static var _method_add_control_to_container_3092750152: StringName! = nil
    static var _method_add_control_to_bottom_panel_3526039376: StringName! = nil
    static var _method_add_control_to_dock_3354871258: StringName! = nil
    static var _method_remove_control_from_docks_1496901182: StringName! = nil
    static var _method_remove_control_from_bottom_panel_1496901182: StringName! = nil
    static var _method_remove_control_from_container_3092750152: StringName! = nil
    static var _method_add_tool_menu_item_2137474292: StringName! = nil
    static var _method_add_tool_submenu_item_1019428915: StringName! = nil
    static var _method_remove_tool_menu_item_83702148: StringName! = nil
    static var _method_get_export_as_menu_1775878644: StringName! = nil
    static var _method_add_custom_type_1986814599: StringName! = nil
    static var _method_remove_custom_type_83702148: StringName! = nil
    static var _method_add_autoload_singleton_3186203200: StringName! = nil
    static var _method_remove_autoload_singleton_83702148: StringName! = nil
    static var _method_update_overlays_3905245786: StringName! = nil
    static var _method_make_bottom_panel_item_visible_1496901182: StringName! = nil
    static var _method_hide_bottom_panel_3218959716: StringName! = nil
    static var _method_get_undo_redo_773492341: StringName! = nil
    static var _method_add_undo_redo_inspector_hook_callback_1611583062: StringName! = nil
    static var _method_remove_undo_redo_inspector_hook_callback_1611583062: StringName! = nil
    static var _method_queue_save_layout_3218959716: StringName! = nil
    static var _method_add_translation_parser_plugin_3116463128: StringName! = nil
    static var _method_remove_translation_parser_plugin_3116463128: StringName! = nil
    static var _method_add_import_plugin_3113975762: StringName! = nil
    static var _method_remove_import_plugin_2312482773: StringName! = nil
    static var _method_add_scene_format_importer_plugin_2764104752: StringName! = nil
    static var _method_remove_scene_format_importer_plugin_2637776123: StringName! = nil
    static var _method_add_scene_post_import_plugin_3492436322: StringName! = nil
    static var _method_remove_scene_post_import_plugin_3045178206: StringName! = nil
    static var _method_add_export_plugin_4095952207: StringName! = nil
    static var _method_remove_export_plugin_4095952207: StringName! = nil
    static var _method_add_node_3d_gizmo_plugin_1541015022: StringName! = nil
    static var _method_remove_node_3d_gizmo_plugin_1541015022: StringName! = nil
    static var _method_add_inspector_plugin_546395733: StringName! = nil
    static var _method_remove_inspector_plugin_546395733: StringName! = nil
    static var _method_add_resource_conversion_plugin_2124849111: StringName! = nil
    static var _method_remove_resource_conversion_plugin_2124849111: StringName! = nil
    static var _method_set_input_event_forwarding_always_enabled_3218959716: StringName! = nil
    static var _method_set_force_draw_over_forwarding_enabled_3218959716: StringName! = nil
    static var _method_get_editor_interface_4223731786: StringName! = nil
    static var _method_get_script_create_dialog_3121871482: StringName! = nil
    static var _method_add_debugger_plugin_3749880309: StringName! = nil
    static var _method_remove_debugger_plugin_3749880309: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_EditorPlugin == nil)
        __godot_name_EditorPlugin = StringName(from: "EditorPlugin")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_add_control_to_container_3092750152 = StringName(from: "add_control_to_container")
        assert(self._method_add_control_to_container_3092750152 != nil)
        self._method_add_control_to_bottom_panel_3526039376 = StringName(from: "add_control_to_bottom_panel")
        assert(self._method_add_control_to_bottom_panel_3526039376 != nil)
        self._method_add_control_to_dock_3354871258 = StringName(from: "add_control_to_dock")
        assert(self._method_add_control_to_dock_3354871258 != nil)
        self._method_remove_control_from_docks_1496901182 = StringName(from: "remove_control_from_docks")
        assert(self._method_remove_control_from_docks_1496901182 != nil)
        self._method_remove_control_from_bottom_panel_1496901182 = StringName(from: "remove_control_from_bottom_panel")
        assert(self._method_remove_control_from_bottom_panel_1496901182 != nil)
        self._method_remove_control_from_container_3092750152 = StringName(from: "remove_control_from_container")
        assert(self._method_remove_control_from_container_3092750152 != nil)
        self._method_add_tool_menu_item_2137474292 = StringName(from: "add_tool_menu_item")
        assert(self._method_add_tool_menu_item_2137474292 != nil)
        self._method_add_tool_submenu_item_1019428915 = StringName(from: "add_tool_submenu_item")
        assert(self._method_add_tool_submenu_item_1019428915 != nil)
        self._method_remove_tool_menu_item_83702148 = StringName(from: "remove_tool_menu_item")
        assert(self._method_remove_tool_menu_item_83702148 != nil)
        self._method_get_export_as_menu_1775878644 = StringName(from: "get_export_as_menu")
        assert(self._method_get_export_as_menu_1775878644 != nil)
        self._method_add_custom_type_1986814599 = StringName(from: "add_custom_type")
        assert(self._method_add_custom_type_1986814599 != nil)
        self._method_remove_custom_type_83702148 = StringName(from: "remove_custom_type")
        assert(self._method_remove_custom_type_83702148 != nil)
        self._method_add_autoload_singleton_3186203200 = StringName(from: "add_autoload_singleton")
        assert(self._method_add_autoload_singleton_3186203200 != nil)
        self._method_remove_autoload_singleton_83702148 = StringName(from: "remove_autoload_singleton")
        assert(self._method_remove_autoload_singleton_83702148 != nil)
        self._method_update_overlays_3905245786 = StringName(from: "update_overlays")
        assert(self._method_update_overlays_3905245786 != nil)
        self._method_make_bottom_panel_item_visible_1496901182 = StringName(from: "make_bottom_panel_item_visible")
        assert(self._method_make_bottom_panel_item_visible_1496901182 != nil)
        self._method_hide_bottom_panel_3218959716 = StringName(from: "hide_bottom_panel")
        assert(self._method_hide_bottom_panel_3218959716 != nil)
        self._method_get_undo_redo_773492341 = StringName(from: "get_undo_redo")
        assert(self._method_get_undo_redo_773492341 != nil)
        self._method_add_undo_redo_inspector_hook_callback_1611583062 = StringName(from: "add_undo_redo_inspector_hook_callback")
        assert(self._method_add_undo_redo_inspector_hook_callback_1611583062 != nil)
        self._method_remove_undo_redo_inspector_hook_callback_1611583062 = StringName(from: "remove_undo_redo_inspector_hook_callback")
        assert(self._method_remove_undo_redo_inspector_hook_callback_1611583062 != nil)
        self._method_queue_save_layout_3218959716 = StringName(from: "queue_save_layout")
        assert(self._method_queue_save_layout_3218959716 != nil)
        self._method_add_translation_parser_plugin_3116463128 = StringName(from: "add_translation_parser_plugin")
        assert(self._method_add_translation_parser_plugin_3116463128 != nil)
        self._method_remove_translation_parser_plugin_3116463128 = StringName(from: "remove_translation_parser_plugin")
        assert(self._method_remove_translation_parser_plugin_3116463128 != nil)
        self._method_add_import_plugin_3113975762 = StringName(from: "add_import_plugin")
        assert(self._method_add_import_plugin_3113975762 != nil)
        self._method_remove_import_plugin_2312482773 = StringName(from: "remove_import_plugin")
        assert(self._method_remove_import_plugin_2312482773 != nil)
        self._method_add_scene_format_importer_plugin_2764104752 = StringName(from: "add_scene_format_importer_plugin")
        assert(self._method_add_scene_format_importer_plugin_2764104752 != nil)
        self._method_remove_scene_format_importer_plugin_2637776123 = StringName(from: "remove_scene_format_importer_plugin")
        assert(self._method_remove_scene_format_importer_plugin_2637776123 != nil)
        self._method_add_scene_post_import_plugin_3492436322 = StringName(from: "add_scene_post_import_plugin")
        assert(self._method_add_scene_post_import_plugin_3492436322 != nil)
        self._method_remove_scene_post_import_plugin_3045178206 = StringName(from: "remove_scene_post_import_plugin")
        assert(self._method_remove_scene_post_import_plugin_3045178206 != nil)
        self._method_add_export_plugin_4095952207 = StringName(from: "add_export_plugin")
        assert(self._method_add_export_plugin_4095952207 != nil)
        self._method_remove_export_plugin_4095952207 = StringName(from: "remove_export_plugin")
        assert(self._method_remove_export_plugin_4095952207 != nil)
        self._method_add_node_3d_gizmo_plugin_1541015022 = StringName(from: "add_node_3d_gizmo_plugin")
        assert(self._method_add_node_3d_gizmo_plugin_1541015022 != nil)
        self._method_remove_node_3d_gizmo_plugin_1541015022 = StringName(from: "remove_node_3d_gizmo_plugin")
        assert(self._method_remove_node_3d_gizmo_plugin_1541015022 != nil)
        self._method_add_inspector_plugin_546395733 = StringName(from: "add_inspector_plugin")
        assert(self._method_add_inspector_plugin_546395733 != nil)
        self._method_remove_inspector_plugin_546395733 = StringName(from: "remove_inspector_plugin")
        assert(self._method_remove_inspector_plugin_546395733 != nil)
        self._method_add_resource_conversion_plugin_2124849111 = StringName(from: "add_resource_conversion_plugin")
        assert(self._method_add_resource_conversion_plugin_2124849111 != nil)
        self._method_remove_resource_conversion_plugin_2124849111 = StringName(from: "remove_resource_conversion_plugin")
        assert(self._method_remove_resource_conversion_plugin_2124849111 != nil)
        self._method_set_input_event_forwarding_always_enabled_3218959716 = StringName(from: "set_input_event_forwarding_always_enabled")
        assert(self._method_set_input_event_forwarding_always_enabled_3218959716 != nil)
        self._method_set_force_draw_over_forwarding_enabled_3218959716 = StringName(from: "set_force_draw_over_forwarding_enabled")
        assert(self._method_set_force_draw_over_forwarding_enabled_3218959716 != nil)
        self._method_get_editor_interface_4223731786 = StringName(from: "get_editor_interface")
        assert(self._method_get_editor_interface_4223731786 != nil)
        self._method_get_script_create_dialog_3121871482 = StringName(from: "get_script_create_dialog")
        assert(self._method_get_script_create_dialog_3121871482 != nil)
        self._method_add_debugger_plugin_3749880309 = StringName(from: "add_debugger_plugin")
        assert(self._method_add_debugger_plugin_3749880309 != nil)
        self._method_remove_debugger_plugin_3749880309 = StringName(from: "remove_debugger_plugin")
        assert(self._method_remove_debugger_plugin_3749880309 != nil)
    }

    public func _forward_canvas_gui_input(event: InputEvent) -> UInt8 {
        let event_native = event._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(event_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _forward_canvas_draw_over_viewport(viewport_control: Control)  {
        let viewport_control_native = viewport_control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_control_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _forward_canvas_force_draw_over_viewport(viewport_control: Control)  {
        let viewport_control_native = viewport_control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_control_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _forward_3d_gui_input(viewport_camera: Camera3D, event: InputEvent) -> Int64 {
        let event_native = event._native_ptr()
        let viewport_camera_native = viewport_camera._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_camera_native), .init(event_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return Int64(godot: __resPtr.pointee)
    }
    public func _forward_3d_draw_over_viewport(viewport_control: Control)  {
        let viewport_control_native = viewport_control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_control_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _forward_3d_force_draw_over_viewport(viewport_control: Control)  {
        let viewport_control_native = viewport_control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_control_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _get_plugin_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return godot.String(godot: __resPtr.pointee)
    }
    public func _get_plugin_icon() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return Texture2D(godot: __resPtr.pointee)
    }
    public func _has_main_screen() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _make_visible(visible: UInt8)  {
        withUnsafePointer(to: visible) { visible_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(visible_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
    }
    public func _edit(object: Variant)  {
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _handles(object: Variant) -> UInt8 {
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _get_state() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return Dictionary(godot: __resPtr.pointee)
    }
    public func _set_state(state: Dictionary)  {
        let state_native = state._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(state_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _clear()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _save_external_data()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _apply_changes()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _get_breakpoints() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func _set_window_layout(configuration: ConfigFile)  {
        let configuration_native = configuration._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(configuration_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _get_window_layout(configuration: ConfigFile)  {
        let configuration_native = configuration._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(configuration_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _build() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _enable_plugin()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _disable_plugin()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func add_control_to_container(container: EditorPlugin.CustomControlContainer, control: Control)  {
        withUnsafePointer(to: container.rawValue) { container_native in
        let control_native = control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(container_native), .init(control_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_control_to_container_3092750152._native_ptr(),
                    3092750152)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_control_to_bottom_panel(control: Control, title: godot.String) -> Button {
        let title_native = title._native_ptr()
        let control_native = control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(control_native), .init(title_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_control_to_bottom_panel_3526039376._native_ptr(),
                    3526039376)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Button(godot: __resPtr.pointee)
    }
    public func add_control_to_dock(slot: EditorPlugin.DockSlot, control: Control)  {
        withUnsafePointer(to: slot.rawValue) { slot_native in
        let control_native = control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(slot_native), .init(control_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_control_to_dock_3354871258._native_ptr(),
                    3354871258)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_control_from_docks(control: Control)  {
        let control_native = control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(control_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_control_from_docks_1496901182._native_ptr(),
                    1496901182)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_control_from_bottom_panel(control: Control)  {
        let control_native = control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(control_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_control_from_bottom_panel_1496901182._native_ptr(),
                    1496901182)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_control_from_container(container: EditorPlugin.CustomControlContainer, control: Control)  {
        withUnsafePointer(to: container.rawValue) { container_native in
        let control_native = control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(container_native), .init(control_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_control_from_container_3092750152._native_ptr(),
                    3092750152)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_tool_menu_item(name: godot.String, callable: Callable)  {
        let callable_native = callable._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(callable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_tool_menu_item_2137474292._native_ptr(),
                    2137474292)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_tool_submenu_item(name: godot.String, submenu: PopupMenu)  {
        let submenu_native = submenu._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(submenu_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_tool_submenu_item_1019428915._native_ptr(),
                    1019428915)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_tool_menu_item(name: godot.String)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_tool_menu_item_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_export_as_menu() -> PopupMenu {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_export_as_menu_1775878644._native_ptr(),
                    1775878644)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PopupMenu(godot: __resPtr.pointee)
    }
    public func add_custom_type(`type`: godot.String, base: godot.String, script: Script, icon: Texture2D)  {
        let icon_native = icon._native_ptr()
        let script_native = script._native_ptr()
        let base_native = base._native_ptr()
        let type_native = `type`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native), .init(base_native), .init(script_native), .init(icon_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_custom_type_1986814599._native_ptr(),
                    1986814599)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_custom_type(`type`: godot.String)  {
        let type_native = `type`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_custom_type_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_autoload_singleton(name: godot.String, path: godot.String)  {
        let path_native = path._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(path_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_autoload_singleton_3186203200._native_ptr(),
                    3186203200)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_autoload_singleton(name: godot.String)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_autoload_singleton_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func update_overlays() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_update_overlays_3905245786._native_ptr(),
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
    public func make_bottom_panel_item_visible(item: Control)  {
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_make_bottom_panel_item_visible_1496901182._native_ptr(),
                    1496901182)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func hide_bottom_panel()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_hide_bottom_panel_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_undo_redo() -> EditorUndoRedoManager {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_undo_redo_773492341._native_ptr(),
                    773492341)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorUndoRedoManager(godot: __resPtr.pointee)
    }
    public func add_undo_redo_inspector_hook_callback(callable: Callable)  {
        let callable_native = callable._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(callable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_undo_redo_inspector_hook_callback_1611583062._native_ptr(),
                    1611583062)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_undo_redo_inspector_hook_callback(callable: Callable)  {
        let callable_native = callable._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(callable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_undo_redo_inspector_hook_callback_1611583062._native_ptr(),
                    1611583062)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func queue_save_layout()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_queue_save_layout_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_translation_parser_plugin(parser: EditorTranslationParserPlugin)  {
        let parser_native = parser._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parser_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_translation_parser_plugin_3116463128._native_ptr(),
                    3116463128)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_translation_parser_plugin(parser: EditorTranslationParserPlugin)  {
        let parser_native = parser._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parser_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_translation_parser_plugin_3116463128._native_ptr(),
                    3116463128)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_import_plugin(importer: EditorImportPlugin, first_priority: UInt8)  {
        withUnsafePointer(to: first_priority) { first_priority_native in
        let importer_native = importer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(importer_native), .init(first_priority_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_import_plugin_3113975762._native_ptr(),
                    3113975762)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_import_plugin(importer: EditorImportPlugin)  {
        let importer_native = importer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(importer_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_import_plugin_2312482773._native_ptr(),
                    2312482773)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_scene_format_importer_plugin(scene_format_importer: EditorSceneFormatImporter, first_priority: UInt8)  {
        withUnsafePointer(to: first_priority) { first_priority_native in
        let scene_format_importer_native = scene_format_importer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scene_format_importer_native), .init(first_priority_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_scene_format_importer_plugin_2764104752._native_ptr(),
                    2764104752)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_scene_format_importer_plugin(scene_format_importer: EditorSceneFormatImporter)  {
        let scene_format_importer_native = scene_format_importer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scene_format_importer_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_scene_format_importer_plugin_2637776123._native_ptr(),
                    2637776123)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_scene_post_import_plugin(scene_import_plugin: EditorScenePostImportPlugin, first_priority: UInt8)  {
        withUnsafePointer(to: first_priority) { first_priority_native in
        let scene_import_plugin_native = scene_import_plugin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scene_import_plugin_native), .init(first_priority_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_scene_post_import_plugin_3492436322._native_ptr(),
                    3492436322)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_scene_post_import_plugin(scene_import_plugin: EditorScenePostImportPlugin)  {
        let scene_import_plugin_native = scene_import_plugin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scene_import_plugin_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_scene_post_import_plugin_3045178206._native_ptr(),
                    3045178206)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_export_plugin(plugin: EditorExportPlugin)  {
        let plugin_native = plugin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(plugin_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_export_plugin_4095952207._native_ptr(),
                    4095952207)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_export_plugin(plugin: EditorExportPlugin)  {
        let plugin_native = plugin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(plugin_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_export_plugin_4095952207._native_ptr(),
                    4095952207)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_node_3d_gizmo_plugin(plugin: EditorNode3DGizmoPlugin)  {
        let plugin_native = plugin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(plugin_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_node_3d_gizmo_plugin_1541015022._native_ptr(),
                    1541015022)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_node_3d_gizmo_plugin(plugin: EditorNode3DGizmoPlugin)  {
        let plugin_native = plugin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(plugin_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_node_3d_gizmo_plugin_1541015022._native_ptr(),
                    1541015022)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_inspector_plugin(plugin: EditorInspectorPlugin)  {
        let plugin_native = plugin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(plugin_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_inspector_plugin_546395733._native_ptr(),
                    546395733)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_inspector_plugin(plugin: EditorInspectorPlugin)  {
        let plugin_native = plugin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(plugin_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_inspector_plugin_546395733._native_ptr(),
                    546395733)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_resource_conversion_plugin(plugin: EditorResourceConversionPlugin)  {
        let plugin_native = plugin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(plugin_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_resource_conversion_plugin_2124849111._native_ptr(),
                    2124849111)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_resource_conversion_plugin(plugin: EditorResourceConversionPlugin)  {
        let plugin_native = plugin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(plugin_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_resource_conversion_plugin_2124849111._native_ptr(),
                    2124849111)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_input_event_forwarding_always_enabled()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_input_event_forwarding_always_enabled_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_force_draw_over_forwarding_enabled()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_force_draw_over_forwarding_enabled_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_editor_interface() -> EditorInterface {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_editor_interface_4223731786._native_ptr(),
                    4223731786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorInterface(godot: __resPtr.pointee)
    }
    public func get_script_create_dialog() -> ScriptCreateDialog {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_script_create_dialog_3121871482._native_ptr(),
                    3121871482)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ScriptCreateDialog(godot: __resPtr.pointee)
    }
    public func add_debugger_plugin(script: EditorDebuggerPlugin)  {
        let script_native = script._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(script_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_debugger_plugin_3749880309._native_ptr(),
                    3749880309)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_debugger_plugin(script: EditorDebuggerPlugin)  {
        let script_native = script._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(script_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_debugger_plugin_3749880309._native_ptr(),
                    3749880309)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}