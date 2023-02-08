import godot_native

fileprivate var __godot_name_SceneTree: StringName! = nil

/// Manages the game loop via a hierarchy of nodes.
/// 
/// As one of the most important classes, the [SceneTree] manages the hierarchy of nodes in a scene as well as scenes themselves. Nodes can be added, retrieved and removed. The whole scene tree (and thus the current scene) can be paused. Scenes can be loaded, switched and reloaded.
///  
/// You can also use the [SceneTree] to organize your nodes into groups: every node can be assigned as many groups as you want to create, e.g. an "enemy" group. You can then iterate these groups or even call methods and set properties on all the group's members at once.
///  
/// [SceneTree] is the default [MainLoop] implementation used by scenes, and is thus in charge of the game loop.
open class SceneTree : MainLoop {

    public enum GroupCallFlags : Int32 {
        case GROUP_CALL_DEFAULT = 0
        case GROUP_CALL_REVERSE = 1
        case GROUP_CALL_DEFERRED = 2
        case GROUP_CALL_UNIQUE = 4
    }

    public override class var __godot_name: StringName { __godot_name_SceneTree }

    static var _method_get_root_1757182445: GDExtensionMethodBindPtr! = nil
    static var _method_has_group_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_is_auto_accept_quit_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_auto_accept_quit_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_quit_on_go_back_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_quit_on_go_back_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_debug_collisions_hint_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_debugging_collisions_hint_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_debug_paths_hint_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_debugging_paths_hint_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_debug_navigation_hint_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_debugging_navigation_hint_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_edited_scene_root_1078189570: GDExtensionMethodBindPtr! = nil
    static var _method_get_edited_scene_root_3160264692: GDExtensionMethodBindPtr! = nil
    static var _method_set_pause_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_paused_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_create_timer_1780978058: GDExtensionMethodBindPtr! = nil
    static var _method_create_tween_3426978995: GDExtensionMethodBindPtr! = nil
    static var _method_get_processed_tweens_2915620761: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_frame_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_quit_1995695955: GDExtensionMethodBindPtr! = nil
    static var _method_queue_delete_3975164845: GDExtensionMethodBindPtr! = nil
    static var _method_call_group_flags_1527739229: GDExtensionMethodBindPtr! = nil
    static var _method_notify_group_flags_1245489420: GDExtensionMethodBindPtr! = nil
    static var _method_set_group_flags_3497599527: GDExtensionMethodBindPtr! = nil
    static var _method_call_group_1257962832: GDExtensionMethodBindPtr! = nil
    static var _method_notify_group_2415702435: GDExtensionMethodBindPtr! = nil
    static var _method_set_group_1279312029: GDExtensionMethodBindPtr! = nil
    static var _method_get_nodes_in_group_689397652: GDExtensionMethodBindPtr! = nil
    static var _method_get_first_node_in_group_4071044623: GDExtensionMethodBindPtr! = nil
    static var _method_set_current_scene_1078189570: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_scene_3160264692: GDExtensionMethodBindPtr! = nil
    static var _method_change_scene_to_file_166001499: GDExtensionMethodBindPtr! = nil
    static var _method_change_scene_to_packed_107349098: GDExtensionMethodBindPtr! = nil
    static var _method_reload_current_scene_166280745: GDExtensionMethodBindPtr! = nil
    static var _method_unload_current_scene_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_multiplayer_2385607013: GDExtensionMethodBindPtr! = nil
    static var _method_get_multiplayer_3453401404: GDExtensionMethodBindPtr! = nil
    static var _method_set_multiplayer_poll_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_multiplayer_poll_enabled_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_SceneTree = StringName(from: "SceneTree")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_root_1757182445_name = StringName(from: "get_root")
        self._method_get_root_1757182445 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_get_root_1757182445_name._native_ptr(), 1757182445)
        assert(SceneTree._method_get_root_1757182445 != nil)
        let _method_has_group_2619796661_name = StringName(from: "has_group")
        self._method_has_group_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_has_group_2619796661_name._native_ptr(), 2619796661)
        assert(SceneTree._method_has_group_2619796661 != nil)
        let _method_is_auto_accept_quit_36873697_name = StringName(from: "is_auto_accept_quit")
        self._method_is_auto_accept_quit_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_is_auto_accept_quit_36873697_name._native_ptr(), 36873697)
        assert(SceneTree._method_is_auto_accept_quit_36873697 != nil)
        let _method_set_auto_accept_quit_2586408642_name = StringName(from: "set_auto_accept_quit")
        self._method_set_auto_accept_quit_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_set_auto_accept_quit_2586408642_name._native_ptr(), 2586408642)
        assert(SceneTree._method_set_auto_accept_quit_2586408642 != nil)
        let _method_is_quit_on_go_back_36873697_name = StringName(from: "is_quit_on_go_back")
        self._method_is_quit_on_go_back_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_is_quit_on_go_back_36873697_name._native_ptr(), 36873697)
        assert(SceneTree._method_is_quit_on_go_back_36873697 != nil)
        let _method_set_quit_on_go_back_2586408642_name = StringName(from: "set_quit_on_go_back")
        self._method_set_quit_on_go_back_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_set_quit_on_go_back_2586408642_name._native_ptr(), 2586408642)
        assert(SceneTree._method_set_quit_on_go_back_2586408642 != nil)
        let _method_set_debug_collisions_hint_2586408642_name = StringName(from: "set_debug_collisions_hint")
        self._method_set_debug_collisions_hint_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_set_debug_collisions_hint_2586408642_name._native_ptr(), 2586408642)
        assert(SceneTree._method_set_debug_collisions_hint_2586408642 != nil)
        let _method_is_debugging_collisions_hint_36873697_name = StringName(from: "is_debugging_collisions_hint")
        self._method_is_debugging_collisions_hint_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_is_debugging_collisions_hint_36873697_name._native_ptr(), 36873697)
        assert(SceneTree._method_is_debugging_collisions_hint_36873697 != nil)
        let _method_set_debug_paths_hint_2586408642_name = StringName(from: "set_debug_paths_hint")
        self._method_set_debug_paths_hint_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_set_debug_paths_hint_2586408642_name._native_ptr(), 2586408642)
        assert(SceneTree._method_set_debug_paths_hint_2586408642 != nil)
        let _method_is_debugging_paths_hint_36873697_name = StringName(from: "is_debugging_paths_hint")
        self._method_is_debugging_paths_hint_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_is_debugging_paths_hint_36873697_name._native_ptr(), 36873697)
        assert(SceneTree._method_is_debugging_paths_hint_36873697 != nil)
        let _method_set_debug_navigation_hint_2586408642_name = StringName(from: "set_debug_navigation_hint")
        self._method_set_debug_navigation_hint_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_set_debug_navigation_hint_2586408642_name._native_ptr(), 2586408642)
        assert(SceneTree._method_set_debug_navigation_hint_2586408642 != nil)
        let _method_is_debugging_navigation_hint_36873697_name = StringName(from: "is_debugging_navigation_hint")
        self._method_is_debugging_navigation_hint_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_is_debugging_navigation_hint_36873697_name._native_ptr(), 36873697)
        assert(SceneTree._method_is_debugging_navigation_hint_36873697 != nil)
        let _method_set_edited_scene_root_1078189570_name = StringName(from: "set_edited_scene_root")
        self._method_set_edited_scene_root_1078189570 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_set_edited_scene_root_1078189570_name._native_ptr(), 1078189570)
        assert(SceneTree._method_set_edited_scene_root_1078189570 != nil)
        let _method_get_edited_scene_root_3160264692_name = StringName(from: "get_edited_scene_root")
        self._method_get_edited_scene_root_3160264692 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_get_edited_scene_root_3160264692_name._native_ptr(), 3160264692)
        assert(SceneTree._method_get_edited_scene_root_3160264692 != nil)
        let _method_set_pause_2586408642_name = StringName(from: "set_pause")
        self._method_set_pause_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_set_pause_2586408642_name._native_ptr(), 2586408642)
        assert(SceneTree._method_set_pause_2586408642 != nil)
        let _method_is_paused_36873697_name = StringName(from: "is_paused")
        self._method_is_paused_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_is_paused_36873697_name._native_ptr(), 36873697)
        assert(SceneTree._method_is_paused_36873697 != nil)
        let _method_create_timer_1780978058_name = StringName(from: "create_timer")
        self._method_create_timer_1780978058 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_create_timer_1780978058_name._native_ptr(), 1780978058)
        assert(SceneTree._method_create_timer_1780978058 != nil)
        let _method_create_tween_3426978995_name = StringName(from: "create_tween")
        self._method_create_tween_3426978995 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_create_tween_3426978995_name._native_ptr(), 3426978995)
        assert(SceneTree._method_create_tween_3426978995 != nil)
        let _method_get_processed_tweens_2915620761_name = StringName(from: "get_processed_tweens")
        self._method_get_processed_tweens_2915620761 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_get_processed_tweens_2915620761_name._native_ptr(), 2915620761)
        assert(SceneTree._method_get_processed_tweens_2915620761 != nil)
        let _method_get_node_count_3905245786_name = StringName(from: "get_node_count")
        self._method_get_node_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_get_node_count_3905245786_name._native_ptr(), 3905245786)
        assert(SceneTree._method_get_node_count_3905245786 != nil)
        let _method_get_frame_3905245786_name = StringName(from: "get_frame")
        self._method_get_frame_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_get_frame_3905245786_name._native_ptr(), 3905245786)
        assert(SceneTree._method_get_frame_3905245786 != nil)
        let _method_quit_1995695955_name = StringName(from: "quit")
        self._method_quit_1995695955 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_quit_1995695955_name._native_ptr(), 1995695955)
        assert(SceneTree._method_quit_1995695955 != nil)
        let _method_queue_delete_3975164845_name = StringName(from: "queue_delete")
        self._method_queue_delete_3975164845 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_queue_delete_3975164845_name._native_ptr(), 3975164845)
        assert(SceneTree._method_queue_delete_3975164845 != nil)
        let _method_call_group_flags_1527739229_name = StringName(from: "call_group_flags")
        self._method_call_group_flags_1527739229 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_call_group_flags_1527739229_name._native_ptr(), 1527739229)
        assert(SceneTree._method_call_group_flags_1527739229 != nil)
        let _method_notify_group_flags_1245489420_name = StringName(from: "notify_group_flags")
        self._method_notify_group_flags_1245489420 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_notify_group_flags_1245489420_name._native_ptr(), 1245489420)
        assert(SceneTree._method_notify_group_flags_1245489420 != nil)
        let _method_set_group_flags_3497599527_name = StringName(from: "set_group_flags")
        self._method_set_group_flags_3497599527 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_set_group_flags_3497599527_name._native_ptr(), 3497599527)
        assert(SceneTree._method_set_group_flags_3497599527 != nil)
        let _method_call_group_1257962832_name = StringName(from: "call_group")
        self._method_call_group_1257962832 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_call_group_1257962832_name._native_ptr(), 1257962832)
        assert(SceneTree._method_call_group_1257962832 != nil)
        let _method_notify_group_2415702435_name = StringName(from: "notify_group")
        self._method_notify_group_2415702435 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_notify_group_2415702435_name._native_ptr(), 2415702435)
        assert(SceneTree._method_notify_group_2415702435 != nil)
        let _method_set_group_1279312029_name = StringName(from: "set_group")
        self._method_set_group_1279312029 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_set_group_1279312029_name._native_ptr(), 1279312029)
        assert(SceneTree._method_set_group_1279312029 != nil)
        let _method_get_nodes_in_group_689397652_name = StringName(from: "get_nodes_in_group")
        self._method_get_nodes_in_group_689397652 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_get_nodes_in_group_689397652_name._native_ptr(), 689397652)
        assert(SceneTree._method_get_nodes_in_group_689397652 != nil)
        let _method_get_first_node_in_group_4071044623_name = StringName(from: "get_first_node_in_group")
        self._method_get_first_node_in_group_4071044623 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_get_first_node_in_group_4071044623_name._native_ptr(), 4071044623)
        assert(SceneTree._method_get_first_node_in_group_4071044623 != nil)
        let _method_set_current_scene_1078189570_name = StringName(from: "set_current_scene")
        self._method_set_current_scene_1078189570 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_set_current_scene_1078189570_name._native_ptr(), 1078189570)
        assert(SceneTree._method_set_current_scene_1078189570 != nil)
        let _method_get_current_scene_3160264692_name = StringName(from: "get_current_scene")
        self._method_get_current_scene_3160264692 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_get_current_scene_3160264692_name._native_ptr(), 3160264692)
        assert(SceneTree._method_get_current_scene_3160264692 != nil)
        let _method_change_scene_to_file_166001499_name = StringName(from: "change_scene_to_file")
        self._method_change_scene_to_file_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_change_scene_to_file_166001499_name._native_ptr(), 166001499)
        assert(SceneTree._method_change_scene_to_file_166001499 != nil)
        let _method_change_scene_to_packed_107349098_name = StringName(from: "change_scene_to_packed")
        self._method_change_scene_to_packed_107349098 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_change_scene_to_packed_107349098_name._native_ptr(), 107349098)
        assert(SceneTree._method_change_scene_to_packed_107349098 != nil)
        let _method_reload_current_scene_166280745_name = StringName(from: "reload_current_scene")
        self._method_reload_current_scene_166280745 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_reload_current_scene_166280745_name._native_ptr(), 166280745)
        assert(SceneTree._method_reload_current_scene_166280745 != nil)
        let _method_unload_current_scene_3218959716_name = StringName(from: "unload_current_scene")
        self._method_unload_current_scene_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_unload_current_scene_3218959716_name._native_ptr(), 3218959716)
        assert(SceneTree._method_unload_current_scene_3218959716 != nil)
        let _method_set_multiplayer_2385607013_name = StringName(from: "set_multiplayer")
        self._method_set_multiplayer_2385607013 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_set_multiplayer_2385607013_name._native_ptr(), 2385607013)
        assert(SceneTree._method_set_multiplayer_2385607013 != nil)
        let _method_get_multiplayer_3453401404_name = StringName(from: "get_multiplayer")
        self._method_get_multiplayer_3453401404 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_get_multiplayer_3453401404_name._native_ptr(), 3453401404)
        assert(SceneTree._method_get_multiplayer_3453401404 != nil)
        let _method_set_multiplayer_poll_enabled_2586408642_name = StringName(from: "set_multiplayer_poll_enabled")
        self._method_set_multiplayer_poll_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_set_multiplayer_poll_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(SceneTree._method_set_multiplayer_poll_enabled_2586408642 != nil)
        let _method_is_multiplayer_poll_enabled_36873697_name = StringName(from: "is_multiplayer_poll_enabled")
        self._method_is_multiplayer_poll_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneTree._native_ptr(), _method_is_multiplayer_poll_enabled_36873697_name._native_ptr(), 36873697)
        assert(SceneTree._method_is_multiplayer_poll_enabled_36873697 != nil)
    }

    public func get_root() -> Window {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_root_1757182445,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Window(godot: __resPtr.pointee)
    }
    public func has_group(name: StringName) -> UInt8 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_group_2619796661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func is_auto_accept_quit() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_auto_accept_quit_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_auto_accept_quit(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_auto_accept_quit_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_quit_on_go_back() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_quit_on_go_back_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_quit_on_go_back(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_quit_on_go_back_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_debug_collisions_hint(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_debug_collisions_hint_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_debugging_collisions_hint() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_debugging_collisions_hint_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_debug_paths_hint(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_debug_paths_hint_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_debugging_paths_hint() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_debugging_paths_hint_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_debug_navigation_hint(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_debug_navigation_hint_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_debugging_navigation_hint() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_debugging_navigation_hint_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_edited_scene_root(scene: Node)  {
        let scene_native = scene._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scene_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_edited_scene_root_1078189570,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_edited_scene_root() -> Node {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_edited_scene_root_3160264692,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(godot: __resPtr.pointee)
    }
    public func set_pause(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pause_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_paused() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_paused_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func create_timer(time_sec: Float64, process_always: UInt8, process_in_physics: UInt8, ignore_time_scale: UInt8) -> SceneTreeTimer {
        withUnsafePointer(to: ignore_time_scale) { ignore_time_scale_native in
        withUnsafePointer(to: process_in_physics) { process_in_physics_native in
        withUnsafePointer(to: process_always) { process_always_native in
        withUnsafePointer(to: time_sec) { time_sec_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(time_sec_native), .init(process_always_native), .init(process_in_physics_native), .init(ignore_time_scale_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_timer_1780978058,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SceneTreeTimer(godot: __resPtr.pointee)
        }
        }
        }
        }
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
            return Tween(godot: __resPtr.pointee)
    }
    public func get_processed_tweens() -> [Tween] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_processed_tweens_2915620761,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Tween](godot: __resPtr.pointee)
    }
    public func get_node_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_frame() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_frame_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func quit(exit_code: Int64)  {
        withUnsafePointer(to: exit_code) { exit_code_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(exit_code_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_quit_1995695955,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func queue_delete(obj: Object)  {
        let obj_native = obj._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(obj_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_queue_delete_3975164845,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func call_group_flags(flags: Int64, group: StringName, method: StringName)  {
        withUnsafePointer(to: flags) { flags_native in
        let method_native = method._native_ptr()
        let group_native = group._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flags_native), .init(group_native), .init(method_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_call_group_flags_1527739229,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func notify_group_flags(call_flags: Int64, group: StringName, notification: Int64)  {
        withUnsafePointer(to: notification) { notification_native in
        withUnsafePointer(to: call_flags) { call_flags_native in
        let group_native = group._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(call_flags_native), .init(group_native), .init(notification_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_notify_group_flags_1245489420,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_group_flags(call_flags: Int64, group: StringName, property: godot.String, value: Variant)  {
        withUnsafePointer(to: call_flags) { call_flags_native in
        let value_native = value._native_ptr()
        let property_native = property._native_ptr()
        let group_native = group._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(call_flags_native), .init(group_native), .init(property_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_group_flags_3497599527,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func call_group(group: StringName, method: StringName)  {
        let method_native = method._native_ptr()
        let group_native = group._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(group_native), .init(method_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_call_group_1257962832,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func notify_group(group: StringName, notification: Int64)  {
        withUnsafePointer(to: notification) { notification_native in
        let group_native = group._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(group_native), .init(notification_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_notify_group_2415702435,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_group(group: StringName, property: godot.String, value: Variant)  {
        let value_native = value._native_ptr()
        let property_native = property._native_ptr()
        let group_native = group._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(group_native), .init(property_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_group_1279312029,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_nodes_in_group(group: StringName) -> [Node] {
        let group_native = group._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(group_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_nodes_in_group_689397652,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Node](godot: __resPtr.pointee)
    }
    public func get_first_node_in_group(group: StringName) -> Node {
        let group_native = group._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(group_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_first_node_in_group_4071044623,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(godot: __resPtr.pointee)
    }
    public func set_current_scene(child_node: Node)  {
        let child_node_native = child_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(child_node_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_current_scene_1078189570,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_current_scene() -> Node {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_scene_3160264692,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(godot: __resPtr.pointee)
    }
    public func change_scene_to_file(path: godot.String) -> Error {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_change_scene_to_file_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func change_scene_to_packed(packed_scene: PackedScene) -> Error {
        let packed_scene_native = packed_scene._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(packed_scene_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_change_scene_to_packed_107349098,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func reload_current_scene() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reload_current_scene_166280745,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func unload_current_scene()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_unload_current_scene_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_multiplayer(multiplayer: MultiplayerAPI, root_path: NodePath)  {
        let root_path_native = root_path._native_ptr()
        let multiplayer_native = multiplayer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multiplayer_native), .init(root_path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_multiplayer_2385607013,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_multiplayer(for_path: NodePath) -> MultiplayerAPI {
        let for_path_native = for_path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(for_path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_multiplayer_3453401404,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MultiplayerAPI(godot: __resPtr.pointee)
    }
    public func set_multiplayer_poll_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_multiplayer_poll_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_multiplayer_poll_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_multiplayer_poll_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}