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
public class SkeletonModification2DFABRIK : SkeletonModification2D {

    

    public override class var __godot_name: StringName { __godot_name_SkeletonModification2DFABRIK }

    static var _method_set_target_node_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_target_node_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_fabrik_data_chain_length_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_fabrik_data_chain_length_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_set_fabrik_joint_bone2d_node_2761262315: GDExtensionMethodBindPtr! = nil
    static var _method_get_fabrik_joint_bone2d_node_408788394: GDExtensionMethodBindPtr! = nil
    static var _method_set_fabrik_joint_bone_index_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_get_fabrik_joint_bone_index_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_set_fabrik_joint_magnet_position_163021252: GDExtensionMethodBindPtr! = nil
    static var _method_get_fabrik_joint_magnet_position_2299179447: GDExtensionMethodBindPtr! = nil
    static var _method_set_fabrik_joint_use_target_rotation_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_fabrik_joint_use_target_rotation_1116898809: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_SkeletonModification2DFABRIK = StringName(from: "SkeletonModification2DFABRIK")

        let _method_set_target_node_1348162250_name = StringName(from: "set_target_node")
        self._method_set_target_node_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_target_node_1348162250_name._native_ptr(), 1348162250)
        assert(SkeletonModification2DFABRIK._method_set_target_node_1348162250 != nil)
        let _method_get_target_node_4075236667_name = StringName(from: "get_target_node")
        self._method_get_target_node_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_target_node_4075236667_name._native_ptr(), 4075236667)
        assert(SkeletonModification2DFABRIK._method_get_target_node_4075236667 != nil)
        let _method_set_fabrik_data_chain_length_1286410249_name = StringName(from: "set_fabrik_data_chain_length")
        self._method_set_fabrik_data_chain_length_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fabrik_data_chain_length_1286410249_name._native_ptr(), 1286410249)
        assert(SkeletonModification2DFABRIK._method_set_fabrik_data_chain_length_1286410249 != nil)
        let _method_get_fabrik_data_chain_length_2455072627_name = StringName(from: "get_fabrik_data_chain_length")
        self._method_get_fabrik_data_chain_length_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fabrik_data_chain_length_2455072627_name._native_ptr(), 2455072627)
        assert(SkeletonModification2DFABRIK._method_get_fabrik_data_chain_length_2455072627 != nil)
        let _method_set_fabrik_joint_bone2d_node_2761262315_name = StringName(from: "set_fabrik_joint_bone2d_node")
        self._method_set_fabrik_joint_bone2d_node_2761262315 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fabrik_joint_bone2d_node_2761262315_name._native_ptr(), 2761262315)
        assert(SkeletonModification2DFABRIK._method_set_fabrik_joint_bone2d_node_2761262315 != nil)
        let _method_get_fabrik_joint_bone2d_node_408788394_name = StringName(from: "get_fabrik_joint_bone2d_node")
        self._method_get_fabrik_joint_bone2d_node_408788394 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fabrik_joint_bone2d_node_408788394_name._native_ptr(), 408788394)
        assert(SkeletonModification2DFABRIK._method_get_fabrik_joint_bone2d_node_408788394 != nil)
        let _method_set_fabrik_joint_bone_index_3937882851_name = StringName(from: "set_fabrik_joint_bone_index")
        self._method_set_fabrik_joint_bone_index_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fabrik_joint_bone_index_3937882851_name._native_ptr(), 3937882851)
        assert(SkeletonModification2DFABRIK._method_set_fabrik_joint_bone_index_3937882851 != nil)
        let _method_get_fabrik_joint_bone_index_923996154_name = StringName(from: "get_fabrik_joint_bone_index")
        self._method_get_fabrik_joint_bone_index_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fabrik_joint_bone_index_923996154_name._native_ptr(), 923996154)
        assert(SkeletonModification2DFABRIK._method_get_fabrik_joint_bone_index_923996154 != nil)
        let _method_set_fabrik_joint_magnet_position_163021252_name = StringName(from: "set_fabrik_joint_magnet_position")
        self._method_set_fabrik_joint_magnet_position_163021252 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fabrik_joint_magnet_position_163021252_name._native_ptr(), 163021252)
        assert(SkeletonModification2DFABRIK._method_set_fabrik_joint_magnet_position_163021252 != nil)
        let _method_get_fabrik_joint_magnet_position_2299179447_name = StringName(from: "get_fabrik_joint_magnet_position")
        self._method_get_fabrik_joint_magnet_position_2299179447 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fabrik_joint_magnet_position_2299179447_name._native_ptr(), 2299179447)
        assert(SkeletonModification2DFABRIK._method_get_fabrik_joint_magnet_position_2299179447 != nil)
        let _method_set_fabrik_joint_use_target_rotation_300928843_name = StringName(from: "set_fabrik_joint_use_target_rotation")
        self._method_set_fabrik_joint_use_target_rotation_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fabrik_joint_use_target_rotation_300928843_name._native_ptr(), 300928843)
        assert(SkeletonModification2DFABRIK._method_set_fabrik_joint_use_target_rotation_300928843 != nil)
        let _method_get_fabrik_joint_use_target_rotation_1116898809_name = StringName(from: "get_fabrik_joint_use_target_rotation")
        self._method_get_fabrik_joint_use_target_rotation_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fabrik_joint_use_target_rotation_1116898809_name._native_ptr(), 1116898809)
        assert(SkeletonModification2DFABRIK._method_get_fabrik_joint_use_target_rotation_1116898809 != nil)
    }

    public func set_target_node(target_nodepath: NodePath)  {
        let target_nodepath_native = target_nodepath._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(target_nodepath_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_target_node_1348162250,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_target_node_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(from: __resPtr.pointee)
    }
    public func set_fabrik_data_chain_length(length: Int64)  {
        withUnsafePointer(to: length) { length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fabrik_data_chain_length_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fabrik_data_chain_length_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fabrik_joint_bone2d_node_2761262315,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fabrik_joint_bone2d_node_408788394,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fabrik_joint_bone_index_3937882851,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fabrik_joint_bone_index_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fabrik_joint_magnet_position_163021252,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fabrik_joint_magnet_position_2299179447,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fabrik_joint_use_target_rotation_300928843,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fabrik_joint_use_target_rotation_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
}