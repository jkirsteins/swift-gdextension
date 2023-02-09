import godot_native

fileprivate var __godot_name_SkeletonModification2DFABRIK: StringName! = nil

/// A modification that uses FABRIK to manipulate a series of [Bone2D] nodes to reach a target.
/// 
/// This [SkeletonModification2D] uses an algorithm called Forward And Backward Reaching Inverse Kinematics, or FABRIK, to rotate a bone chain so that it reaches a target.
///  
/// FABRIK works by knowing the positions and lengths of a series of bones, typically called a "bone chain". It first starts by running a forward pass, which places the final bone at the target's position. Then all other bones are moved towards the tip bone, so they stay at the defined bone length away. Then a backwards pass is performed, where the root/first bone in the FABRIK chain is placed back at the origin. then all other bones are moved so they stay at the defined bone length away. This positions the bone chain so that it reaches the target when possible, but all of the bones stay the correct length away from each other.
///  
/// Because of how FABRIK works, it often gives more natural results than those seen in [SkeletonModification2DCCDIK]. FABRIK also supports angle constraints, which are fully taken into account when solving.
///  
/// [b]Note:[/b] The FABRIK modifier has [code]fabrik_joints[/code], which are the data objects that hold the data for each joint in the FABRIK chain. This is different from [Bone2D] nodes! FABRIK joints hold the data needed for each [Bone2D] in the bone chain used by FABRIK.
///  
/// To help control how the FABRIK joints move, a magnet vector can be passed, which can nudge the bones in a certain direction prior to solving, giving a level of control over the final result.
open class SkeletonModification2DFABRIK : SkeletonModification2D {

    

    public override class var __godot_name: StringName { __godot_name_SkeletonModification2DFABRIK }

    static var _method_set_target_node_1348162250: StringName! = nil
    static var _method_get_target_node_4075236667: StringName! = nil
    static var _method_set_fabrik_data_chain_length_1286410249: StringName! = nil
    static var _method_get_fabrik_data_chain_length_2455072627: StringName! = nil
    static var _method_set_fabrik_joint_bone2d_node_2761262315: StringName! = nil
    static var _method_get_fabrik_joint_bone2d_node_408788394: StringName! = nil
    static var _method_set_fabrik_joint_bone_index_3937882851: StringName! = nil
    static var _method_get_fabrik_joint_bone_index_923996154: StringName! = nil
    static var _method_set_fabrik_joint_magnet_position_163021252: StringName! = nil
    static var _method_get_fabrik_joint_magnet_position_2299179447: StringName! = nil
    static var _method_set_fabrik_joint_use_target_rotation_300928843: StringName! = nil
    static var _method_get_fabrik_joint_use_target_rotation_1116898809: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_SkeletonModification2DFABRIK == nil)
        __godot_name_SkeletonModification2DFABRIK = StringName(from: "SkeletonModification2DFABRIK")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_target_node_1348162250 = StringName(from: "set_target_node")
        assert(self._method_set_target_node_1348162250 != nil)
        self._method_get_target_node_4075236667 = StringName(from: "get_target_node")
        assert(self._method_get_target_node_4075236667 != nil)
        self._method_set_fabrik_data_chain_length_1286410249 = StringName(from: "set_fabrik_data_chain_length")
        assert(self._method_set_fabrik_data_chain_length_1286410249 != nil)
        self._method_get_fabrik_data_chain_length_2455072627 = StringName(from: "get_fabrik_data_chain_length")
        assert(self._method_get_fabrik_data_chain_length_2455072627 != nil)
        self._method_set_fabrik_joint_bone2d_node_2761262315 = StringName(from: "set_fabrik_joint_bone2d_node")
        assert(self._method_set_fabrik_joint_bone2d_node_2761262315 != nil)
        self._method_get_fabrik_joint_bone2d_node_408788394 = StringName(from: "get_fabrik_joint_bone2d_node")
        assert(self._method_get_fabrik_joint_bone2d_node_408788394 != nil)
        self._method_set_fabrik_joint_bone_index_3937882851 = StringName(from: "set_fabrik_joint_bone_index")
        assert(self._method_set_fabrik_joint_bone_index_3937882851 != nil)
        self._method_get_fabrik_joint_bone_index_923996154 = StringName(from: "get_fabrik_joint_bone_index")
        assert(self._method_get_fabrik_joint_bone_index_923996154 != nil)
        self._method_set_fabrik_joint_magnet_position_163021252 = StringName(from: "set_fabrik_joint_magnet_position")
        assert(self._method_set_fabrik_joint_magnet_position_163021252 != nil)
        self._method_get_fabrik_joint_magnet_position_2299179447 = StringName(from: "get_fabrik_joint_magnet_position")
        assert(self._method_get_fabrik_joint_magnet_position_2299179447 != nil)
        self._method_set_fabrik_joint_use_target_rotation_300928843 = StringName(from: "set_fabrik_joint_use_target_rotation")
        assert(self._method_set_fabrik_joint_use_target_rotation_300928843 != nil)
        self._method_get_fabrik_joint_use_target_rotation_1116898809 = StringName(from: "get_fabrik_joint_use_target_rotation")
        assert(self._method_get_fabrik_joint_use_target_rotation_1116898809 != nil)
    }

    public func set_target_node(target_nodepath: NodePath)  {
        let target_nodepath_native = target_nodepath._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(target_nodepath_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_target_node_1348162250._native_ptr(),
                    1348162250)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_target_node() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_target_node_4075236667._native_ptr(),
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
    public func set_fabrik_data_chain_length(length: Int64)  {
        withUnsafePointer(to: length) { length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(length_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fabrik_data_chain_length_1286410249._native_ptr(),
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
    public func get_fabrik_data_chain_length() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fabrik_data_chain_length_2455072627._native_ptr(),
                    2455072627)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_fabrik_joint_bone2d_node(joint_idx: Int64, bone2d_nodepath: NodePath)  {
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let bone2d_nodepath_native = bone2d_nodepath._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native), .init(bone2d_nodepath_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fabrik_joint_bone2d_node_2761262315._native_ptr(),
                    2761262315)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_fabrik_joint_bone2d_node(joint_idx: Int64) -> NodePath {
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fabrik_joint_bone2d_node_408788394._native_ptr(),
                    408788394)
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
    public func set_fabrik_joint_bone_index(joint_idx: Int64, bone_idx: Int64)  {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native), .init(bone_idx_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fabrik_joint_bone_index_3937882851._native_ptr(),
                    3937882851)
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
    public func get_fabrik_joint_bone_index(joint_idx: Int64) -> Int64 {
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fabrik_joint_bone_index_923996154._native_ptr(),
                    923996154)
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
    public func set_fabrik_joint_magnet_position(joint_idx: Int64, magnet_position: Vector2)  {
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let magnet_position_native = magnet_position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native), .init(magnet_position_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fabrik_joint_magnet_position_163021252._native_ptr(),
                    163021252)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_fabrik_joint_magnet_position(joint_idx: Int64) -> Vector2 {
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fabrik_joint_magnet_position_2299179447._native_ptr(),
                    2299179447)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
    }
    public func set_fabrik_joint_use_target_rotation(joint_idx: Int64, use_target_rotation: UInt8)  {
        withUnsafePointer(to: use_target_rotation) { use_target_rotation_native in
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native), .init(use_target_rotation_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fabrik_joint_use_target_rotation_300928843._native_ptr(),
                    300928843)
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
    public func get_fabrik_joint_use_target_rotation(joint_idx: Int64) -> UInt8 {
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fabrik_joint_use_target_rotation_1116898809._native_ptr(),
                    1116898809)
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
}