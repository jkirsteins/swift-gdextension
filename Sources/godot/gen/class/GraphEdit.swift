import godot_native

fileprivate var __godot_name_GraphEdit: StringName! = nil

/// GraphEdit is a control responsible for displaying and manipulating graph-like data using [GraphNode]s. It provides access to creation, removal, connection, and disconnection of nodes.
/// 
/// GraphEdit provides tools for creation, manipulation, and display of various graphs. Its main purpose in the engine is to power the visual programming systems, such as visual shaders, but it is also available for use in user projects.
///  
/// GraphEdit by itself is only an empty container, representing an infinite grid where [GraphNode]s can be placed. Each [GraphNode] represent a node in the graph, a single unit of data in the connected scheme. GraphEdit, in turn, helps to control various interactions with nodes and between nodes. When the user attempts to connect, disconnect, or close a [GraphNode], a signal is emitted in the GraphEdit, but no action is taken by default. It is the responsibility of the programmer utilizing this control to implement the necessary logic to determine how each request should be handled.
///  
/// [b]Performance:[/b] It is greatly advised to enable low-processor usage mode (see [member OS.low_processor_usage_mode]) when using GraphEdits.
open class GraphEdit : Control {

    public enum PanningScheme : Int32 {
        case SCROLL_ZOOMS = 0
        case SCROLL_PANS = 1
    }

    public override class var __godot_name: StringName { __godot_name_GraphEdit }

    static var _method__is_in_input_hotzone_0: GDExtensionMethodBindPtr! = nil
    static var _method__is_in_output_hotzone_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_connection_line_0: GDExtensionMethodBindPtr! = nil
    static var _method__is_node_hover_valid_0: GDExtensionMethodBindPtr! = nil
    static var _method_connect_node_195065850: GDExtensionMethodBindPtr! = nil
    static var _method_is_node_connected_4216241294: GDExtensionMethodBindPtr! = nil
    static var _method_disconnect_node_1933654315: GDExtensionMethodBindPtr! = nil
    static var _method_set_connection_activity_1141899943: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_list_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_clear_connections_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_force_connection_drag_end_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_scroll_ofs_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_scroll_ofs_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_add_valid_right_disconnect_type_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_remove_valid_right_disconnect_type_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_add_valid_left_disconnect_type_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_remove_valid_left_disconnect_type_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_add_valid_connection_type_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_remove_valid_connection_type_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_is_valid_connection_type_2522259332: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_line_1562168077: GDExtensionMethodBindPtr! = nil
    static var _method_set_panning_scheme_18893313: GDExtensionMethodBindPtr! = nil
    static var _method_get_panning_scheme_549924446: GDExtensionMethodBindPtr! = nil
    static var _method_set_zoom_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_zoom_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_zoom_min_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_zoom_min_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_zoom_max_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_zoom_max_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_zoom_step_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_zoom_step_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_show_zoom_label_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_showing_zoom_label_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_snap_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_snap_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_snap_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_using_snap_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_connection_lines_curvature_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_lines_curvature_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_connection_lines_thickness_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_lines_thickness_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_connection_lines_antialiased_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_connection_lines_antialiased_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_minimap_size_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_minimap_size_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_minimap_opacity_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_minimap_opacity_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_minimap_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_minimap_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_arrange_nodes_button_hidden_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_arrange_nodes_button_hidden_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_right_disconnects_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_right_disconnects_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_zoom_hbox_3590609951: GDExtensionMethodBindPtr! = nil
    static var _method_arrange_nodes_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_selected_1078189570: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_GraphEdit = StringName(from: "GraphEdit")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_connect_node_195065850_name = StringName(from: "connect_node")
        self._method_connect_node_195065850 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_connect_node_195065850_name._native_ptr(), 195065850)
        assert(GraphEdit._method_connect_node_195065850 != nil)
        let _method_is_node_connected_4216241294_name = StringName(from: "is_node_connected")
        self._method_is_node_connected_4216241294 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_is_node_connected_4216241294_name._native_ptr(), 4216241294)
        assert(GraphEdit._method_is_node_connected_4216241294 != nil)
        let _method_disconnect_node_1933654315_name = StringName(from: "disconnect_node")
        self._method_disconnect_node_1933654315 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_disconnect_node_1933654315_name._native_ptr(), 1933654315)
        assert(GraphEdit._method_disconnect_node_1933654315 != nil)
        let _method_set_connection_activity_1141899943_name = StringName(from: "set_connection_activity")
        self._method_set_connection_activity_1141899943 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_set_connection_activity_1141899943_name._native_ptr(), 1141899943)
        assert(GraphEdit._method_set_connection_activity_1141899943 != nil)
        let _method_get_connection_list_3995934104_name = StringName(from: "get_connection_list")
        self._method_get_connection_list_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_get_connection_list_3995934104_name._native_ptr(), 3995934104)
        assert(GraphEdit._method_get_connection_list_3995934104 != nil)
        let _method_clear_connections_3218959716_name = StringName(from: "clear_connections")
        self._method_clear_connections_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_clear_connections_3218959716_name._native_ptr(), 3218959716)
        assert(GraphEdit._method_clear_connections_3218959716 != nil)
        let _method_force_connection_drag_end_3218959716_name = StringName(from: "force_connection_drag_end")
        self._method_force_connection_drag_end_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_force_connection_drag_end_3218959716_name._native_ptr(), 3218959716)
        assert(GraphEdit._method_force_connection_drag_end_3218959716 != nil)
        let _method_get_scroll_ofs_3341600327_name = StringName(from: "get_scroll_ofs")
        self._method_get_scroll_ofs_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_get_scroll_ofs_3341600327_name._native_ptr(), 3341600327)
        assert(GraphEdit._method_get_scroll_ofs_3341600327 != nil)
        let _method_set_scroll_ofs_743155724_name = StringName(from: "set_scroll_ofs")
        self._method_set_scroll_ofs_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_set_scroll_ofs_743155724_name._native_ptr(), 743155724)
        assert(GraphEdit._method_set_scroll_ofs_743155724 != nil)
        let _method_add_valid_right_disconnect_type_1286410249_name = StringName(from: "add_valid_right_disconnect_type")
        self._method_add_valid_right_disconnect_type_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_add_valid_right_disconnect_type_1286410249_name._native_ptr(), 1286410249)
        assert(GraphEdit._method_add_valid_right_disconnect_type_1286410249 != nil)
        let _method_remove_valid_right_disconnect_type_1286410249_name = StringName(from: "remove_valid_right_disconnect_type")
        self._method_remove_valid_right_disconnect_type_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_remove_valid_right_disconnect_type_1286410249_name._native_ptr(), 1286410249)
        assert(GraphEdit._method_remove_valid_right_disconnect_type_1286410249 != nil)
        let _method_add_valid_left_disconnect_type_1286410249_name = StringName(from: "add_valid_left_disconnect_type")
        self._method_add_valid_left_disconnect_type_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_add_valid_left_disconnect_type_1286410249_name._native_ptr(), 1286410249)
        assert(GraphEdit._method_add_valid_left_disconnect_type_1286410249 != nil)
        let _method_remove_valid_left_disconnect_type_1286410249_name = StringName(from: "remove_valid_left_disconnect_type")
        self._method_remove_valid_left_disconnect_type_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_remove_valid_left_disconnect_type_1286410249_name._native_ptr(), 1286410249)
        assert(GraphEdit._method_remove_valid_left_disconnect_type_1286410249 != nil)
        let _method_add_valid_connection_type_3937882851_name = StringName(from: "add_valid_connection_type")
        self._method_add_valid_connection_type_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_add_valid_connection_type_3937882851_name._native_ptr(), 3937882851)
        assert(GraphEdit._method_add_valid_connection_type_3937882851 != nil)
        let _method_remove_valid_connection_type_3937882851_name = StringName(from: "remove_valid_connection_type")
        self._method_remove_valid_connection_type_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_remove_valid_connection_type_3937882851_name._native_ptr(), 3937882851)
        assert(GraphEdit._method_remove_valid_connection_type_3937882851 != nil)
        let _method_is_valid_connection_type_2522259332_name = StringName(from: "is_valid_connection_type")
        self._method_is_valid_connection_type_2522259332 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_is_valid_connection_type_2522259332_name._native_ptr(), 2522259332)
        assert(GraphEdit._method_is_valid_connection_type_2522259332 != nil)
        let _method_get_connection_line_1562168077_name = StringName(from: "get_connection_line")
        self._method_get_connection_line_1562168077 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_get_connection_line_1562168077_name._native_ptr(), 1562168077)
        assert(GraphEdit._method_get_connection_line_1562168077 != nil)
        let _method_set_panning_scheme_18893313_name = StringName(from: "set_panning_scheme")
        self._method_set_panning_scheme_18893313 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_set_panning_scheme_18893313_name._native_ptr(), 18893313)
        assert(GraphEdit._method_set_panning_scheme_18893313 != nil)
        let _method_get_panning_scheme_549924446_name = StringName(from: "get_panning_scheme")
        self._method_get_panning_scheme_549924446 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_get_panning_scheme_549924446_name._native_ptr(), 549924446)
        assert(GraphEdit._method_get_panning_scheme_549924446 != nil)
        let _method_set_zoom_373806689_name = StringName(from: "set_zoom")
        self._method_set_zoom_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_set_zoom_373806689_name._native_ptr(), 373806689)
        assert(GraphEdit._method_set_zoom_373806689 != nil)
        let _method_get_zoom_1740695150_name = StringName(from: "get_zoom")
        self._method_get_zoom_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_get_zoom_1740695150_name._native_ptr(), 1740695150)
        assert(GraphEdit._method_get_zoom_1740695150 != nil)
        let _method_set_zoom_min_373806689_name = StringName(from: "set_zoom_min")
        self._method_set_zoom_min_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_set_zoom_min_373806689_name._native_ptr(), 373806689)
        assert(GraphEdit._method_set_zoom_min_373806689 != nil)
        let _method_get_zoom_min_1740695150_name = StringName(from: "get_zoom_min")
        self._method_get_zoom_min_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_get_zoom_min_1740695150_name._native_ptr(), 1740695150)
        assert(GraphEdit._method_get_zoom_min_1740695150 != nil)
        let _method_set_zoom_max_373806689_name = StringName(from: "set_zoom_max")
        self._method_set_zoom_max_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_set_zoom_max_373806689_name._native_ptr(), 373806689)
        assert(GraphEdit._method_set_zoom_max_373806689 != nil)
        let _method_get_zoom_max_1740695150_name = StringName(from: "get_zoom_max")
        self._method_get_zoom_max_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_get_zoom_max_1740695150_name._native_ptr(), 1740695150)
        assert(GraphEdit._method_get_zoom_max_1740695150 != nil)
        let _method_set_zoom_step_373806689_name = StringName(from: "set_zoom_step")
        self._method_set_zoom_step_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_set_zoom_step_373806689_name._native_ptr(), 373806689)
        assert(GraphEdit._method_set_zoom_step_373806689 != nil)
        let _method_get_zoom_step_1740695150_name = StringName(from: "get_zoom_step")
        self._method_get_zoom_step_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_get_zoom_step_1740695150_name._native_ptr(), 1740695150)
        assert(GraphEdit._method_get_zoom_step_1740695150 != nil)
        let _method_set_show_zoom_label_2586408642_name = StringName(from: "set_show_zoom_label")
        self._method_set_show_zoom_label_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_set_show_zoom_label_2586408642_name._native_ptr(), 2586408642)
        assert(GraphEdit._method_set_show_zoom_label_2586408642 != nil)
        let _method_is_showing_zoom_label_36873697_name = StringName(from: "is_showing_zoom_label")
        self._method_is_showing_zoom_label_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_is_showing_zoom_label_36873697_name._native_ptr(), 36873697)
        assert(GraphEdit._method_is_showing_zoom_label_36873697 != nil)
        let _method_set_snap_1286410249_name = StringName(from: "set_snap")
        self._method_set_snap_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_set_snap_1286410249_name._native_ptr(), 1286410249)
        assert(GraphEdit._method_set_snap_1286410249 != nil)
        let _method_get_snap_3905245786_name = StringName(from: "get_snap")
        self._method_get_snap_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_get_snap_3905245786_name._native_ptr(), 3905245786)
        assert(GraphEdit._method_get_snap_3905245786 != nil)
        let _method_set_use_snap_2586408642_name = StringName(from: "set_use_snap")
        self._method_set_use_snap_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_set_use_snap_2586408642_name._native_ptr(), 2586408642)
        assert(GraphEdit._method_set_use_snap_2586408642 != nil)
        let _method_is_using_snap_36873697_name = StringName(from: "is_using_snap")
        self._method_is_using_snap_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_is_using_snap_36873697_name._native_ptr(), 36873697)
        assert(GraphEdit._method_is_using_snap_36873697 != nil)
        let _method_set_connection_lines_curvature_373806689_name = StringName(from: "set_connection_lines_curvature")
        self._method_set_connection_lines_curvature_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_set_connection_lines_curvature_373806689_name._native_ptr(), 373806689)
        assert(GraphEdit._method_set_connection_lines_curvature_373806689 != nil)
        let _method_get_connection_lines_curvature_1740695150_name = StringName(from: "get_connection_lines_curvature")
        self._method_get_connection_lines_curvature_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_get_connection_lines_curvature_1740695150_name._native_ptr(), 1740695150)
        assert(GraphEdit._method_get_connection_lines_curvature_1740695150 != nil)
        let _method_set_connection_lines_thickness_373806689_name = StringName(from: "set_connection_lines_thickness")
        self._method_set_connection_lines_thickness_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_set_connection_lines_thickness_373806689_name._native_ptr(), 373806689)
        assert(GraphEdit._method_set_connection_lines_thickness_373806689 != nil)
        let _method_get_connection_lines_thickness_1740695150_name = StringName(from: "get_connection_lines_thickness")
        self._method_get_connection_lines_thickness_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_get_connection_lines_thickness_1740695150_name._native_ptr(), 1740695150)
        assert(GraphEdit._method_get_connection_lines_thickness_1740695150 != nil)
        let _method_set_connection_lines_antialiased_2586408642_name = StringName(from: "set_connection_lines_antialiased")
        self._method_set_connection_lines_antialiased_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_set_connection_lines_antialiased_2586408642_name._native_ptr(), 2586408642)
        assert(GraphEdit._method_set_connection_lines_antialiased_2586408642 != nil)
        let _method_is_connection_lines_antialiased_36873697_name = StringName(from: "is_connection_lines_antialiased")
        self._method_is_connection_lines_antialiased_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_is_connection_lines_antialiased_36873697_name._native_ptr(), 36873697)
        assert(GraphEdit._method_is_connection_lines_antialiased_36873697 != nil)
        let _method_set_minimap_size_743155724_name = StringName(from: "set_minimap_size")
        self._method_set_minimap_size_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_set_minimap_size_743155724_name._native_ptr(), 743155724)
        assert(GraphEdit._method_set_minimap_size_743155724 != nil)
        let _method_get_minimap_size_3341600327_name = StringName(from: "get_minimap_size")
        self._method_get_minimap_size_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_get_minimap_size_3341600327_name._native_ptr(), 3341600327)
        assert(GraphEdit._method_get_minimap_size_3341600327 != nil)
        let _method_set_minimap_opacity_373806689_name = StringName(from: "set_minimap_opacity")
        self._method_set_minimap_opacity_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_set_minimap_opacity_373806689_name._native_ptr(), 373806689)
        assert(GraphEdit._method_set_minimap_opacity_373806689 != nil)
        let _method_get_minimap_opacity_1740695150_name = StringName(from: "get_minimap_opacity")
        self._method_get_minimap_opacity_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_get_minimap_opacity_1740695150_name._native_ptr(), 1740695150)
        assert(GraphEdit._method_get_minimap_opacity_1740695150 != nil)
        let _method_set_minimap_enabled_2586408642_name = StringName(from: "set_minimap_enabled")
        self._method_set_minimap_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_set_minimap_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(GraphEdit._method_set_minimap_enabled_2586408642 != nil)
        let _method_is_minimap_enabled_36873697_name = StringName(from: "is_minimap_enabled")
        self._method_is_minimap_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_is_minimap_enabled_36873697_name._native_ptr(), 36873697)
        assert(GraphEdit._method_is_minimap_enabled_36873697 != nil)
        let _method_set_arrange_nodes_button_hidden_2586408642_name = StringName(from: "set_arrange_nodes_button_hidden")
        self._method_set_arrange_nodes_button_hidden_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_set_arrange_nodes_button_hidden_2586408642_name._native_ptr(), 2586408642)
        assert(GraphEdit._method_set_arrange_nodes_button_hidden_2586408642 != nil)
        let _method_is_arrange_nodes_button_hidden_36873697_name = StringName(from: "is_arrange_nodes_button_hidden")
        self._method_is_arrange_nodes_button_hidden_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_is_arrange_nodes_button_hidden_36873697_name._native_ptr(), 36873697)
        assert(GraphEdit._method_is_arrange_nodes_button_hidden_36873697 != nil)
        let _method_set_right_disconnects_2586408642_name = StringName(from: "set_right_disconnects")
        self._method_set_right_disconnects_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_set_right_disconnects_2586408642_name._native_ptr(), 2586408642)
        assert(GraphEdit._method_set_right_disconnects_2586408642 != nil)
        let _method_is_right_disconnects_enabled_36873697_name = StringName(from: "is_right_disconnects_enabled")
        self._method_is_right_disconnects_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_is_right_disconnects_enabled_36873697_name._native_ptr(), 36873697)
        assert(GraphEdit._method_is_right_disconnects_enabled_36873697 != nil)
        let _method_get_zoom_hbox_3590609951_name = StringName(from: "get_zoom_hbox")
        self._method_get_zoom_hbox_3590609951 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_get_zoom_hbox_3590609951_name._native_ptr(), 3590609951)
        assert(GraphEdit._method_get_zoom_hbox_3590609951 != nil)
        let _method_arrange_nodes_3218959716_name = StringName(from: "arrange_nodes")
        self._method_arrange_nodes_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_arrange_nodes_3218959716_name._native_ptr(), 3218959716)
        assert(GraphEdit._method_arrange_nodes_3218959716 != nil)
        let _method_set_selected_1078189570_name = StringName(from: "set_selected")
        self._method_set_selected_1078189570 = self.interface.pointee.classdb_get_method_bind(__godot_name_GraphEdit._native_ptr(), _method_set_selected_1078189570_name._native_ptr(), 1078189570)
        assert(GraphEdit._method_set_selected_1078189570 != nil)
    }

    public func _is_in_input_hotzone(in_node: Object, in_port: Int64, mouse_position: Vector2) -> UInt8 {
        withUnsafePointer(to: in_port) { in_port_native in
        let mouse_position_native = mouse_position._native_ptr()
        let in_node_native = in_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(in_node_native), .init(in_port_native), .init(mouse_position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__is_in_input_hotzone_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func _is_in_output_hotzone(in_node: Object, in_port: Int64, mouse_position: Vector2) -> UInt8 {
        withUnsafePointer(to: in_port) { in_port_native in
        let mouse_position_native = mouse_position._native_ptr()
        let in_node_native = in_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(in_node_native), .init(in_port_native), .init(mouse_position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__is_in_output_hotzone_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func _get_connection_line(from_position: Vector2, to_position: Vector2) -> PackedVector2Array {
        let to_position_native = to_position._native_ptr()
        let from_position_native = from_position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_position_native), .init(to_position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_connection_line_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(godot: __resPtr.pointee)
    }
    public func _is_node_hover_valid(from_node: StringName, from_port: Int64, to_node: StringName, to_port: Int64) -> UInt8 {
        withUnsafePointer(to: to_port) { to_port_native in
        withUnsafePointer(to: from_port) { from_port_native in
        let to_node_native = to_node._native_ptr()
        let from_node_native = from_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_node_native), .init(from_port_native), .init(to_node_native), .init(to_port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__is_node_hover_valid_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
        }
    }
    public func connect_node(from_node: StringName, from_port: Int64, to_node: StringName, to_port: Int64) -> Error {
        withUnsafePointer(to: to_port) { to_port_native in
        withUnsafePointer(to: from_port) { from_port_native in
        let to_node_native = to_node._native_ptr()
        let from_node_native = from_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_node_native), .init(from_port_native), .init(to_node_native), .init(to_port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_connect_node_195065850,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
    }
    public func is_node_connected(from_node: StringName, from_port: Int64, to_node: StringName, to_port: Int64) -> UInt8 {
        withUnsafePointer(to: to_port) { to_port_native in
        withUnsafePointer(to: from_port) { from_port_native in
        let to_node_native = to_node._native_ptr()
        let from_node_native = from_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_node_native), .init(from_port_native), .init(to_node_native), .init(to_port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_node_connected_4216241294,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
        }
    }
    public func disconnect_node(from_node: StringName, from_port: Int64, to_node: StringName, to_port: Int64)  {
        withUnsafePointer(to: to_port) { to_port_native in
        withUnsafePointer(to: from_port) { from_port_native in
        let to_node_native = to_node._native_ptr()
        let from_node_native = from_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_node_native), .init(from_port_native), .init(to_node_native), .init(to_port_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_disconnect_node_1933654315,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_connection_activity(from_node: StringName, from_port: Int64, to_node: StringName, to_port: Int64, amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        withUnsafePointer(to: to_port) { to_port_native in
        withUnsafePointer(to: from_port) { from_port_native in
        let to_node_native = to_node._native_ptr()
        let from_node_native = from_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_node_native), .init(from_port_native), .init(to_node_native), .init(to_port_native), .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_connection_activity_1141899943,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func get_connection_list() -> [Dictionary] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_list_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](godot: __resPtr.pointee)
    }
    public func clear_connections()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_connections_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func force_connection_drag_end()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_force_connection_drag_end_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_scroll_ofs() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_scroll_ofs_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_scroll_ofs(offset: Vector2)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_scroll_ofs_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_valid_right_disconnect_type(`type`: Int64)  {
        withUnsafePointer(to: `type`) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_valid_right_disconnect_type_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_valid_right_disconnect_type(`type`: Int64)  {
        withUnsafePointer(to: `type`) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_valid_right_disconnect_type_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_valid_left_disconnect_type(`type`: Int64)  {
        withUnsafePointer(to: `type`) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_valid_left_disconnect_type_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_valid_left_disconnect_type(`type`: Int64)  {
        withUnsafePointer(to: `type`) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_valid_left_disconnect_type_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_valid_connection_type(from_type: Int64, to_type: Int64)  {
        withUnsafePointer(to: to_type) { to_type_native in
        withUnsafePointer(to: from_type) { from_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_type_native), .init(to_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_valid_connection_type_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func remove_valid_connection_type(from_type: Int64, to_type: Int64)  {
        withUnsafePointer(to: to_type) { to_type_native in
        withUnsafePointer(to: from_type) { from_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_type_native), .init(to_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_valid_connection_type_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func is_valid_connection_type(from_type: Int64, to_type: Int64) -> UInt8 {
        withUnsafePointer(to: to_type) { to_type_native in
        withUnsafePointer(to: from_type) { from_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_type_native), .init(to_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_valid_connection_type_2522259332,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
        }
    }
    public func get_connection_line(from_node: Vector2, to_node: Vector2) -> PackedVector2Array {
        let to_node_native = to_node._native_ptr()
        let from_node_native = from_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_node_native), .init(to_node_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_line_1562168077,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(godot: __resPtr.pointee)
    }
    public func set_panning_scheme(scheme: GraphEdit.PanningScheme)  {
        withUnsafePointer(to: scheme.rawValue) { scheme_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scheme_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_panning_scheme_18893313,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_panning_scheme() -> GraphEdit.PanningScheme {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_panning_scheme_549924446,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GraphEdit.PanningScheme(godot: __resPtr.pointee)
    }
    public func set_zoom(zoom: Float64)  {
        withUnsafePointer(to: zoom) { zoom_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(zoom_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_zoom_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_zoom() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_zoom_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_zoom_min(zoom_min: Float64)  {
        withUnsafePointer(to: zoom_min) { zoom_min_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(zoom_min_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_zoom_min_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_zoom_min() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_zoom_min_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_zoom_max(zoom_max: Float64)  {
        withUnsafePointer(to: zoom_max) { zoom_max_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(zoom_max_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_zoom_max_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_zoom_max() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_zoom_max_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_zoom_step(zoom_step: Float64)  {
        withUnsafePointer(to: zoom_step) { zoom_step_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(zoom_step_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_zoom_step_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_zoom_step() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_zoom_step_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_show_zoom_label(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_show_zoom_label_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_showing_zoom_label() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_showing_zoom_label_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_snap(pixels: Int64)  {
        withUnsafePointer(to: pixels) { pixels_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pixels_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_snap_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_snap() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_snap_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_use_snap(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_snap_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_using_snap() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_using_snap_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_connection_lines_curvature(curvature: Float64)  {
        withUnsafePointer(to: curvature) { curvature_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(curvature_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_connection_lines_curvature_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_connection_lines_curvature() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_lines_curvature_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_connection_lines_thickness(pixels: Float64)  {
        withUnsafePointer(to: pixels) { pixels_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pixels_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_connection_lines_thickness_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_connection_lines_thickness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_lines_thickness_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_connection_lines_antialiased(pixels: UInt8)  {
        withUnsafePointer(to: pixels) { pixels_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pixels_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_connection_lines_antialiased_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_connection_lines_antialiased() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_connection_lines_antialiased_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_minimap_size(size: Vector2)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_minimap_size_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_minimap_size() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_minimap_size_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_minimap_opacity(opacity: Float64)  {
        withUnsafePointer(to: opacity) { opacity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(opacity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_minimap_opacity_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_minimap_opacity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_minimap_opacity_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_minimap_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_minimap_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_minimap_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_minimap_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_arrange_nodes_button_hidden(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_arrange_nodes_button_hidden_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_arrange_nodes_button_hidden() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_arrange_nodes_button_hidden_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_right_disconnects(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_right_disconnects_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_right_disconnects_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_right_disconnects_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_zoom_hbox() -> HBoxContainer {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_zoom_hbox_3590609951,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return HBoxContainer(godot: __resPtr.pointee)
    }
    public func arrange_nodes()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_arrange_nodes_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_selected(node: Node)  {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_selected_1078189570,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}