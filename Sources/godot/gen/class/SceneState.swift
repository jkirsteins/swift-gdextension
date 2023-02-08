import godot_native

fileprivate var __godot_name_SceneState: StringName! = nil

/// A script interface to a scene file's data.
/// 
/// Maintains a list of resources, nodes, exported, and overridden properties, and built-in scripts associated with a scene.
///  
/// This class cannot be instantiated directly, it is retrieved for a given scene as the result of [method PackedScene.get_state].
open class SceneState : RefCounted {

    public enum GenEditState : Int32 {
        case GEN_EDIT_STATE_DISABLED = 0
        case GEN_EDIT_STATE_INSTANCE = 1
        case GEN_EDIT_STATE_MAIN = 2
        case GEN_EDIT_STATE_MAIN_INHERITED = 3
    }

    public override class var __godot_name: StringName { __godot_name_SceneState }

    static var _method_get_node_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_type_659327637: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_name_659327637: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_path_2272487792: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_owner_path_408788394: GDExtensionMethodBindPtr! = nil
    static var _method_is_node_instance_placeholder_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_instance_placeholder_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_instance_511017218: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_groups_647634434: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_index_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_property_count_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_property_name_351665558: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_property_value_678354945: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_source_408788394: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_signal_659327637: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_target_408788394: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_method_659327637: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_flags_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_binds_663333327: GDExtensionMethodBindPtr! = nil
    static var _method_get_connection_unbinds_923996154: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_SceneState = StringName(from: "SceneState")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_node_count_3905245786_name = StringName(from: "get_node_count")
        self._method_get_node_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneState._native_ptr(), _method_get_node_count_3905245786_name._native_ptr(), 3905245786)
        assert(SceneState._method_get_node_count_3905245786 != nil)
        let _method_get_node_type_659327637_name = StringName(from: "get_node_type")
        self._method_get_node_type_659327637 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneState._native_ptr(), _method_get_node_type_659327637_name._native_ptr(), 659327637)
        assert(SceneState._method_get_node_type_659327637 != nil)
        let _method_get_node_name_659327637_name = StringName(from: "get_node_name")
        self._method_get_node_name_659327637 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneState._native_ptr(), _method_get_node_name_659327637_name._native_ptr(), 659327637)
        assert(SceneState._method_get_node_name_659327637 != nil)
        let _method_get_node_path_2272487792_name = StringName(from: "get_node_path")
        self._method_get_node_path_2272487792 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneState._native_ptr(), _method_get_node_path_2272487792_name._native_ptr(), 2272487792)
        assert(SceneState._method_get_node_path_2272487792 != nil)
        let _method_get_node_owner_path_408788394_name = StringName(from: "get_node_owner_path")
        self._method_get_node_owner_path_408788394 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneState._native_ptr(), _method_get_node_owner_path_408788394_name._native_ptr(), 408788394)
        assert(SceneState._method_get_node_owner_path_408788394 != nil)
        let _method_is_node_instance_placeholder_1116898809_name = StringName(from: "is_node_instance_placeholder")
        self._method_is_node_instance_placeholder_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneState._native_ptr(), _method_is_node_instance_placeholder_1116898809_name._native_ptr(), 1116898809)
        assert(SceneState._method_is_node_instance_placeholder_1116898809 != nil)
        let _method_get_node_instance_placeholder_844755477_name = StringName(from: "get_node_instance_placeholder")
        self._method_get_node_instance_placeholder_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneState._native_ptr(), _method_get_node_instance_placeholder_844755477_name._native_ptr(), 844755477)
        assert(SceneState._method_get_node_instance_placeholder_844755477 != nil)
        let _method_get_node_instance_511017218_name = StringName(from: "get_node_instance")
        self._method_get_node_instance_511017218 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneState._native_ptr(), _method_get_node_instance_511017218_name._native_ptr(), 511017218)
        assert(SceneState._method_get_node_instance_511017218 != nil)
        let _method_get_node_groups_647634434_name = StringName(from: "get_node_groups")
        self._method_get_node_groups_647634434 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneState._native_ptr(), _method_get_node_groups_647634434_name._native_ptr(), 647634434)
        assert(SceneState._method_get_node_groups_647634434 != nil)
        let _method_get_node_index_923996154_name = StringName(from: "get_node_index")
        self._method_get_node_index_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneState._native_ptr(), _method_get_node_index_923996154_name._native_ptr(), 923996154)
        assert(SceneState._method_get_node_index_923996154 != nil)
        let _method_get_node_property_count_923996154_name = StringName(from: "get_node_property_count")
        self._method_get_node_property_count_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneState._native_ptr(), _method_get_node_property_count_923996154_name._native_ptr(), 923996154)
        assert(SceneState._method_get_node_property_count_923996154 != nil)
        let _method_get_node_property_name_351665558_name = StringName(from: "get_node_property_name")
        self._method_get_node_property_name_351665558 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneState._native_ptr(), _method_get_node_property_name_351665558_name._native_ptr(), 351665558)
        assert(SceneState._method_get_node_property_name_351665558 != nil)
        let _method_get_node_property_value_678354945_name = StringName(from: "get_node_property_value")
        self._method_get_node_property_value_678354945 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneState._native_ptr(), _method_get_node_property_value_678354945_name._native_ptr(), 678354945)
        assert(SceneState._method_get_node_property_value_678354945 != nil)
        let _method_get_connection_count_3905245786_name = StringName(from: "get_connection_count")
        self._method_get_connection_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneState._native_ptr(), _method_get_connection_count_3905245786_name._native_ptr(), 3905245786)
        assert(SceneState._method_get_connection_count_3905245786 != nil)
        let _method_get_connection_source_408788394_name = StringName(from: "get_connection_source")
        self._method_get_connection_source_408788394 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneState._native_ptr(), _method_get_connection_source_408788394_name._native_ptr(), 408788394)
        assert(SceneState._method_get_connection_source_408788394 != nil)
        let _method_get_connection_signal_659327637_name = StringName(from: "get_connection_signal")
        self._method_get_connection_signal_659327637 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneState._native_ptr(), _method_get_connection_signal_659327637_name._native_ptr(), 659327637)
        assert(SceneState._method_get_connection_signal_659327637 != nil)
        let _method_get_connection_target_408788394_name = StringName(from: "get_connection_target")
        self._method_get_connection_target_408788394 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneState._native_ptr(), _method_get_connection_target_408788394_name._native_ptr(), 408788394)
        assert(SceneState._method_get_connection_target_408788394 != nil)
        let _method_get_connection_method_659327637_name = StringName(from: "get_connection_method")
        self._method_get_connection_method_659327637 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneState._native_ptr(), _method_get_connection_method_659327637_name._native_ptr(), 659327637)
        assert(SceneState._method_get_connection_method_659327637 != nil)
        let _method_get_connection_flags_923996154_name = StringName(from: "get_connection_flags")
        self._method_get_connection_flags_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneState._native_ptr(), _method_get_connection_flags_923996154_name._native_ptr(), 923996154)
        assert(SceneState._method_get_connection_flags_923996154 != nil)
        let _method_get_connection_binds_663333327_name = StringName(from: "get_connection_binds")
        self._method_get_connection_binds_663333327 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneState._native_ptr(), _method_get_connection_binds_663333327_name._native_ptr(), 663333327)
        assert(SceneState._method_get_connection_binds_663333327 != nil)
        let _method_get_connection_unbinds_923996154_name = StringName(from: "get_connection_unbinds")
        self._method_get_connection_unbinds_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_SceneState._native_ptr(), _method_get_connection_unbinds_923996154_name._native_ptr(), 923996154)
        assert(SceneState._method_get_connection_unbinds_923996154 != nil)
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
    public func get_node_type(idx: Int64) -> StringName {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_type_659327637,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
        }
    }
    public func get_node_name(idx: Int64) -> StringName {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_name_659327637,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
        }
    }
    public func get_node_path(idx: Int64, for_parent: UInt8) -> NodePath {
        withUnsafePointer(to: for_parent) { for_parent_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(for_parent_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_path_2272487792,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
        }
        }
    }
    public func get_node_owner_path(idx: Int64) -> NodePath {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_owner_path_408788394,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
        }
    }
    public func is_node_instance_placeholder(idx: Int64) -> UInt8 {
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
                    Self._method_is_node_instance_placeholder_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func get_node_instance_placeholder(idx: Int64) -> godot.String {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_instance_placeholder_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func get_node_instance(idx: Int64) -> PackedScene {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_instance_511017218,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedScene(godot: __resPtr.pointee)
        }
    }
    public func get_node_groups(idx: Int64) -> PackedStringArray {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_groups_647634434,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
        }
    }
    public func get_node_index(idx: Int64) -> Int64 {
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
                    Self._method_get_node_index_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_node_property_count(idx: Int64) -> Int64 {
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
                    Self._method_get_node_property_count_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_node_property_name(idx: Int64, prop_idx: Int64) -> StringName {
        withUnsafePointer(to: prop_idx) { prop_idx_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(prop_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_property_name_351665558,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
        }
        }
    }
    public func get_node_property_value(idx: Int64, prop_idx: Int64) -> Variant {
        withUnsafePointer(to: prop_idx) { prop_idx_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(prop_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_property_value_678354945,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
        }
        }
    }
    public func get_connection_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_connection_source(idx: Int64) -> NodePath {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_source_408788394,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
        }
    }
    public func get_connection_signal(idx: Int64) -> StringName {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_signal_659327637,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
        }
    }
    public func get_connection_target(idx: Int64) -> NodePath {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_target_408788394,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
        }
    }
    public func get_connection_method(idx: Int64) -> StringName {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_method_659327637,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
        }
    }
    public func get_connection_flags(idx: Int64) -> Int64 {
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
                    Self._method_get_connection_flags_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_connection_binds(idx: Int64) -> Array {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_connection_binds_663333327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
        }
    }
    public func get_connection_unbinds(idx: Int64) -> Int64 {
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
                    Self._method_get_connection_unbinds_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
}