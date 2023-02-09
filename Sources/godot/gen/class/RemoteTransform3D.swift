import godot_native

fileprivate var __godot_name_RemoteTransform3D: StringName! = nil

/// RemoteTransform3D pushes its own [Transform3D] to another [Node3D] derived Node in the scene.
/// 
/// RemoteTransform3D pushes its own [Transform3D] to another [Node3D] derived Node (called the remote node) in the scene.
///  
/// It can be set to update another Node's position, rotation and/or scale. It can use either global or local coordinates.
open class RemoteTransform3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_RemoteTransform3D }

    static var _method_set_remote_node_1348162250: StringName! = nil
    static var _method_get_remote_node_4075236667: StringName! = nil
    static var _method_force_update_cache_3218959716: StringName! = nil
    static var _method_set_use_global_coordinates_2586408642: StringName! = nil
    static var _method_get_use_global_coordinates_36873697: StringName! = nil
    static var _method_set_update_position_2586408642: StringName! = nil
    static var _method_get_update_position_36873697: StringName! = nil
    static var _method_set_update_rotation_2586408642: StringName! = nil
    static var _method_get_update_rotation_36873697: StringName! = nil
    static var _method_set_update_scale_2586408642: StringName! = nil
    static var _method_get_update_scale_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_RemoteTransform3D == nil)
        __godot_name_RemoteTransform3D = StringName(from: "RemoteTransform3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_remote_node_1348162250 = StringName(from: "set_remote_node")
        assert(self._method_set_remote_node_1348162250 != nil)
        self._method_get_remote_node_4075236667 = StringName(from: "get_remote_node")
        assert(self._method_get_remote_node_4075236667 != nil)
        self._method_force_update_cache_3218959716 = StringName(from: "force_update_cache")
        assert(self._method_force_update_cache_3218959716 != nil)
        self._method_set_use_global_coordinates_2586408642 = StringName(from: "set_use_global_coordinates")
        assert(self._method_set_use_global_coordinates_2586408642 != nil)
        self._method_get_use_global_coordinates_36873697 = StringName(from: "get_use_global_coordinates")
        assert(self._method_get_use_global_coordinates_36873697 != nil)
        self._method_set_update_position_2586408642 = StringName(from: "set_update_position")
        assert(self._method_set_update_position_2586408642 != nil)
        self._method_get_update_position_36873697 = StringName(from: "get_update_position")
        assert(self._method_get_update_position_36873697 != nil)
        self._method_set_update_rotation_2586408642 = StringName(from: "set_update_rotation")
        assert(self._method_set_update_rotation_2586408642 != nil)
        self._method_get_update_rotation_36873697 = StringName(from: "get_update_rotation")
        assert(self._method_get_update_rotation_36873697 != nil)
        self._method_set_update_scale_2586408642 = StringName(from: "set_update_scale")
        assert(self._method_set_update_scale_2586408642 != nil)
        self._method_get_update_scale_36873697 = StringName(from: "get_update_scale")
        assert(self._method_get_update_scale_36873697 != nil)
    }

    public func set_remote_node(path: NodePath)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_remote_node_1348162250._native_ptr(),
                    1348162250)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_remote_node_4075236667._native_ptr(),
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
    public func force_update_cache()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_force_update_cache_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_use_global_coordinates_2586408642._native_ptr(),
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
    public func get_use_global_coordinates() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_use_global_coordinates_36873697._native_ptr(),
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
    public func set_update_position(update_remote_position: UInt8)  {
        withUnsafePointer(to: update_remote_position) { update_remote_position_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(update_remote_position_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_update_position_2586408642._native_ptr(),
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
    public func get_update_position() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_update_position_36873697._native_ptr(),
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
    public func set_update_rotation(update_remote_rotation: UInt8)  {
        withUnsafePointer(to: update_remote_rotation) { update_remote_rotation_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(update_remote_rotation_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_update_rotation_2586408642._native_ptr(),
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
    public func get_update_rotation() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_update_rotation_36873697._native_ptr(),
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
    public func set_update_scale(update_remote_scale: UInt8)  {
        withUnsafePointer(to: update_remote_scale) { update_remote_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(update_remote_scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_update_scale_2586408642._native_ptr(),
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
    public func get_update_scale() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_update_scale_36873697._native_ptr(),
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