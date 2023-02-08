import godot_native

fileprivate var __godot_name_AnimationTree: StringName! = nil

/// A node to be used for advanced animation transitions in an [AnimationPlayer].
/// 
/// A node to be used for advanced animation transitions in an [AnimationPlayer].
///  
/// [b]Note:[/b] When linked with an [AnimationPlayer], several properties and methods of the corresponding [AnimationPlayer] will not function as expected. Playback and transitions should be handled using only the [AnimationTree] and its constituent [AnimationNode](s). The [AnimationPlayer] node should be used solely for adding, deleting, and editing animations.
open class AnimationTree : Node {

    public enum AnimationProcessCallback : Int32 {
        case ANIMATION_PROCESS_PHYSICS = 0
        case ANIMATION_PROCESS_IDLE = 1
        case ANIMATION_PROCESS_MANUAL = 2
    }

    public override class var __godot_name: StringName { __godot_name_AnimationTree }

    static var _method__post_process_key_value_0: GDExtensionMethodBindPtr! = nil
    static var _method_set_active_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_active_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_tree_root_712869711: GDExtensionMethodBindPtr! = nil
    static var _method_get_tree_root_1462070895: GDExtensionMethodBindPtr! = nil
    static var _method_set_process_callback_1723352826: GDExtensionMethodBindPtr! = nil
    static var _method_get_process_callback_891317132: GDExtensionMethodBindPtr! = nil
    static var _method_set_animation_player_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_animation_player_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_advance_expression_base_node_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_advance_expression_base_node_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_root_motion_track_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_root_motion_track_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_audio_max_polyphony_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_audio_max_polyphony_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_root_motion_position_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_get_root_motion_rotation_1222331677: GDExtensionMethodBindPtr! = nil
    static var _method_get_root_motion_scale_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_rename_parameter_3186203200: GDExtensionMethodBindPtr! = nil
    static var _method_advance_373806689: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AnimationTree = StringName(from: "AnimationTree")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_active_2586408642_name = StringName(from: "set_active")
        self._method_set_active_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationTree._native_ptr(), _method_set_active_2586408642_name._native_ptr(), 2586408642)
        assert(AnimationTree._method_set_active_2586408642 != nil)
        let _method_is_active_36873697_name = StringName(from: "is_active")
        self._method_is_active_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationTree._native_ptr(), _method_is_active_36873697_name._native_ptr(), 36873697)
        assert(AnimationTree._method_is_active_36873697 != nil)
        let _method_set_tree_root_712869711_name = StringName(from: "set_tree_root")
        self._method_set_tree_root_712869711 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationTree._native_ptr(), _method_set_tree_root_712869711_name._native_ptr(), 712869711)
        assert(AnimationTree._method_set_tree_root_712869711 != nil)
        let _method_get_tree_root_1462070895_name = StringName(from: "get_tree_root")
        self._method_get_tree_root_1462070895 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationTree._native_ptr(), _method_get_tree_root_1462070895_name._native_ptr(), 1462070895)
        assert(AnimationTree._method_get_tree_root_1462070895 != nil)
        let _method_set_process_callback_1723352826_name = StringName(from: "set_process_callback")
        self._method_set_process_callback_1723352826 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationTree._native_ptr(), _method_set_process_callback_1723352826_name._native_ptr(), 1723352826)
        assert(AnimationTree._method_set_process_callback_1723352826 != nil)
        let _method_get_process_callback_891317132_name = StringName(from: "get_process_callback")
        self._method_get_process_callback_891317132 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationTree._native_ptr(), _method_get_process_callback_891317132_name._native_ptr(), 891317132)
        assert(AnimationTree._method_get_process_callback_891317132 != nil)
        let _method_set_animation_player_1348162250_name = StringName(from: "set_animation_player")
        self._method_set_animation_player_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationTree._native_ptr(), _method_set_animation_player_1348162250_name._native_ptr(), 1348162250)
        assert(AnimationTree._method_set_animation_player_1348162250 != nil)
        let _method_get_animation_player_4075236667_name = StringName(from: "get_animation_player")
        self._method_get_animation_player_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationTree._native_ptr(), _method_get_animation_player_4075236667_name._native_ptr(), 4075236667)
        assert(AnimationTree._method_get_animation_player_4075236667 != nil)
        let _method_set_advance_expression_base_node_1348162250_name = StringName(from: "set_advance_expression_base_node")
        self._method_set_advance_expression_base_node_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationTree._native_ptr(), _method_set_advance_expression_base_node_1348162250_name._native_ptr(), 1348162250)
        assert(AnimationTree._method_set_advance_expression_base_node_1348162250 != nil)
        let _method_get_advance_expression_base_node_4075236667_name = StringName(from: "get_advance_expression_base_node")
        self._method_get_advance_expression_base_node_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationTree._native_ptr(), _method_get_advance_expression_base_node_4075236667_name._native_ptr(), 4075236667)
        assert(AnimationTree._method_get_advance_expression_base_node_4075236667 != nil)
        let _method_set_root_motion_track_1348162250_name = StringName(from: "set_root_motion_track")
        self._method_set_root_motion_track_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationTree._native_ptr(), _method_set_root_motion_track_1348162250_name._native_ptr(), 1348162250)
        assert(AnimationTree._method_set_root_motion_track_1348162250 != nil)
        let _method_get_root_motion_track_4075236667_name = StringName(from: "get_root_motion_track")
        self._method_get_root_motion_track_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationTree._native_ptr(), _method_get_root_motion_track_4075236667_name._native_ptr(), 4075236667)
        assert(AnimationTree._method_get_root_motion_track_4075236667 != nil)
        let _method_set_audio_max_polyphony_1286410249_name = StringName(from: "set_audio_max_polyphony")
        self._method_set_audio_max_polyphony_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationTree._native_ptr(), _method_set_audio_max_polyphony_1286410249_name._native_ptr(), 1286410249)
        assert(AnimationTree._method_set_audio_max_polyphony_1286410249 != nil)
        let _method_get_audio_max_polyphony_3905245786_name = StringName(from: "get_audio_max_polyphony")
        self._method_get_audio_max_polyphony_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationTree._native_ptr(), _method_get_audio_max_polyphony_3905245786_name._native_ptr(), 3905245786)
        assert(AnimationTree._method_get_audio_max_polyphony_3905245786 != nil)
        let _method_get_root_motion_position_3360562783_name = StringName(from: "get_root_motion_position")
        self._method_get_root_motion_position_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationTree._native_ptr(), _method_get_root_motion_position_3360562783_name._native_ptr(), 3360562783)
        assert(AnimationTree._method_get_root_motion_position_3360562783 != nil)
        let _method_get_root_motion_rotation_1222331677_name = StringName(from: "get_root_motion_rotation")
        self._method_get_root_motion_rotation_1222331677 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationTree._native_ptr(), _method_get_root_motion_rotation_1222331677_name._native_ptr(), 1222331677)
        assert(AnimationTree._method_get_root_motion_rotation_1222331677 != nil)
        let _method_get_root_motion_scale_3360562783_name = StringName(from: "get_root_motion_scale")
        self._method_get_root_motion_scale_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationTree._native_ptr(), _method_get_root_motion_scale_3360562783_name._native_ptr(), 3360562783)
        assert(AnimationTree._method_get_root_motion_scale_3360562783 != nil)
        let _method_rename_parameter_3186203200_name = StringName(from: "rename_parameter")
        self._method_rename_parameter_3186203200 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationTree._native_ptr(), _method_rename_parameter_3186203200_name._native_ptr(), 3186203200)
        assert(AnimationTree._method_rename_parameter_3186203200 != nil)
        let _method_advance_373806689_name = StringName(from: "advance")
        self._method_advance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationTree._native_ptr(), _method_advance_373806689_name._native_ptr(), 373806689)
        assert(AnimationTree._method_advance_373806689 != nil)
    }

    public func _post_process_key_value(animation: Animation, track: Int64, value: Variant, object: Object, object_idx: Int64) -> Variant {
        withUnsafePointer(to: object_idx) { object_idx_native in
        withUnsafePointer(to: track) { track_native in
        let object_native = object._native_ptr()
        let value_native = value._native_ptr()
        let animation_native = animation._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(animation_native), .init(track_native), .init(value_native), .init(object_native), .init(object_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__post_process_key_value_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
        }
        }
    }
    public func set_active(active: UInt8)  {
        withUnsafePointer(to: active) { active_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(active_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_active_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_active() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_active_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_tree_root(root: AnimationNode)  {
        let root_native = root._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(root_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tree_root_712869711,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_tree_root() -> AnimationNode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tree_root_1462070895,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AnimationNode(godot: __resPtr.pointee)
    }
    public func set_process_callback(mode: AnimationTree.AnimationProcessCallback)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_process_callback_1723352826,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_process_callback() -> AnimationTree.AnimationProcessCallback {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_process_callback_891317132,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AnimationTree.AnimationProcessCallback(godot: __resPtr.pointee)
    }
    public func set_animation_player(root: NodePath)  {
        let root_native = root._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(root_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_animation_player_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_animation_player() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_animation_player_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
    }
    public func set_advance_expression_base_node(node: NodePath)  {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_advance_expression_base_node_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_advance_expression_base_node() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_advance_expression_base_node_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
    }
    public func set_root_motion_track(path: NodePath)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_root_motion_track_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_root_motion_track() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_root_motion_track_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
    }
    public func set_audio_max_polyphony(max_polyphony: Int64)  {
        withUnsafePointer(to: max_polyphony) { max_polyphony_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_polyphony_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_audio_max_polyphony_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_audio_max_polyphony() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_audio_max_polyphony_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_root_motion_position() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_root_motion_position_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func get_root_motion_rotation() -> Quaternion {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_root_motion_rotation_1222331677,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Quaternion(godot: __resPtr.pointee)
    }
    public func get_root_motion_scale() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_root_motion_scale_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func rename_parameter(old_name: godot.String, new_name: godot.String)  {
        let new_name_native = new_name._native_ptr()
        let old_name_native = old_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(old_name_native), .init(new_name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rename_parameter_3186203200,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func advance(delta: Float64)  {
        withUnsafePointer(to: delta) { delta_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(delta_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_advance_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}