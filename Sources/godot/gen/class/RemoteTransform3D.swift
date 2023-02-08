import godot_native

fileprivate var __godot_name_RemoteTransform3D: StringName! = nil

/// RemoteTransform3D pushes its own [Transform3D] to another [Node3D] derived Node in the scene.
/// 
/// RemoteTransform3D pushes its own [Transform3D] to another [Node3D] derived Node (called the remote node) in the scene.
///  
/// It can be set to update another Node's position, rotation and/or scale. It can use either global or local coordinates.
open class RemoteTransform3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_RemoteTransform3D }

    static var _method_set_remote_node_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_remote_node_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_force_update_cache_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_global_coordinates_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_use_global_coordinates_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_update_position_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_update_position_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_update_rotation_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_update_rotation_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_update_scale_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_update_scale_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_RemoteTransform3D = StringName(from: "RemoteTransform3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_remote_node_1348162250_name = StringName(from: "set_remote_node")
        self._method_set_remote_node_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name_RemoteTransform3D._native_ptr(), _method_set_remote_node_1348162250_name._native_ptr(), 1348162250)
        assert(RemoteTransform3D._method_set_remote_node_1348162250 != nil)
        let _method_get_remote_node_4075236667_name = StringName(from: "get_remote_node")
        self._method_get_remote_node_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name_RemoteTransform3D._native_ptr(), _method_get_remote_node_4075236667_name._native_ptr(), 4075236667)
        assert(RemoteTransform3D._method_get_remote_node_4075236667 != nil)
        let _method_force_update_cache_3218959716_name = StringName(from: "force_update_cache")
        self._method_force_update_cache_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_RemoteTransform3D._native_ptr(), _method_force_update_cache_3218959716_name._native_ptr(), 3218959716)
        assert(RemoteTransform3D._method_force_update_cache_3218959716 != nil)
        let _method_set_use_global_coordinates_2586408642_name = StringName(from: "set_use_global_coordinates")
        self._method_set_use_global_coordinates_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_RemoteTransform3D._native_ptr(), _method_set_use_global_coordinates_2586408642_name._native_ptr(), 2586408642)
        assert(RemoteTransform3D._method_set_use_global_coordinates_2586408642 != nil)
        let _method_get_use_global_coordinates_36873697_name = StringName(from: "get_use_global_coordinates")
        self._method_get_use_global_coordinates_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_RemoteTransform3D._native_ptr(), _method_get_use_global_coordinates_36873697_name._native_ptr(), 36873697)
        assert(RemoteTransform3D._method_get_use_global_coordinates_36873697 != nil)
        let _method_set_update_position_2586408642_name = StringName(from: "set_update_position")
        self._method_set_update_position_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_RemoteTransform3D._native_ptr(), _method_set_update_position_2586408642_name._native_ptr(), 2586408642)
        assert(RemoteTransform3D._method_set_update_position_2586408642 != nil)
        let _method_get_update_position_36873697_name = StringName(from: "get_update_position")
        self._method_get_update_position_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_RemoteTransform3D._native_ptr(), _method_get_update_position_36873697_name._native_ptr(), 36873697)
        assert(RemoteTransform3D._method_get_update_position_36873697 != nil)
        let _method_set_update_rotation_2586408642_name = StringName(from: "set_update_rotation")
        self._method_set_update_rotation_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_RemoteTransform3D._native_ptr(), _method_set_update_rotation_2586408642_name._native_ptr(), 2586408642)
        assert(RemoteTransform3D._method_set_update_rotation_2586408642 != nil)
        let _method_get_update_rotation_36873697_name = StringName(from: "get_update_rotation")
        self._method_get_update_rotation_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_RemoteTransform3D._native_ptr(), _method_get_update_rotation_36873697_name._native_ptr(), 36873697)
        assert(RemoteTransform3D._method_get_update_rotation_36873697 != nil)
        let _method_set_update_scale_2586408642_name = StringName(from: "set_update_scale")
        self._method_set_update_scale_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_RemoteTransform3D._native_ptr(), _method_set_update_scale_2586408642_name._native_ptr(), 2586408642)
        assert(RemoteTransform3D._method_set_update_scale_2586408642 != nil)
        let _method_get_update_scale_36873697_name = StringName(from: "get_update_scale")
        self._method_get_update_scale_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_RemoteTransform3D._native_ptr(), _method_get_update_scale_36873697_name._native_ptr(), 36873697)
        assert(RemoteTransform3D._method_get_update_scale_36873697 != nil)
    }

    public func set_remote_node(path: NodePath)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_remote_node_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_remote_node() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_remote_node_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
    }
    public func force_update_cache()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_force_update_cache_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_use_global_coordinates(use_global_coordinates: UInt8)  {
        withUnsafePointer(to: use_global_coordinates) { use_global_coordinates_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(use_global_coordinates_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_global_coordinates_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_use_global_coordinates() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_use_global_coordinates_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_update_position(update_remote_position: UInt8)  {
        withUnsafePointer(to: update_remote_position) { update_remote_position_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(update_remote_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_update_position_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_update_position() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_update_position_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_update_rotation(update_remote_rotation: UInt8)  {
        withUnsafePointer(to: update_remote_rotation) { update_remote_rotation_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(update_remote_rotation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_update_rotation_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_update_rotation() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_update_rotation_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_update_scale(update_remote_scale: UInt8)  {
        withUnsafePointer(to: update_remote_scale) { update_remote_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(update_remote_scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_update_scale_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_update_scale() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_update_scale_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}