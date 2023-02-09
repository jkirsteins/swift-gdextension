import godot_native

fileprivate var __godot_name_PhysicalBone2D: StringName! = nil

/// A 2D node that can be used for physically aware bones in 2D.
/// 
/// The [code]PhysicalBone2D[/code] node is a [RigidBody2D]-based node that can be used to make [Bone2D] nodes in a [Skeleton2D] react to physics. This node is very similar to the [PhysicalBone3D] node, just for 2D instead of 3D.
///  
/// [b]Note:[/b] To have the Bone2D nodes visually follow the [code]PhysicalBone2D[/code] node, use a [SkeletonModification2DPhysicalBones] modification on the [Skeleton2D] node with the [Bone2D] nodes.
///  
/// [b]Note:[/b] The PhysicalBone2D node does not automatically create a [Joint2D] node to keep [code]PhysicalBone2D[/code] nodes together. You will need to create these manually. For most cases, you want to use a [PinJoint2D] node. The [code]PhysicalBone2D[/code] node can automatically configure the [Joint2D] node once it's been created as a child node.
open class PhysicalBone2D : RigidBody2D {

    

    public override class var __godot_name: StringName { __godot_name_PhysicalBone2D }

    static var _method_get_joint_3582132112: StringName! = nil
    static var _method_get_auto_configure_joint_36873697: StringName! = nil
    static var _method_set_auto_configure_joint_2586408642: StringName! = nil
    static var _method_set_simulate_physics_2586408642: StringName! = nil
    static var _method_get_simulate_physics_36873697: StringName! = nil
    static var _method_is_simulating_physics_36873697: StringName! = nil
    static var _method_set_bone2d_nodepath_1348162250: StringName! = nil
    static var _method_get_bone2d_nodepath_4075236667: StringName! = nil
    static var _method_set_bone2d_index_1286410249: StringName! = nil
    static var _method_get_bone2d_index_3905245786: StringName! = nil
    static var _method_set_follow_bone_when_simulating_2586408642: StringName! = nil
    static var _method_get_follow_bone_when_simulating_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_PhysicalBone2D == nil)
        __godot_name_PhysicalBone2D = StringName(from: "PhysicalBone2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_joint_3582132112 = StringName(from: "get_joint")
        assert(self._method_get_joint_3582132112 != nil)
        self._method_get_auto_configure_joint_36873697 = StringName(from: "get_auto_configure_joint")
        assert(self._method_get_auto_configure_joint_36873697 != nil)
        self._method_set_auto_configure_joint_2586408642 = StringName(from: "set_auto_configure_joint")
        assert(self._method_set_auto_configure_joint_2586408642 != nil)
        self._method_set_simulate_physics_2586408642 = StringName(from: "set_simulate_physics")
        assert(self._method_set_simulate_physics_2586408642 != nil)
        self._method_get_simulate_physics_36873697 = StringName(from: "get_simulate_physics")
        assert(self._method_get_simulate_physics_36873697 != nil)
        self._method_is_simulating_physics_36873697 = StringName(from: "is_simulating_physics")
        assert(self._method_is_simulating_physics_36873697 != nil)
        self._method_set_bone2d_nodepath_1348162250 = StringName(from: "set_bone2d_nodepath")
        assert(self._method_set_bone2d_nodepath_1348162250 != nil)
        self._method_get_bone2d_nodepath_4075236667 = StringName(from: "get_bone2d_nodepath")
        assert(self._method_get_bone2d_nodepath_4075236667 != nil)
        self._method_set_bone2d_index_1286410249 = StringName(from: "set_bone2d_index")
        assert(self._method_set_bone2d_index_1286410249 != nil)
        self._method_get_bone2d_index_3905245786 = StringName(from: "get_bone2d_index")
        assert(self._method_get_bone2d_index_3905245786 != nil)
        self._method_set_follow_bone_when_simulating_2586408642 = StringName(from: "set_follow_bone_when_simulating")
        assert(self._method_set_follow_bone_when_simulating_2586408642 != nil)
        self._method_get_follow_bone_when_simulating_36873697 = StringName(from: "get_follow_bone_when_simulating")
        assert(self._method_get_follow_bone_when_simulating_36873697 != nil)
    }

    public func get_joint() -> Joint2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_joint_3582132112._native_ptr(),
                    3582132112)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Joint2D(godot: __resPtr.pointee)
    }
    public func get_auto_configure_joint() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_auto_configure_joint_36873697._native_ptr(),
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
    public func set_auto_configure_joint(auto_configure_joint: UInt8)  {
        withUnsafePointer(to: auto_configure_joint) { auto_configure_joint_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(auto_configure_joint_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_auto_configure_joint_2586408642._native_ptr(),
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
    public func set_simulate_physics(simulate_physics: UInt8)  {
        withUnsafePointer(to: simulate_physics) { simulate_physics_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(simulate_physics_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_simulate_physics_2586408642._native_ptr(),
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
    public func get_simulate_physics() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_simulate_physics_36873697._native_ptr(),
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
    public func is_simulating_physics() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_simulating_physics_36873697._native_ptr(),
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
    public func set_bone2d_nodepath(nodepath: NodePath)  {
        let nodepath_native = nodepath._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(nodepath_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bone2d_nodepath_1348162250._native_ptr(),
                    1348162250)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_bone2d_nodepath() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bone2d_nodepath_4075236667._native_ptr(),
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
    public func set_bone2d_index(bone_index: Int64)  {
        withUnsafePointer(to: bone_index) { bone_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bone2d_index_1286410249._native_ptr(),
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
    public func get_bone2d_index() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bone2d_index_3905245786._native_ptr(),
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
    public func set_follow_bone_when_simulating(follow_bone: UInt8)  {
        withUnsafePointer(to: follow_bone) { follow_bone_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(follow_bone_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_follow_bone_when_simulating_2586408642._native_ptr(),
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
    public func get_follow_bone_when_simulating() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_follow_bone_when_simulating_36873697._native_ptr(),
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