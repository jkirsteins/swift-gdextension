import godot_native

fileprivate var __godot_name_Node: StringName! = nil

/// Base class for all [i]scene[/i] objects.
/// 
/// Nodes are Godot's building blocks. They can be assigned as the child of another node, resulting in a tree arrangement. A given node can contain any number of nodes as children with the requirement that all siblings (direct children of a node) should have unique names.
///  
/// A tree of nodes is called a [i]scene[/i]. Scenes can be saved to the disk and then instantiated into other scenes. This allows for very high flexibility in the architecture and data model of Godot projects.
///  
/// [b]Scene tree:[/b] The [SceneTree] contains the active tree of nodes. When a node is added to the scene tree, it receives the [constant NOTIFICATION_ENTER_TREE] notification and its [method _enter_tree] callback is triggered. Child nodes are always added [i]after[/i] their parent node, i.e. the [method _enter_tree] callback of a parent node will be triggered before its child's.
///  
/// Once all nodes have been added in the scene tree, they receive the [constant NOTIFICATION_READY] notification and their respective [method _ready] callbacks are triggered. For groups of nodes, the [method _ready] callback is called in reverse order, starting with the children and moving up to the parent nodes.
///  
/// This means that when adding a node to the scene tree, the following order will be used for the callbacks: [method _enter_tree] of the parent, [method _enter_tree] of the children, [method _ready] of the children and finally [method _ready] of the parent (recursively for the entire scene tree).
///  
/// [b]Processing:[/b] Nodes can override the "process" state, so that they receive a callback on each frame requesting them to process (do something). Normal processing (callback [method _process], toggled with [method set_process]) happens as fast as possible and is dependent on the frame rate, so the processing time [i]delta[/i] (in seconds) is passed as an argument. Physics processing (callback [method _physics_process], toggled with [method set_physics_process]) happens a fixed number of times per second (60 by default) and is useful for code related to the physics engine.
///  
/// Nodes can also process input events. When present, the [method _input] function will be called for each input that the program receives. In many cases, this can be overkill (unless used for simple projects), and the [method _unhandled_input] function might be preferred; it is called when the input event was not handled by anyone else (typically, GUI [Control] nodes), ensuring that the node only receives the events that were meant for it.
///  
/// To keep track of the scene hierarchy (especially when instancing scenes into other scenes), an "owner" can be set for the node with the [member owner] property. This keeps track of who instantiated what. This is mostly useful when writing editors and tools, though.
///  
/// Finally, when a node is freed with [method Object.free] or [method queue_free], it will also free all its children.
///  
/// [b]Groups:[/b] Nodes can be added to as many groups as you want to be easy to manage, you could create groups like "enemies" or "collectables" for example, depending on your game. See [method add_to_group], [method is_in_group] and [method remove_from_group]. You can then retrieve all nodes in these groups, iterate them and even call methods on groups via the methods on [SceneTree].
///  
/// [b]Networking with nodes:[/b] After connecting to a server (or making one, see [ENetMultiplayerPeer]), it is possible to use the built-in RPC (remote procedure call) system to communicate over the network. By calling [method rpc] with a method name, it will be called locally and in all connected peers (peers = clients and the server that accepts connections). To identify which node receives the RPC call, Godot will use its [NodePath] (make sure node names are the same on all peers). Also, take a look at the high-level networking tutorial and corresponding demos.
///  
/// [b]Note:[/b] The [code]script[/code] property is part of the [Object] class, not [Node]. It isn't exposed like most properties but does have a setter and getter ([code]set_script()[/code] and [code]get_script()[/code]).
open class Node : Object {

    public enum ProcessMode : Int32 {
        case PROCESS_MODE_INHERIT = 0
        case PROCESS_MODE_PAUSABLE = 1
        case PROCESS_MODE_WHEN_PAUSED = 2
        case PROCESS_MODE_ALWAYS = 3
        case PROCESS_MODE_DISABLED = 4
    }
    public enum DuplicateFlags : Int32 {
        case DUPLICATE_SIGNALS = 1
        case DUPLICATE_GROUPS = 2
        case DUPLICATE_SCRIPTS = 4
        case DUPLICATE_USE_INSTANTIATION = 8
    }
    public enum InternalMode : Int32 {
        case INTERNAL_MODE_DISABLED = 0
        case INTERNAL_MODE_FRONT = 1
        case INTERNAL_MODE_BACK = 2
    }

    public override class var __godot_name: StringName { __godot_name_Node }

    static var _method__process_0: StringName! = nil
    static var _method__physics_process_0: StringName! = nil
    static var _method__enter_tree_0: StringName! = nil
    static var _method__exit_tree_0: StringName! = nil
    static var _method__ready_0: StringName! = nil
    static var _method__get_configuration_warnings_0: StringName! = nil
    static var _method__input_0: StringName! = nil
    static var _method__shortcut_input_0: StringName! = nil
    static var _method__unhandled_input_0: StringName! = nil
    static var _method__unhandled_key_input_0: StringName! = nil
    static var _method_print_orphan_nodes_3218959716: StringName! = nil
    static var _method_add_sibling_2570952461: StringName! = nil
    static var _method_set_name_83702148: StringName! = nil
    static var _method_get_name_2002593661: StringName! = nil
    static var _method_add_child_3070154285: StringName! = nil
    static var _method_remove_child_1078189570: StringName! = nil
    static var _method_reparent_2570952461: StringName! = nil
    static var _method_get_child_count_894402480: StringName! = nil
    static var _method_get_children_873284517: StringName! = nil
    static var _method_get_child_541253412: StringName! = nil
    static var _method_has_node_861721659: StringName! = nil
    static var _method_get_node_2734337346: StringName! = nil
    static var _method_get_node_or_null_2734337346: StringName! = nil
    static var _method_get_parent_3160264692: StringName! = nil
    static var _method_find_child_4253159453: StringName! = nil
    static var _method_find_children_1585018254: StringName! = nil
    static var _method_find_parent_1140089439: StringName! = nil
    static var _method_has_node_and_resource_861721659: StringName! = nil
    static var _method_get_node_and_resource_502563882: StringName! = nil
    static var _method_is_inside_tree_36873697: StringName! = nil
    static var _method_is_ancestor_of_3093956946: StringName! = nil
    static var _method_is_greater_than_3093956946: StringName! = nil
    static var _method_get_path_4075236667: StringName! = nil
    static var _method_get_path_to_498846349: StringName! = nil
    static var _method_add_to_group_3683006648: StringName! = nil
    static var _method_remove_from_group_3304788590: StringName! = nil
    static var _method_is_in_group_2619796661: StringName! = nil
    static var _method_move_child_3315886247: StringName! = nil
    static var _method_get_groups_3995934104: StringName! = nil
    static var _method_set_owner_1078189570: StringName! = nil
    static var _method_get_owner_3160264692: StringName! = nil
    static var _method_get_index_894402480: StringName! = nil
    static var _method_print_tree_3218959716: StringName! = nil
    static var _method_print_tree_pretty_3218959716: StringName! = nil
    static var _method_set_scene_file_path_83702148: StringName! = nil
    static var _method_get_scene_file_path_201670096: StringName! = nil
    static var _method_propagate_notification_1286410249: StringName! = nil
    static var _method_propagate_call_1667910434: StringName! = nil
    static var _method_set_physics_process_2586408642: StringName! = nil
    static var _method_get_physics_process_delta_time_1740695150: StringName! = nil
    static var _method_is_physics_processing_36873697: StringName! = nil
    static var _method_get_process_delta_time_1740695150: StringName! = nil
    static var _method_set_process_2586408642: StringName! = nil
    static var _method_set_process_priority_1286410249: StringName! = nil
    static var _method_get_process_priority_3905245786: StringName! = nil
    static var _method_is_processing_36873697: StringName! = nil
    static var _method_set_process_input_2586408642: StringName! = nil
    static var _method_is_processing_input_36873697: StringName! = nil
    static var _method_set_process_shortcut_input_2586408642: StringName! = nil
    static var _method_is_processing_shortcut_input_36873697: StringName! = nil
    static var _method_set_process_unhandled_input_2586408642: StringName! = nil
    static var _method_is_processing_unhandled_input_36873697: StringName! = nil
    static var _method_set_process_unhandled_key_input_2586408642: StringName! = nil
    static var _method_is_processing_unhandled_key_input_36873697: StringName! = nil
    static var _method_set_process_mode_1841290486: StringName! = nil
    static var _method_get_process_mode_739966102: StringName! = nil
    static var _method_can_process_36873697: StringName! = nil
    static var _method_set_display_folded_2586408642: StringName! = nil
    static var _method_is_displayed_folded_36873697: StringName! = nil
    static var _method_set_process_internal_2586408642: StringName! = nil
    static var _method_is_processing_internal_36873697: StringName! = nil
    static var _method_set_physics_process_internal_2586408642: StringName! = nil
    static var _method_is_physics_processing_internal_36873697: StringName! = nil
    static var _method_get_window_1757182445: StringName! = nil
    static var _method_get_tree_2958820483: StringName! = nil
    static var _method_create_tween_3426978995: StringName! = nil
    static var _method_duplicate_3511555459: StringName! = nil
    static var _method_replace_by_2570952461: StringName! = nil
    static var _method_set_scene_instance_load_placeholder_2586408642: StringName! = nil
    static var _method_get_scene_instance_load_placeholder_36873697: StringName! = nil
    static var _method_set_editable_instance_2731852923: StringName! = nil
    static var _method_is_editable_instance_3093956946: StringName! = nil
    static var _method_get_viewport_3596683776: StringName! = nil
    static var _method_queue_free_3218959716: StringName! = nil
    static var _method_request_ready_3218959716: StringName! = nil
    static var _method_set_multiplayer_authority_4023243586: StringName! = nil
    static var _method_get_multiplayer_authority_3905245786: StringName! = nil
    static var _method_is_multiplayer_authority_36873697: StringName! = nil
    static var _method_get_multiplayer_406750475: StringName! = nil
    static var _method_rpc_config_3776071444: StringName! = nil
    static var _method_set_editor_description_83702148: StringName! = nil
    static var _method_get_editor_description_201670096: StringName! = nil
    static var _method_set_unique_name_in_owner_2586408642: StringName! = nil
    static var _method_is_unique_name_in_owner_36873697: StringName! = nil
    static var _method_rpc_4047867050: StringName! = nil
    static var _method_rpc_id_361499283: StringName! = nil
    static var _method_update_configuration_warnings_3218959716: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Node == nil)
        __godot_name_Node = StringName(from: "Node")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_print_orphan_nodes_3218959716 = StringName(from: "print_orphan_nodes")
        assert(self._method_print_orphan_nodes_3218959716 != nil)
        self._method_add_sibling_2570952461 = StringName(from: "add_sibling")
        assert(self._method_add_sibling_2570952461 != nil)
        self._method_set_name_83702148 = StringName(from: "set_name")
        assert(self._method_set_name_83702148 != nil)
        self._method_get_name_2002593661 = StringName(from: "get_name")
        assert(self._method_get_name_2002593661 != nil)
        self._method_add_child_3070154285 = StringName(from: "add_child")
        assert(self._method_add_child_3070154285 != nil)
        self._method_remove_child_1078189570 = StringName(from: "remove_child")
        assert(self._method_remove_child_1078189570 != nil)
        self._method_reparent_2570952461 = StringName(from: "reparent")
        assert(self._method_reparent_2570952461 != nil)
        self._method_get_child_count_894402480 = StringName(from: "get_child_count")
        assert(self._method_get_child_count_894402480 != nil)
        self._method_get_children_873284517 = StringName(from: "get_children")
        assert(self._method_get_children_873284517 != nil)
        self._method_get_child_541253412 = StringName(from: "get_child")
        assert(self._method_get_child_541253412 != nil)
        self._method_has_node_861721659 = StringName(from: "has_node")
        assert(self._method_has_node_861721659 != nil)
        self._method_get_node_2734337346 = StringName(from: "get_node")
        assert(self._method_get_node_2734337346 != nil)
        self._method_get_node_or_null_2734337346 = StringName(from: "get_node_or_null")
        assert(self._method_get_node_or_null_2734337346 != nil)
        self._method_get_parent_3160264692 = StringName(from: "get_parent")
        assert(self._method_get_parent_3160264692 != nil)
        self._method_find_child_4253159453 = StringName(from: "find_child")
        assert(self._method_find_child_4253159453 != nil)
        self._method_find_children_1585018254 = StringName(from: "find_children")
        assert(self._method_find_children_1585018254 != nil)
        self._method_find_parent_1140089439 = StringName(from: "find_parent")
        assert(self._method_find_parent_1140089439 != nil)
        self._method_has_node_and_resource_861721659 = StringName(from: "has_node_and_resource")
        assert(self._method_has_node_and_resource_861721659 != nil)
        self._method_get_node_and_resource_502563882 = StringName(from: "get_node_and_resource")
        assert(self._method_get_node_and_resource_502563882 != nil)
        self._method_is_inside_tree_36873697 = StringName(from: "is_inside_tree")
        assert(self._method_is_inside_tree_36873697 != nil)
        self._method_is_ancestor_of_3093956946 = StringName(from: "is_ancestor_of")
        assert(self._method_is_ancestor_of_3093956946 != nil)
        self._method_is_greater_than_3093956946 = StringName(from: "is_greater_than")
        assert(self._method_is_greater_than_3093956946 != nil)
        self._method_get_path_4075236667 = StringName(from: "get_path")
        assert(self._method_get_path_4075236667 != nil)
        self._method_get_path_to_498846349 = StringName(from: "get_path_to")
        assert(self._method_get_path_to_498846349 != nil)
        self._method_add_to_group_3683006648 = StringName(from: "add_to_group")
        assert(self._method_add_to_group_3683006648 != nil)
        self._method_remove_from_group_3304788590 = StringName(from: "remove_from_group")
        assert(self._method_remove_from_group_3304788590 != nil)
        self._method_is_in_group_2619796661 = StringName(from: "is_in_group")
        assert(self._method_is_in_group_2619796661 != nil)
        self._method_move_child_3315886247 = StringName(from: "move_child")
        assert(self._method_move_child_3315886247 != nil)
        self._method_get_groups_3995934104 = StringName(from: "get_groups")
        assert(self._method_get_groups_3995934104 != nil)
        self._method_set_owner_1078189570 = StringName(from: "set_owner")
        assert(self._method_set_owner_1078189570 != nil)
        self._method_get_owner_3160264692 = StringName(from: "get_owner")
        assert(self._method_get_owner_3160264692 != nil)
        self._method_get_index_894402480 = StringName(from: "get_index")
        assert(self._method_get_index_894402480 != nil)
        self._method_print_tree_3218959716 = StringName(from: "print_tree")
        assert(self._method_print_tree_3218959716 != nil)
        self._method_print_tree_pretty_3218959716 = StringName(from: "print_tree_pretty")
        assert(self._method_print_tree_pretty_3218959716 != nil)
        self._method_set_scene_file_path_83702148 = StringName(from: "set_scene_file_path")
        assert(self._method_set_scene_file_path_83702148 != nil)
        self._method_get_scene_file_path_201670096 = StringName(from: "get_scene_file_path")
        assert(self._method_get_scene_file_path_201670096 != nil)
        self._method_propagate_notification_1286410249 = StringName(from: "propagate_notification")
        assert(self._method_propagate_notification_1286410249 != nil)
        self._method_propagate_call_1667910434 = StringName(from: "propagate_call")
        assert(self._method_propagate_call_1667910434 != nil)
        self._method_set_physics_process_2586408642 = StringName(from: "set_physics_process")
        assert(self._method_set_physics_process_2586408642 != nil)
        self._method_get_physics_process_delta_time_1740695150 = StringName(from: "get_physics_process_delta_time")
        assert(self._method_get_physics_process_delta_time_1740695150 != nil)
        self._method_is_physics_processing_36873697 = StringName(from: "is_physics_processing")
        assert(self._method_is_physics_processing_36873697 != nil)
        self._method_get_process_delta_time_1740695150 = StringName(from: "get_process_delta_time")
        assert(self._method_get_process_delta_time_1740695150 != nil)
        self._method_set_process_2586408642 = StringName(from: "set_process")
        assert(self._method_set_process_2586408642 != nil)
        self._method_set_process_priority_1286410249 = StringName(from: "set_process_priority")
        assert(self._method_set_process_priority_1286410249 != nil)
        self._method_get_process_priority_3905245786 = StringName(from: "get_process_priority")
        assert(self._method_get_process_priority_3905245786 != nil)
        self._method_is_processing_36873697 = StringName(from: "is_processing")
        assert(self._method_is_processing_36873697 != nil)
        self._method_set_process_input_2586408642 = StringName(from: "set_process_input")
        assert(self._method_set_process_input_2586408642 != nil)
        self._method_is_processing_input_36873697 = StringName(from: "is_processing_input")
        assert(self._method_is_processing_input_36873697 != nil)
        self._method_set_process_shortcut_input_2586408642 = StringName(from: "set_process_shortcut_input")
        assert(self._method_set_process_shortcut_input_2586408642 != nil)
        self._method_is_processing_shortcut_input_36873697 = StringName(from: "is_processing_shortcut_input")
        assert(self._method_is_processing_shortcut_input_36873697 != nil)
        self._method_set_process_unhandled_input_2586408642 = StringName(from: "set_process_unhandled_input")
        assert(self._method_set_process_unhandled_input_2586408642 != nil)
        self._method_is_processing_unhandled_input_36873697 = StringName(from: "is_processing_unhandled_input")
        assert(self._method_is_processing_unhandled_input_36873697 != nil)
        self._method_set_process_unhandled_key_input_2586408642 = StringName(from: "set_process_unhandled_key_input")
        assert(self._method_set_process_unhandled_key_input_2586408642 != nil)
        self._method_is_processing_unhandled_key_input_36873697 = StringName(from: "is_processing_unhandled_key_input")
        assert(self._method_is_processing_unhandled_key_input_36873697 != nil)
        self._method_set_process_mode_1841290486 = StringName(from: "set_process_mode")
        assert(self._method_set_process_mode_1841290486 != nil)
        self._method_get_process_mode_739966102 = StringName(from: "get_process_mode")
        assert(self._method_get_process_mode_739966102 != nil)
        self._method_can_process_36873697 = StringName(from: "can_process")
        assert(self._method_can_process_36873697 != nil)
        self._method_set_display_folded_2586408642 = StringName(from: "set_display_folded")
        assert(self._method_set_display_folded_2586408642 != nil)
        self._method_is_displayed_folded_36873697 = StringName(from: "is_displayed_folded")
        assert(self._method_is_displayed_folded_36873697 != nil)
        self._method_set_process_internal_2586408642 = StringName(from: "set_process_internal")
        assert(self._method_set_process_internal_2586408642 != nil)
        self._method_is_processing_internal_36873697 = StringName(from: "is_processing_internal")
        assert(self._method_is_processing_internal_36873697 != nil)
        self._method_set_physics_process_internal_2586408642 = StringName(from: "set_physics_process_internal")
        assert(self._method_set_physics_process_internal_2586408642 != nil)
        self._method_is_physics_processing_internal_36873697 = StringName(from: "is_physics_processing_internal")
        assert(self._method_is_physics_processing_internal_36873697 != nil)
        self._method_get_window_1757182445 = StringName(from: "get_window")
        assert(self._method_get_window_1757182445 != nil)
        self._method_get_tree_2958820483 = StringName(from: "get_tree")
        assert(self._method_get_tree_2958820483 != nil)
        self._method_create_tween_3426978995 = StringName(from: "create_tween")
        assert(self._method_create_tween_3426978995 != nil)
        self._method_duplicate_3511555459 = StringName(from: "duplicate")
        assert(self._method_duplicate_3511555459 != nil)
        self._method_replace_by_2570952461 = StringName(from: "replace_by")
        assert(self._method_replace_by_2570952461 != nil)
        self._method_set_scene_instance_load_placeholder_2586408642 = StringName(from: "set_scene_instance_load_placeholder")
        assert(self._method_set_scene_instance_load_placeholder_2586408642 != nil)
        self._method_get_scene_instance_load_placeholder_36873697 = StringName(from: "get_scene_instance_load_placeholder")
        assert(self._method_get_scene_instance_load_placeholder_36873697 != nil)
        self._method_set_editable_instance_2731852923 = StringName(from: "set_editable_instance")
        assert(self._method_set_editable_instance_2731852923 != nil)
        self._method_is_editable_instance_3093956946 = StringName(from: "is_editable_instance")
        assert(self._method_is_editable_instance_3093956946 != nil)
        self._method_get_viewport_3596683776 = StringName(from: "get_viewport")
        assert(self._method_get_viewport_3596683776 != nil)
        self._method_queue_free_3218959716 = StringName(from: "queue_free")
        assert(self._method_queue_free_3218959716 != nil)
        self._method_request_ready_3218959716 = StringName(from: "request_ready")
        assert(self._method_request_ready_3218959716 != nil)
        self._method_set_multiplayer_authority_4023243586 = StringName(from: "set_multiplayer_authority")
        assert(self._method_set_multiplayer_authority_4023243586 != nil)
        self._method_get_multiplayer_authority_3905245786 = StringName(from: "get_multiplayer_authority")
        assert(self._method_get_multiplayer_authority_3905245786 != nil)
        self._method_is_multiplayer_authority_36873697 = StringName(from: "is_multiplayer_authority")
        assert(self._method_is_multiplayer_authority_36873697 != nil)
        self._method_get_multiplayer_406750475 = StringName(from: "get_multiplayer")
        assert(self._method_get_multiplayer_406750475 != nil)
        self._method_rpc_config_3776071444 = StringName(from: "rpc_config")
        assert(self._method_rpc_config_3776071444 != nil)
        self._method_set_editor_description_83702148 = StringName(from: "set_editor_description")
        assert(self._method_set_editor_description_83702148 != nil)
        self._method_get_editor_description_201670096 = StringName(from: "get_editor_description")
        assert(self._method_get_editor_description_201670096 != nil)
        self._method_set_unique_name_in_owner_2586408642 = StringName(from: "set_unique_name_in_owner")
        assert(self._method_set_unique_name_in_owner_2586408642 != nil)
        self._method_is_unique_name_in_owner_36873697 = StringName(from: "is_unique_name_in_owner")
        assert(self._method_is_unique_name_in_owner_36873697 != nil)
        self._method_rpc_4047867050 = StringName(from: "rpc")
        assert(self._method_rpc_4047867050 != nil)
        self._method_rpc_id_361499283 = StringName(from: "rpc_id")
        assert(self._method_rpc_id_361499283 != nil)
        self._method_update_configuration_warnings_3218959716 = StringName(from: "update_configuration_warnings")
        assert(self._method_update_configuration_warnings_3218959716 != nil)
    }

    public func _process(delta: Float64)  {
        withUnsafePointer(to: delta) { delta_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(delta_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
    }
    public func _physics_process(delta: Float64)  {
        withUnsafePointer(to: delta) { delta_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(delta_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
    }
    public func _enter_tree()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _exit_tree()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _ready()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _get_configuration_warnings() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func _input(event: InputEvent)  {
        let event_native = event._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(event_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _shortcut_input(event: InputEvent)  {
        let event_native = event._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(event_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _unhandled_input(event: InputEvent)  {
        let event_native = event._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(event_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _unhandled_key_input(event: InputEvent)  {
        let event_native = event._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(event_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func print_orphan_nodes()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_print_orphan_nodes_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_sibling(sibling: Node, force_readable_name: UInt8)  {
        withUnsafePointer(to: force_readable_name) { force_readable_name_native in
        let sibling_native = sibling._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sibling_native), .init(force_readable_name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_sibling_2570952461._native_ptr(),
                    2570952461)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_name(name: godot.String)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_name_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_name() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_name_2002593661._native_ptr(),
                    2002593661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
    public func add_child(node: Node, force_readable_name: UInt8, `internal`: Node.InternalMode)  {
        withUnsafePointer(to: force_readable_name) { force_readable_name_native in
        withUnsafePointer(to: `internal`.rawValue) { internal_native in
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native), .init(force_readable_name_native), .init(internal_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_child_3070154285._native_ptr(),
                    3070154285)
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
    public func remove_child(node: Node)  {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_child_1078189570._native_ptr(),
                    1078189570)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func reparent(new_parent: Node, keep_global_transform: UInt8)  {
        withUnsafePointer(to: keep_global_transform) { keep_global_transform_native in
        let new_parent_native = new_parent._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(new_parent_native), .init(keep_global_transform_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_reparent_2570952461._native_ptr(),
                    2570952461)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_child_count(include_internal: UInt8) -> Int64 {
        withUnsafePointer(to: include_internal) { include_internal_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(include_internal_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_child_count_894402480._native_ptr(),
                    894402480)
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
    public func get_children(include_internal: UInt8) -> [Node] {
        withUnsafePointer(to: include_internal) { include_internal_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(include_internal_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_children_873284517._native_ptr(),
                    873284517)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Node](godot: __resPtr.pointee)
        }
    }
    public func get_child(idx: Int64, include_internal: UInt8) -> Node {
        withUnsafePointer(to: include_internal) { include_internal_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(include_internal_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_child_541253412._native_ptr(),
                    541253412)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(godot: __resPtr.pointee)
        }
        }
    }
    public func has_node(path: NodePath) -> UInt8 {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_node_861721659._native_ptr(),
                    861721659)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_node(path: NodePath) -> Node {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_node_2734337346._native_ptr(),
                    2734337346)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(godot: __resPtr.pointee)
    }
    public func get_node_or_null(path: NodePath) -> Node {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_node_or_null_2734337346._native_ptr(),
                    2734337346)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(godot: __resPtr.pointee)
    }
    public func get_parent() -> Node {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_parent_3160264692._native_ptr(),
                    3160264692)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(godot: __resPtr.pointee)
    }
    public func find_child(pattern: godot.String, recursive: UInt8, owned: UInt8) -> Node {
        withUnsafePointer(to: owned) { owned_native in
        withUnsafePointer(to: recursive) { recursive_native in
        let pattern_native = pattern._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pattern_native), .init(recursive_native), .init(owned_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_find_child_4253159453._native_ptr(),
                    4253159453)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(godot: __resPtr.pointee)
        }
        }
    }
    public func find_children(pattern: godot.String, `type`: godot.String, recursive: UInt8, owned: UInt8) -> [Node] {
        withUnsafePointer(to: owned) { owned_native in
        withUnsafePointer(to: recursive) { recursive_native in
        let type_native = `type`._native_ptr()
        let pattern_native = pattern._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pattern_native), .init(type_native), .init(recursive_native), .init(owned_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_find_children_1585018254._native_ptr(),
                    1585018254)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Node](godot: __resPtr.pointee)
        }
        }
    }
    public func find_parent(pattern: godot.String) -> Node {
        let pattern_native = pattern._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pattern_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_find_parent_1140089439._native_ptr(),
                    1140089439)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(godot: __resPtr.pointee)
    }
    public func has_node_and_resource(path: NodePath) -> UInt8 {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_node_and_resource_861721659._native_ptr(),
                    861721659)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_node_and_resource(path: NodePath) -> Array {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_node_and_resource_502563882._native_ptr(),
                    502563882)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
    }
    public func is_inside_tree() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_inside_tree_36873697._native_ptr(),
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
    public func is_ancestor_of(node: Node) -> UInt8 {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_ancestor_of_3093956946._native_ptr(),
                    3093956946)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func is_greater_than(node: Node) -> UInt8 {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_greater_than_3093956946._native_ptr(),
                    3093956946)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_path() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_path_4075236667._native_ptr(),
                    4075236667)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
    }
    public func get_path_to(node: Node, use_unique_path: UInt8) -> NodePath {
        withUnsafePointer(to: use_unique_path) { use_unique_path_native in
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native), .init(use_unique_path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_path_to_498846349._native_ptr(),
                    498846349)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
        }
    }
    public func add_to_group(group: StringName, persistent: UInt8)  {
        withUnsafePointer(to: persistent) { persistent_native in
        let group_native = group._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(group_native), .init(persistent_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_to_group_3683006648._native_ptr(),
                    3683006648)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_from_group(group: StringName)  {
        let group_native = group._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(group_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_from_group_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func is_in_group(group: StringName) -> UInt8 {
        let group_native = group._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(group_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_in_group_2619796661._native_ptr(),
                    2619796661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func move_child(child_node: Node, to_index: Int64)  {
        withUnsafePointer(to: to_index) { to_index_native in
        let child_node_native = child_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(child_node_native), .init(to_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_move_child_3315886247._native_ptr(),
                    3315886247)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_groups() -> [StringName] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_groups_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [StringName](godot: __resPtr.pointee)
    }
    public func set_owner(owner: Node)  {
        let owner_native = owner._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(owner_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_owner_1078189570._native_ptr(),
                    1078189570)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_owner() -> Node {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_owner_3160264692._native_ptr(),
                    3160264692)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(godot: __resPtr.pointee)
    }
    public func get_index(include_internal: UInt8) -> Int64 {
        withUnsafePointer(to: include_internal) { include_internal_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(include_internal_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_index_894402480._native_ptr(),
                    894402480)
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
    public func print_tree()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_print_tree_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func print_tree_pretty()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_print_tree_pretty_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_scene_file_path(scene_file_path: godot.String)  {
        let scene_file_path_native = scene_file_path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scene_file_path_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_scene_file_path_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_scene_file_path() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_scene_file_path_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func propagate_notification(what: Int64)  {
        withUnsafePointer(to: what) { what_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(what_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_propagate_notification_1286410249._native_ptr(),
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
    public func propagate_call(method: StringName, args: Array, parent_first: UInt8)  {
        withUnsafePointer(to: parent_first) { parent_first_native in
        let args_native = args._native_ptr()
        let method_native = method._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(method_native), .init(args_native), .init(parent_first_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_propagate_call_1667910434._native_ptr(),
                    1667910434)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_physics_process(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_physics_process_2586408642._native_ptr(),
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
    public func get_physics_process_delta_time() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_physics_process_delta_time_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func is_physics_processing() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_physics_processing_36873697._native_ptr(),
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
    public func get_process_delta_time() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_process_delta_time_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_process(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_process_2586408642._native_ptr(),
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
    public func set_process_priority(priority: Int64)  {
        withUnsafePointer(to: priority) { priority_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(priority_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_process_priority_1286410249._native_ptr(),
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
    public func get_process_priority() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_process_priority_3905245786._native_ptr(),
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
    public func is_processing() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_processing_36873697._native_ptr(),
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
    public func set_process_input(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_process_input_2586408642._native_ptr(),
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
    public func is_processing_input() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_processing_input_36873697._native_ptr(),
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
    public func set_process_shortcut_input(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_process_shortcut_input_2586408642._native_ptr(),
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
    public func is_processing_shortcut_input() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_processing_shortcut_input_36873697._native_ptr(),
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
    public func set_process_unhandled_input(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_process_unhandled_input_2586408642._native_ptr(),
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
    public func is_processing_unhandled_input() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_processing_unhandled_input_36873697._native_ptr(),
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
    public func set_process_unhandled_key_input(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_process_unhandled_key_input_2586408642._native_ptr(),
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
    public func is_processing_unhandled_key_input() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_processing_unhandled_key_input_36873697._native_ptr(),
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
    public func set_process_mode(mode: Node.ProcessMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_process_mode_1841290486._native_ptr(),
                    1841290486)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_process_mode() -> Node.ProcessMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_process_mode_739966102._native_ptr(),
                    739966102)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node.ProcessMode(godot: __resPtr.pointee)
    }
    public func can_process() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_can_process_36873697._native_ptr(),
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
    public func set_display_folded(fold: UInt8)  {
        withUnsafePointer(to: fold) { fold_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fold_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_display_folded_2586408642._native_ptr(),
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
    public func is_displayed_folded() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_displayed_folded_36873697._native_ptr(),
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
    public func set_process_internal(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_process_internal_2586408642._native_ptr(),
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
    public func is_processing_internal() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_processing_internal_36873697._native_ptr(),
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
    public func set_physics_process_internal(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_physics_process_internal_2586408642._native_ptr(),
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
    public func is_physics_processing_internal() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_physics_processing_internal_36873697._native_ptr(),
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
    public func get_window() -> Window {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_window_1757182445._native_ptr(),
                    1757182445)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Window(godot: __resPtr.pointee)
    }
    public func get_tree() -> SceneTree {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tree_2958820483._native_ptr(),
                    2958820483)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SceneTree(godot: __resPtr.pointee)
    }
    public func create_tween() -> Tween {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_tween_3426978995._native_ptr(),
                    3426978995)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Tween(godot: __resPtr.pointee)
    }
    public func duplicate(flags: Int64) -> Node {
        withUnsafePointer(to: flags) { flags_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flags_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_duplicate_3511555459._native_ptr(),
                    3511555459)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(godot: __resPtr.pointee)
        }
    }
    public func replace_by(node: Node, keep_groups: UInt8)  {
        withUnsafePointer(to: keep_groups) { keep_groups_native in
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native), .init(keep_groups_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_replace_by_2570952461._native_ptr(),
                    2570952461)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_scene_instance_load_placeholder(load_placeholder: UInt8)  {
        withUnsafePointer(to: load_placeholder) { load_placeholder_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(load_placeholder_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_scene_instance_load_placeholder_2586408642._native_ptr(),
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
    public func get_scene_instance_load_placeholder() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_scene_instance_load_placeholder_36873697._native_ptr(),
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
    public func set_editable_instance(node: Node, is_editable: UInt8)  {
        withUnsafePointer(to: is_editable) { is_editable_native in
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native), .init(is_editable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_editable_instance_2731852923._native_ptr(),
                    2731852923)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_editable_instance(node: Node) -> UInt8 {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_editable_instance_3093956946._native_ptr(),
                    3093956946)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_viewport() -> Viewport {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_viewport_3596683776._native_ptr(),
                    3596683776)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Viewport(godot: __resPtr.pointee)
    }
    public func queue_free()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_queue_free_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func request_ready()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_request_ready_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_multiplayer_authority(id: Int64, recursive: UInt8)  {
        withUnsafePointer(to: recursive) { recursive_native in
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(recursive_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_multiplayer_authority_4023243586._native_ptr(),
                    4023243586)
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
    public func get_multiplayer_authority() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_multiplayer_authority_3905245786._native_ptr(),
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
    public func is_multiplayer_authority() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_multiplayer_authority_36873697._native_ptr(),
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
    public func get_multiplayer() -> MultiplayerAPI {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_multiplayer_406750475._native_ptr(),
                    406750475)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MultiplayerAPI(godot: __resPtr.pointee)
    }
    public func rpc_config(method: StringName, config: Variant)  {
        let config_native = config._native_ptr()
        let method_native = method._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(method_native), .init(config_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_rpc_config_3776071444._native_ptr(),
                    3776071444)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_editor_description(editor_description: godot.String)  {
        let editor_description_native = editor_description._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(editor_description_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_editor_description_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_editor_description() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_editor_description_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_unique_name_in_owner(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_unique_name_in_owner_2586408642._native_ptr(),
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
    public func is_unique_name_in_owner() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_unique_name_in_owner_36873697._native_ptr(),
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
    public func rpc(method: StringName) -> Error {
        let method_native = method._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(method_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_rpc_4047867050._native_ptr(),
                    4047867050)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func rpc_id(peer_id: Int64, method: StringName) -> Error {
        withUnsafePointer(to: peer_id) { peer_id_native in
        let method_native = method._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(peer_id_native), .init(method_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_rpc_id_361499283._native_ptr(),
                    361499283)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
    public func update_configuration_warnings()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_update_configuration_warnings_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}