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
public class Node : Object {

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

    static var _method__process_0: GDExtensionMethodBindPtr! = nil
    static var _method__physics_process_0: GDExtensionMethodBindPtr! = nil
    static var _method__enter_tree_0: GDExtensionMethodBindPtr! = nil
    static var _method__exit_tree_0: GDExtensionMethodBindPtr! = nil
    static var _method__ready_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_configuration_warnings_0: GDExtensionMethodBindPtr! = nil
    static var _method__input_0: GDExtensionMethodBindPtr! = nil
    static var _method__shortcut_input_0: GDExtensionMethodBindPtr! = nil
    static var _method__unhandled_input_0: GDExtensionMethodBindPtr! = nil
    static var _method__unhandled_key_input_0: GDExtensionMethodBindPtr! = nil
    static var _method_print_orphan_nodes_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_add_sibling_2570952461: GDExtensionMethodBindPtr! = nil
    static var _method_set_name_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_name_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_add_child_3070154285: GDExtensionMethodBindPtr! = nil
    static var _method_remove_child_1078189570: GDExtensionMethodBindPtr! = nil
    static var _method_reparent_2570952461: GDExtensionMethodBindPtr! = nil
    static var _method_get_child_count_894402480: GDExtensionMethodBindPtr! = nil
    static var _method_get_children_873284517: GDExtensionMethodBindPtr! = nil
    static var _method_get_child_541253412: GDExtensionMethodBindPtr! = nil
    static var _method_has_node_861721659: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_2734337346: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_or_null_2734337346: GDExtensionMethodBindPtr! = nil
    static var _method_get_parent_3160264692: GDExtensionMethodBindPtr! = nil
    static var _method_find_child_4253159453: GDExtensionMethodBindPtr! = nil
    static var _method_find_children_1585018254: GDExtensionMethodBindPtr! = nil
    static var _method_find_parent_1140089439: GDExtensionMethodBindPtr! = nil
    static var _method_has_node_and_resource_861721659: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_and_resource_502563882: GDExtensionMethodBindPtr! = nil
    static var _method_is_inside_tree_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_ancestor_of_3093956946: GDExtensionMethodBindPtr! = nil
    static var _method_is_greater_than_3093956946: GDExtensionMethodBindPtr! = nil
    static var _method_get_path_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_get_path_to_498846349: GDExtensionMethodBindPtr! = nil
    static var _method_add_to_group_3683006648: GDExtensionMethodBindPtr! = nil
    static var _method_remove_from_group_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_is_in_group_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_move_child_3315886247: GDExtensionMethodBindPtr! = nil
    static var _method_get_groups_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_set_owner_1078189570: GDExtensionMethodBindPtr! = nil
    static var _method_get_owner_3160264692: GDExtensionMethodBindPtr! = nil
    static var _method_get_index_894402480: GDExtensionMethodBindPtr! = nil
    static var _method_print_tree_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_print_tree_pretty_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_scene_file_path_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_scene_file_path_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_propagate_notification_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_propagate_call_1667910434: GDExtensionMethodBindPtr! = nil
    static var _method_set_physics_process_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_physics_process_delta_time_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_is_physics_processing_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_process_delta_time_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_process_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_process_priority_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_process_priority_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_is_processing_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_process_input_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_processing_input_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_process_shortcut_input_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_processing_shortcut_input_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_process_unhandled_input_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_processing_unhandled_input_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_process_unhandled_key_input_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_processing_unhandled_key_input_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_process_mode_1841290486: GDExtensionMethodBindPtr! = nil
    static var _method_get_process_mode_739966102: GDExtensionMethodBindPtr! = nil
    static var _method_can_process_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_display_folded_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_displayed_folded_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_process_internal_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_processing_internal_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_physics_process_internal_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_physics_processing_internal_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_window_1757182445: GDExtensionMethodBindPtr! = nil
    static var _method_get_tree_2958820483: GDExtensionMethodBindPtr! = nil
    static var _method_create_tween_3426978995: GDExtensionMethodBindPtr! = nil
    static var _method_duplicate_3511555459: GDExtensionMethodBindPtr! = nil
    static var _method_replace_by_2570952461: GDExtensionMethodBindPtr! = nil
    static var _method_set_scene_instance_load_placeholder_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_scene_instance_load_placeholder_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_editable_instance_2731852923: GDExtensionMethodBindPtr! = nil
    static var _method_is_editable_instance_3093956946: GDExtensionMethodBindPtr! = nil
    static var _method_get_viewport_3596683776: GDExtensionMethodBindPtr! = nil
    static var _method_queue_free_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_request_ready_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_multiplayer_authority_4023243586: GDExtensionMethodBindPtr! = nil
    static var _method_get_multiplayer_authority_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_is_multiplayer_authority_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_multiplayer_406750475: GDExtensionMethodBindPtr! = nil
    static var _method_rpc_config_3776071444: GDExtensionMethodBindPtr! = nil
    static var _method_set_editor_description_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_editor_description_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_unique_name_in_owner_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_unique_name_in_owner_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_rpc_4047867050: GDExtensionMethodBindPtr! = nil
    static var _method_rpc_id_361499283: GDExtensionMethodBindPtr! = nil
    static var _method_update_configuration_warnings_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Node = StringName(from: "Node")

        let _method_print_orphan_nodes_3218959716_name = StringName(from: "print_orphan_nodes")
        self._method_print_orphan_nodes_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_print_orphan_nodes_3218959716_name._native_ptr(), 3218959716)
        assert(Node._method_print_orphan_nodes_3218959716 != nil)
        let _method_add_sibling_2570952461_name = StringName(from: "add_sibling")
        self._method_add_sibling_2570952461 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_sibling_2570952461_name._native_ptr(), 2570952461)
        assert(Node._method_add_sibling_2570952461 != nil)
        let _method_set_name_83702148_name = StringName(from: "set_name")
        self._method_set_name_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_name_83702148_name._native_ptr(), 83702148)
        assert(Node._method_set_name_83702148 != nil)
        let _method_get_name_2002593661_name = StringName(from: "get_name")
        self._method_get_name_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_name_2002593661_name._native_ptr(), 2002593661)
        assert(Node._method_get_name_2002593661 != nil)
        let _method_add_child_3070154285_name = StringName(from: "add_child")
        self._method_add_child_3070154285 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_child_3070154285_name._native_ptr(), 3070154285)
        assert(Node._method_add_child_3070154285 != nil)
        let _method_remove_child_1078189570_name = StringName(from: "remove_child")
        self._method_remove_child_1078189570 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_child_1078189570_name._native_ptr(), 1078189570)
        assert(Node._method_remove_child_1078189570 != nil)
        let _method_reparent_2570952461_name = StringName(from: "reparent")
        self._method_reparent_2570952461 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reparent_2570952461_name._native_ptr(), 2570952461)
        assert(Node._method_reparent_2570952461 != nil)
        let _method_get_child_count_894402480_name = StringName(from: "get_child_count")
        self._method_get_child_count_894402480 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_child_count_894402480_name._native_ptr(), 894402480)
        assert(Node._method_get_child_count_894402480 != nil)
        let _method_get_children_873284517_name = StringName(from: "get_children")
        self._method_get_children_873284517 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_children_873284517_name._native_ptr(), 873284517)
        assert(Node._method_get_children_873284517 != nil)
        let _method_get_child_541253412_name = StringName(from: "get_child")
        self._method_get_child_541253412 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_child_541253412_name._native_ptr(), 541253412)
        assert(Node._method_get_child_541253412 != nil)
        let _method_has_node_861721659_name = StringName(from: "has_node")
        self._method_has_node_861721659 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_node_861721659_name._native_ptr(), 861721659)
        assert(Node._method_has_node_861721659 != nil)
        let _method_get_node_2734337346_name = StringName(from: "get_node")
        self._method_get_node_2734337346 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_node_2734337346_name._native_ptr(), 2734337346)
        assert(Node._method_get_node_2734337346 != nil)
        let _method_get_node_or_null_2734337346_name = StringName(from: "get_node_or_null")
        self._method_get_node_or_null_2734337346 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_node_or_null_2734337346_name._native_ptr(), 2734337346)
        assert(Node._method_get_node_or_null_2734337346 != nil)
        let _method_get_parent_3160264692_name = StringName(from: "get_parent")
        self._method_get_parent_3160264692 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_parent_3160264692_name._native_ptr(), 3160264692)
        assert(Node._method_get_parent_3160264692 != nil)
        let _method_find_child_4253159453_name = StringName(from: "find_child")
        self._method_find_child_4253159453 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_find_child_4253159453_name._native_ptr(), 4253159453)
        assert(Node._method_find_child_4253159453 != nil)
        let _method_find_children_1585018254_name = StringName(from: "find_children")
        self._method_find_children_1585018254 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_find_children_1585018254_name._native_ptr(), 1585018254)
        assert(Node._method_find_children_1585018254 != nil)
        let _method_find_parent_1140089439_name = StringName(from: "find_parent")
        self._method_find_parent_1140089439 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_find_parent_1140089439_name._native_ptr(), 1140089439)
        assert(Node._method_find_parent_1140089439 != nil)
        let _method_has_node_and_resource_861721659_name = StringName(from: "has_node_and_resource")
        self._method_has_node_and_resource_861721659 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_node_and_resource_861721659_name._native_ptr(), 861721659)
        assert(Node._method_has_node_and_resource_861721659 != nil)
        let _method_get_node_and_resource_502563882_name = StringName(from: "get_node_and_resource")
        self._method_get_node_and_resource_502563882 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_node_and_resource_502563882_name._native_ptr(), 502563882)
        assert(Node._method_get_node_and_resource_502563882 != nil)
        let _method_is_inside_tree_36873697_name = StringName(from: "is_inside_tree")
        self._method_is_inside_tree_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_inside_tree_36873697_name._native_ptr(), 36873697)
        assert(Node._method_is_inside_tree_36873697 != nil)
        let _method_is_ancestor_of_3093956946_name = StringName(from: "is_ancestor_of")
        self._method_is_ancestor_of_3093956946 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_ancestor_of_3093956946_name._native_ptr(), 3093956946)
        assert(Node._method_is_ancestor_of_3093956946 != nil)
        let _method_is_greater_than_3093956946_name = StringName(from: "is_greater_than")
        self._method_is_greater_than_3093956946 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_greater_than_3093956946_name._native_ptr(), 3093956946)
        assert(Node._method_is_greater_than_3093956946 != nil)
        let _method_get_path_4075236667_name = StringName(from: "get_path")
        self._method_get_path_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_path_4075236667_name._native_ptr(), 4075236667)
        assert(Node._method_get_path_4075236667 != nil)
        let _method_get_path_to_498846349_name = StringName(from: "get_path_to")
        self._method_get_path_to_498846349 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_path_to_498846349_name._native_ptr(), 498846349)
        assert(Node._method_get_path_to_498846349 != nil)
        let _method_add_to_group_3683006648_name = StringName(from: "add_to_group")
        self._method_add_to_group_3683006648 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_to_group_3683006648_name._native_ptr(), 3683006648)
        assert(Node._method_add_to_group_3683006648 != nil)
        let _method_remove_from_group_3304788590_name = StringName(from: "remove_from_group")
        self._method_remove_from_group_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_from_group_3304788590_name._native_ptr(), 3304788590)
        assert(Node._method_remove_from_group_3304788590 != nil)
        let _method_is_in_group_2619796661_name = StringName(from: "is_in_group")
        self._method_is_in_group_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_in_group_2619796661_name._native_ptr(), 2619796661)
        assert(Node._method_is_in_group_2619796661 != nil)
        let _method_move_child_3315886247_name = StringName(from: "move_child")
        self._method_move_child_3315886247 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_move_child_3315886247_name._native_ptr(), 3315886247)
        assert(Node._method_move_child_3315886247 != nil)
        let _method_get_groups_3995934104_name = StringName(from: "get_groups")
        self._method_get_groups_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_groups_3995934104_name._native_ptr(), 3995934104)
        assert(Node._method_get_groups_3995934104 != nil)
        let _method_set_owner_1078189570_name = StringName(from: "set_owner")
        self._method_set_owner_1078189570 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_owner_1078189570_name._native_ptr(), 1078189570)
        assert(Node._method_set_owner_1078189570 != nil)
        let _method_get_owner_3160264692_name = StringName(from: "get_owner")
        self._method_get_owner_3160264692 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_owner_3160264692_name._native_ptr(), 3160264692)
        assert(Node._method_get_owner_3160264692 != nil)
        let _method_get_index_894402480_name = StringName(from: "get_index")
        self._method_get_index_894402480 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_index_894402480_name._native_ptr(), 894402480)
        assert(Node._method_get_index_894402480 != nil)
        let _method_print_tree_3218959716_name = StringName(from: "print_tree")
        self._method_print_tree_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_print_tree_3218959716_name._native_ptr(), 3218959716)
        assert(Node._method_print_tree_3218959716 != nil)
        let _method_print_tree_pretty_3218959716_name = StringName(from: "print_tree_pretty")
        self._method_print_tree_pretty_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_print_tree_pretty_3218959716_name._native_ptr(), 3218959716)
        assert(Node._method_print_tree_pretty_3218959716 != nil)
        let _method_set_scene_file_path_83702148_name = StringName(from: "set_scene_file_path")
        self._method_set_scene_file_path_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_scene_file_path_83702148_name._native_ptr(), 83702148)
        assert(Node._method_set_scene_file_path_83702148 != nil)
        let _method_get_scene_file_path_201670096_name = StringName(from: "get_scene_file_path")
        self._method_get_scene_file_path_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_scene_file_path_201670096_name._native_ptr(), 201670096)
        assert(Node._method_get_scene_file_path_201670096 != nil)
        let _method_propagate_notification_1286410249_name = StringName(from: "propagate_notification")
        self._method_propagate_notification_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_propagate_notification_1286410249_name._native_ptr(), 1286410249)
        assert(Node._method_propagate_notification_1286410249 != nil)
        let _method_propagate_call_1667910434_name = StringName(from: "propagate_call")
        self._method_propagate_call_1667910434 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_propagate_call_1667910434_name._native_ptr(), 1667910434)
        assert(Node._method_propagate_call_1667910434 != nil)
        let _method_set_physics_process_2586408642_name = StringName(from: "set_physics_process")
        self._method_set_physics_process_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_physics_process_2586408642_name._native_ptr(), 2586408642)
        assert(Node._method_set_physics_process_2586408642 != nil)
        let _method_get_physics_process_delta_time_1740695150_name = StringName(from: "get_physics_process_delta_time")
        self._method_get_physics_process_delta_time_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_physics_process_delta_time_1740695150_name._native_ptr(), 1740695150)
        assert(Node._method_get_physics_process_delta_time_1740695150 != nil)
        let _method_is_physics_processing_36873697_name = StringName(from: "is_physics_processing")
        self._method_is_physics_processing_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_physics_processing_36873697_name._native_ptr(), 36873697)
        assert(Node._method_is_physics_processing_36873697 != nil)
        let _method_get_process_delta_time_1740695150_name = StringName(from: "get_process_delta_time")
        self._method_get_process_delta_time_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_process_delta_time_1740695150_name._native_ptr(), 1740695150)
        assert(Node._method_get_process_delta_time_1740695150 != nil)
        let _method_set_process_2586408642_name = StringName(from: "set_process")
        self._method_set_process_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_process_2586408642_name._native_ptr(), 2586408642)
        assert(Node._method_set_process_2586408642 != nil)
        let _method_set_process_priority_1286410249_name = StringName(from: "set_process_priority")
        self._method_set_process_priority_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_process_priority_1286410249_name._native_ptr(), 1286410249)
        assert(Node._method_set_process_priority_1286410249 != nil)
        let _method_get_process_priority_3905245786_name = StringName(from: "get_process_priority")
        self._method_get_process_priority_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_process_priority_3905245786_name._native_ptr(), 3905245786)
        assert(Node._method_get_process_priority_3905245786 != nil)
        let _method_is_processing_36873697_name = StringName(from: "is_processing")
        self._method_is_processing_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_processing_36873697_name._native_ptr(), 36873697)
        assert(Node._method_is_processing_36873697 != nil)
        let _method_set_process_input_2586408642_name = StringName(from: "set_process_input")
        self._method_set_process_input_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_process_input_2586408642_name._native_ptr(), 2586408642)
        assert(Node._method_set_process_input_2586408642 != nil)
        let _method_is_processing_input_36873697_name = StringName(from: "is_processing_input")
        self._method_is_processing_input_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_processing_input_36873697_name._native_ptr(), 36873697)
        assert(Node._method_is_processing_input_36873697 != nil)
        let _method_set_process_shortcut_input_2586408642_name = StringName(from: "set_process_shortcut_input")
        self._method_set_process_shortcut_input_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_process_shortcut_input_2586408642_name._native_ptr(), 2586408642)
        assert(Node._method_set_process_shortcut_input_2586408642 != nil)
        let _method_is_processing_shortcut_input_36873697_name = StringName(from: "is_processing_shortcut_input")
        self._method_is_processing_shortcut_input_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_processing_shortcut_input_36873697_name._native_ptr(), 36873697)
        assert(Node._method_is_processing_shortcut_input_36873697 != nil)
        let _method_set_process_unhandled_input_2586408642_name = StringName(from: "set_process_unhandled_input")
        self._method_set_process_unhandled_input_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_process_unhandled_input_2586408642_name._native_ptr(), 2586408642)
        assert(Node._method_set_process_unhandled_input_2586408642 != nil)
        let _method_is_processing_unhandled_input_36873697_name = StringName(from: "is_processing_unhandled_input")
        self._method_is_processing_unhandled_input_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_processing_unhandled_input_36873697_name._native_ptr(), 36873697)
        assert(Node._method_is_processing_unhandled_input_36873697 != nil)
        let _method_set_process_unhandled_key_input_2586408642_name = StringName(from: "set_process_unhandled_key_input")
        self._method_set_process_unhandled_key_input_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_process_unhandled_key_input_2586408642_name._native_ptr(), 2586408642)
        assert(Node._method_set_process_unhandled_key_input_2586408642 != nil)
        let _method_is_processing_unhandled_key_input_36873697_name = StringName(from: "is_processing_unhandled_key_input")
        self._method_is_processing_unhandled_key_input_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_processing_unhandled_key_input_36873697_name._native_ptr(), 36873697)
        assert(Node._method_is_processing_unhandled_key_input_36873697 != nil)
        let _method_set_process_mode_1841290486_name = StringName(from: "set_process_mode")
        self._method_set_process_mode_1841290486 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_process_mode_1841290486_name._native_ptr(), 1841290486)
        assert(Node._method_set_process_mode_1841290486 != nil)
        let _method_get_process_mode_739966102_name = StringName(from: "get_process_mode")
        self._method_get_process_mode_739966102 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_process_mode_739966102_name._native_ptr(), 739966102)
        assert(Node._method_get_process_mode_739966102 != nil)
        let _method_can_process_36873697_name = StringName(from: "can_process")
        self._method_can_process_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_can_process_36873697_name._native_ptr(), 36873697)
        assert(Node._method_can_process_36873697 != nil)
        let _method_set_display_folded_2586408642_name = StringName(from: "set_display_folded")
        self._method_set_display_folded_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_display_folded_2586408642_name._native_ptr(), 2586408642)
        assert(Node._method_set_display_folded_2586408642 != nil)
        let _method_is_displayed_folded_36873697_name = StringName(from: "is_displayed_folded")
        self._method_is_displayed_folded_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_displayed_folded_36873697_name._native_ptr(), 36873697)
        assert(Node._method_is_displayed_folded_36873697 != nil)
        let _method_set_process_internal_2586408642_name = StringName(from: "set_process_internal")
        self._method_set_process_internal_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_process_internal_2586408642_name._native_ptr(), 2586408642)
        assert(Node._method_set_process_internal_2586408642 != nil)
        let _method_is_processing_internal_36873697_name = StringName(from: "is_processing_internal")
        self._method_is_processing_internal_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_processing_internal_36873697_name._native_ptr(), 36873697)
        assert(Node._method_is_processing_internal_36873697 != nil)
        let _method_set_physics_process_internal_2586408642_name = StringName(from: "set_physics_process_internal")
        self._method_set_physics_process_internal_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_physics_process_internal_2586408642_name._native_ptr(), 2586408642)
        assert(Node._method_set_physics_process_internal_2586408642 != nil)
        let _method_is_physics_processing_internal_36873697_name = StringName(from: "is_physics_processing_internal")
        self._method_is_physics_processing_internal_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_physics_processing_internal_36873697_name._native_ptr(), 36873697)
        assert(Node._method_is_physics_processing_internal_36873697 != nil)
        let _method_get_window_1757182445_name = StringName(from: "get_window")
        self._method_get_window_1757182445 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_window_1757182445_name._native_ptr(), 1757182445)
        assert(Node._method_get_window_1757182445 != nil)
        let _method_get_tree_2958820483_name = StringName(from: "get_tree")
        self._method_get_tree_2958820483 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tree_2958820483_name._native_ptr(), 2958820483)
        assert(Node._method_get_tree_2958820483 != nil)
        let _method_create_tween_3426978995_name = StringName(from: "create_tween")
        self._method_create_tween_3426978995 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_tween_3426978995_name._native_ptr(), 3426978995)
        assert(Node._method_create_tween_3426978995 != nil)
        let _method_duplicate_3511555459_name = StringName(from: "duplicate")
        self._method_duplicate_3511555459 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_duplicate_3511555459_name._native_ptr(), 3511555459)
        assert(Node._method_duplicate_3511555459 != nil)
        let _method_replace_by_2570952461_name = StringName(from: "replace_by")
        self._method_replace_by_2570952461 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_replace_by_2570952461_name._native_ptr(), 2570952461)
        assert(Node._method_replace_by_2570952461 != nil)
        let _method_set_scene_instance_load_placeholder_2586408642_name = StringName(from: "set_scene_instance_load_placeholder")
        self._method_set_scene_instance_load_placeholder_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_scene_instance_load_placeholder_2586408642_name._native_ptr(), 2586408642)
        assert(Node._method_set_scene_instance_load_placeholder_2586408642 != nil)
        let _method_get_scene_instance_load_placeholder_36873697_name = StringName(from: "get_scene_instance_load_placeholder")
        self._method_get_scene_instance_load_placeholder_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_scene_instance_load_placeholder_36873697_name._native_ptr(), 36873697)
        assert(Node._method_get_scene_instance_load_placeholder_36873697 != nil)
        let _method_set_editable_instance_2731852923_name = StringName(from: "set_editable_instance")
        self._method_set_editable_instance_2731852923 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_editable_instance_2731852923_name._native_ptr(), 2731852923)
        assert(Node._method_set_editable_instance_2731852923 != nil)
        let _method_is_editable_instance_3093956946_name = StringName(from: "is_editable_instance")
        self._method_is_editable_instance_3093956946 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_editable_instance_3093956946_name._native_ptr(), 3093956946)
        assert(Node._method_is_editable_instance_3093956946 != nil)
        let _method_get_viewport_3596683776_name = StringName(from: "get_viewport")
        self._method_get_viewport_3596683776 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_viewport_3596683776_name._native_ptr(), 3596683776)
        assert(Node._method_get_viewport_3596683776 != nil)
        let _method_queue_free_3218959716_name = StringName(from: "queue_free")
        self._method_queue_free_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_queue_free_3218959716_name._native_ptr(), 3218959716)
        assert(Node._method_queue_free_3218959716 != nil)
        let _method_request_ready_3218959716_name = StringName(from: "request_ready")
        self._method_request_ready_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_request_ready_3218959716_name._native_ptr(), 3218959716)
        assert(Node._method_request_ready_3218959716 != nil)
        let _method_set_multiplayer_authority_4023243586_name = StringName(from: "set_multiplayer_authority")
        self._method_set_multiplayer_authority_4023243586 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_multiplayer_authority_4023243586_name._native_ptr(), 4023243586)
        assert(Node._method_set_multiplayer_authority_4023243586 != nil)
        let _method_get_multiplayer_authority_3905245786_name = StringName(from: "get_multiplayer_authority")
        self._method_get_multiplayer_authority_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_multiplayer_authority_3905245786_name._native_ptr(), 3905245786)
        assert(Node._method_get_multiplayer_authority_3905245786 != nil)
        let _method_is_multiplayer_authority_36873697_name = StringName(from: "is_multiplayer_authority")
        self._method_is_multiplayer_authority_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_multiplayer_authority_36873697_name._native_ptr(), 36873697)
        assert(Node._method_is_multiplayer_authority_36873697 != nil)
        let _method_get_multiplayer_406750475_name = StringName(from: "get_multiplayer")
        self._method_get_multiplayer_406750475 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_multiplayer_406750475_name._native_ptr(), 406750475)
        assert(Node._method_get_multiplayer_406750475 != nil)
        let _method_rpc_config_3776071444_name = StringName(from: "rpc_config")
        self._method_rpc_config_3776071444 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rpc_config_3776071444_name._native_ptr(), 3776071444)
        assert(Node._method_rpc_config_3776071444 != nil)
        let _method_set_editor_description_83702148_name = StringName(from: "set_editor_description")
        self._method_set_editor_description_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_editor_description_83702148_name._native_ptr(), 83702148)
        assert(Node._method_set_editor_description_83702148 != nil)
        let _method_get_editor_description_201670096_name = StringName(from: "get_editor_description")
        self._method_get_editor_description_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_editor_description_201670096_name._native_ptr(), 201670096)
        assert(Node._method_get_editor_description_201670096 != nil)
        let _method_set_unique_name_in_owner_2586408642_name = StringName(from: "set_unique_name_in_owner")
        self._method_set_unique_name_in_owner_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_unique_name_in_owner_2586408642_name._native_ptr(), 2586408642)
        assert(Node._method_set_unique_name_in_owner_2586408642 != nil)
        let _method_is_unique_name_in_owner_36873697_name = StringName(from: "is_unique_name_in_owner")
        self._method_is_unique_name_in_owner_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_unique_name_in_owner_36873697_name._native_ptr(), 36873697)
        assert(Node._method_is_unique_name_in_owner_36873697 != nil)
        let _method_rpc_4047867050_name = StringName(from: "rpc")
        self._method_rpc_4047867050 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rpc_4047867050_name._native_ptr(), 4047867050)
        assert(Node._method_rpc_4047867050 != nil)
        let _method_rpc_id_361499283_name = StringName(from: "rpc_id")
        self._method_rpc_id_361499283 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rpc_id_361499283_name._native_ptr(), 361499283)
        assert(Node._method_rpc_id_361499283 != nil)
        let _method_update_configuration_warnings_3218959716_name = StringName(from: "update_configuration_warnings")
        self._method_update_configuration_warnings_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_update_configuration_warnings_3218959716_name._native_ptr(), 3218959716)
        assert(Node._method_update_configuration_warnings_3218959716 != nil)
    }

    public func _process(delta: Float64)  {
        withUnsafePointer(to: delta) { delta_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(delta_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__process_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__physics_process_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _enter_tree()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__enter_tree_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _exit_tree()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__exit_tree_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _ready()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__ready_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _get_configuration_warnings() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_configuration_warnings_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func _input(event: InputEvent)  {
        let event_native = event._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(event_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__input_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _shortcut_input(event: InputEvent)  {
        let event_native = event._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(event_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shortcut_input_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _unhandled_input(event: InputEvent)  {
        let event_native = event._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(event_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__unhandled_input_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _unhandled_key_input(event: InputEvent)  {
        let event_native = event._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(event_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__unhandled_key_input_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func print_orphan_nodes()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_print_orphan_nodes_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_sibling_2570952461,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_name(name: String)  {
        withUnsafePointer(to: name) { name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_name_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_name() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_name_2002593661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_child_3070154285,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_child_1078189570,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reparent_2570952461,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_child_count_894402480,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_children_873284517,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Node](from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_child_541253412,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_node_861721659,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_2734337346,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_or_null_2734337346,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(from: __resPtr.pointee)
    }
    public func get_parent() -> Node {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_parent_3160264692,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(from: __resPtr.pointee)
    }
    public func find_child(pattern: String, recursive: UInt8, owned: UInt8) -> Node {
        withUnsafePointer(to: owned) { owned_native in
        withUnsafePointer(to: recursive) { recursive_native in
        withUnsafePointer(to: pattern) { pattern_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pattern_native), .init(recursive_native), .init(owned_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_find_child_4253159453,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(from: __resPtr.pointee)
        }
        }
        }
    }
    public func find_children(pattern: String, `type`: String, recursive: UInt8, owned: UInt8) -> [Node] {
        withUnsafePointer(to: owned) { owned_native in
        withUnsafePointer(to: recursive) { recursive_native in
        withUnsafePointer(to: `type`) { type_native in
        withUnsafePointer(to: pattern) { pattern_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pattern_native), .init(type_native), .init(recursive_native), .init(owned_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_find_children_1585018254,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Node](from: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func find_parent(pattern: String) -> Node {
        withUnsafePointer(to: pattern) { pattern_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pattern_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_find_parent_1140089439,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(from: __resPtr.pointee)
        }
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_node_and_resource_861721659,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_and_resource_502563882,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(from: __resPtr.pointee)
    }
    public func is_inside_tree() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_inside_tree_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_ancestor_of_3093956946,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_greater_than_3093956946,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_path() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_path_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_path_to_498846349,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_to_group_3683006648,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_from_group_3304788590,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_in_group_2619796661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_move_child_3315886247,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_groups_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [StringName](from: __resPtr.pointee)
    }
    public func set_owner(owner: Node)  {
        let owner_native = owner._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(owner_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_owner_1078189570,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_owner_3160264692,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_index_894402480,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func print_tree()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_print_tree_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_print_tree_pretty_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_scene_file_path(scene_file_path: String)  {
        withUnsafePointer(to: scene_file_path) { scene_file_path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scene_file_path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_scene_file_path_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_scene_file_path() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_scene_file_path_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func propagate_notification(what: Int64)  {
        withUnsafePointer(to: what) { what_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(what_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_propagate_notification_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_propagate_call_1667910434,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_physics_process_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_physics_process_delta_time_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func is_physics_processing() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_physics_processing_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_process_delta_time() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_process_delta_time_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_process(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_process_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_process_priority_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_process_priority_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func is_processing() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_processing_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_process_input(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_process_input_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_processing_input_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_process_shortcut_input(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_process_shortcut_input_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_processing_shortcut_input_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_process_unhandled_input(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_process_unhandled_input_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_processing_unhandled_input_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_process_unhandled_key_input(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_process_unhandled_key_input_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_processing_unhandled_key_input_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_process_mode(mode: Node.ProcessMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_process_mode_1841290486,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_process_mode_739966102,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node.ProcessMode(from: __resPtr.pointee)
    }
    public func can_process() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_can_process_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_display_folded(fold: UInt8)  {
        withUnsafePointer(to: fold) { fold_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fold_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_display_folded_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_displayed_folded_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_process_internal(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_process_internal_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_processing_internal_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_physics_process_internal(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_physics_process_internal_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_physics_processing_internal_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_window() -> Window {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_window_1757182445,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Window(from: __resPtr.pointee)
    }
    public func get_tree() -> SceneTree {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tree_2958820483,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SceneTree(from: __resPtr.pointee)
    }
    public func create_tween() -> Tween {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_tween_3426978995,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Tween(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_duplicate_3511555459,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_replace_by_2570952461,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_scene_instance_load_placeholder_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_scene_instance_load_placeholder_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_editable_instance_2731852923,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_editable_instance_3093956946,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_viewport() -> Viewport {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_viewport_3596683776,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Viewport(from: __resPtr.pointee)
    }
    public func queue_free()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_queue_free_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_request_ready_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_multiplayer_authority_4023243586,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_multiplayer_authority_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func is_multiplayer_authority() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_multiplayer_authority_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_multiplayer() -> MultiplayerAPI {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_multiplayer_406750475,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MultiplayerAPI(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rpc_config_3776071444,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_editor_description(editor_description: String)  {
        withUnsafePointer(to: editor_description) { editor_description_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(editor_description_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_editor_description_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_editor_description() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_editor_description_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_unique_name_in_owner(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_unique_name_in_owner_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_unique_name_in_owner_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rpc_4047867050,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rpc_id_361499283,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func update_configuration_warnings()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_update_configuration_warnings_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}