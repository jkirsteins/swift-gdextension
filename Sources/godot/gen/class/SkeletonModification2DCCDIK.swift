import godot_native

fileprivate var __godot_name_SkeletonModification2DCCDIK: StringName! = nil

/// A modification that uses CCDIK to manipulate a series of bones to reach a target in 2D.
/// 
/// This [SkeletonModification2D] uses an algorithm called Cyclic Coordinate Descent Inverse Kinematics, or CCDIK, to manipulate a chain of bones in a [Skeleton2D] so it reaches a defined target.
///  
/// CCDIK works by rotating a set of bones, typically called a "bone chain", on a single axis. Each bone is rotated to face the target from the tip (by default), which over a chain of bones allow it to rotate properly to reach the target. Because the bones only rotate on a single axis, CCDIK [i]can[/i] look more robotic than other IK solvers.
///  
/// [b]Note:[/b] The CCDIK modifier has [code]ccdik_joints[/code], which are the data objects that hold the data for each joint in the CCDIK chain. This is different from a bone! CCDIK joints hold the data needed for each bone in the bone chain used by CCDIK.
///  
/// CCDIK also fully supports angle constraints, allowing for more control over how a solution is met.
open class SkeletonModification2DCCDIK : SkeletonModification2D {

    

    public override class var __godot_name: StringName { __godot_name_SkeletonModification2DCCDIK }

    static var _method_set_target_node_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_target_node_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_tip_node_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_tip_node_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_ccdik_data_chain_length_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_ccdik_data_chain_length_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_set_ccdik_joint_bone2d_node_2761262315: GDExtensionMethodBindPtr! = nil
    static var _method_get_ccdik_joint_bone2d_node_408788394: GDExtensionMethodBindPtr! = nil
    static var _method_set_ccdik_joint_bone_index_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_get_ccdik_joint_bone_index_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_set_ccdik_joint_rotate_from_joint_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_ccdik_joint_rotate_from_joint_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_ccdik_joint_enable_constraint_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_ccdik_joint_enable_constraint_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_ccdik_joint_constraint_angle_min_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_get_ccdik_joint_constraint_angle_min_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_set_ccdik_joint_constraint_angle_max_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_get_ccdik_joint_constraint_angle_max_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_set_ccdik_joint_constraint_angle_invert_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_ccdik_joint_constraint_angle_invert_1116898809: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_SkeletonModification2DCCDIK = StringName(from: "SkeletonModification2DCCDIK")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_target_node_1348162250_name = StringName(from: "set_target_node")
        self._method_set_target_node_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DCCDIK._native_ptr(), _method_set_target_node_1348162250_name._native_ptr(), 1348162250)
        assert(SkeletonModification2DCCDIK._method_set_target_node_1348162250 != nil)
        let _method_get_target_node_4075236667_name = StringName(from: "get_target_node")
        self._method_get_target_node_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DCCDIK._native_ptr(), _method_get_target_node_4075236667_name._native_ptr(), 4075236667)
        assert(SkeletonModification2DCCDIK._method_get_target_node_4075236667 != nil)
        let _method_set_tip_node_1348162250_name = StringName(from: "set_tip_node")
        self._method_set_tip_node_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DCCDIK._native_ptr(), _method_set_tip_node_1348162250_name._native_ptr(), 1348162250)
        assert(SkeletonModification2DCCDIK._method_set_tip_node_1348162250 != nil)
        let _method_get_tip_node_4075236667_name = StringName(from: "get_tip_node")
        self._method_get_tip_node_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DCCDIK._native_ptr(), _method_get_tip_node_4075236667_name._native_ptr(), 4075236667)
        assert(SkeletonModification2DCCDIK._method_get_tip_node_4075236667 != nil)
        let _method_set_ccdik_data_chain_length_1286410249_name = StringName(from: "set_ccdik_data_chain_length")
        self._method_set_ccdik_data_chain_length_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DCCDIK._native_ptr(), _method_set_ccdik_data_chain_length_1286410249_name._native_ptr(), 1286410249)
        assert(SkeletonModification2DCCDIK._method_set_ccdik_data_chain_length_1286410249 != nil)
        let _method_get_ccdik_data_chain_length_2455072627_name = StringName(from: "get_ccdik_data_chain_length")
        self._method_get_ccdik_data_chain_length_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DCCDIK._native_ptr(), _method_get_ccdik_data_chain_length_2455072627_name._native_ptr(), 2455072627)
        assert(SkeletonModification2DCCDIK._method_get_ccdik_data_chain_length_2455072627 != nil)
        let _method_set_ccdik_joint_bone2d_node_2761262315_name = StringName(from: "set_ccdik_joint_bone2d_node")
        self._method_set_ccdik_joint_bone2d_node_2761262315 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DCCDIK._native_ptr(), _method_set_ccdik_joint_bone2d_node_2761262315_name._native_ptr(), 2761262315)
        assert(SkeletonModification2DCCDIK._method_set_ccdik_joint_bone2d_node_2761262315 != nil)
        let _method_get_ccdik_joint_bone2d_node_408788394_name = StringName(from: "get_ccdik_joint_bone2d_node")
        self._method_get_ccdik_joint_bone2d_node_408788394 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DCCDIK._native_ptr(), _method_get_ccdik_joint_bone2d_node_408788394_name._native_ptr(), 408788394)
        assert(SkeletonModification2DCCDIK._method_get_ccdik_joint_bone2d_node_408788394 != nil)
        let _method_set_ccdik_joint_bone_index_3937882851_name = StringName(from: "set_ccdik_joint_bone_index")
        self._method_set_ccdik_joint_bone_index_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DCCDIK._native_ptr(), _method_set_ccdik_joint_bone_index_3937882851_name._native_ptr(), 3937882851)
        assert(SkeletonModification2DCCDIK._method_set_ccdik_joint_bone_index_3937882851 != nil)
        let _method_get_ccdik_joint_bone_index_923996154_name = StringName(from: "get_ccdik_joint_bone_index")
        self._method_get_ccdik_joint_bone_index_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DCCDIK._native_ptr(), _method_get_ccdik_joint_bone_index_923996154_name._native_ptr(), 923996154)
        assert(SkeletonModification2DCCDIK._method_get_ccdik_joint_bone_index_923996154 != nil)
        let _method_set_ccdik_joint_rotate_from_joint_300928843_name = StringName(from: "set_ccdik_joint_rotate_from_joint")
        self._method_set_ccdik_joint_rotate_from_joint_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DCCDIK._native_ptr(), _method_set_ccdik_joint_rotate_from_joint_300928843_name._native_ptr(), 300928843)
        assert(SkeletonModification2DCCDIK._method_set_ccdik_joint_rotate_from_joint_300928843 != nil)
        let _method_get_ccdik_joint_rotate_from_joint_1116898809_name = StringName(from: "get_ccdik_joint_rotate_from_joint")
        self._method_get_ccdik_joint_rotate_from_joint_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DCCDIK._native_ptr(), _method_get_ccdik_joint_rotate_from_joint_1116898809_name._native_ptr(), 1116898809)
        assert(SkeletonModification2DCCDIK._method_get_ccdik_joint_rotate_from_joint_1116898809 != nil)
        let _method_set_ccdik_joint_enable_constraint_300928843_name = StringName(from: "set_ccdik_joint_enable_constraint")
        self._method_set_ccdik_joint_enable_constraint_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DCCDIK._native_ptr(), _method_set_ccdik_joint_enable_constraint_300928843_name._native_ptr(), 300928843)
        assert(SkeletonModification2DCCDIK._method_set_ccdik_joint_enable_constraint_300928843 != nil)
        let _method_get_ccdik_joint_enable_constraint_1116898809_name = StringName(from: "get_ccdik_joint_enable_constraint")
        self._method_get_ccdik_joint_enable_constraint_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DCCDIK._native_ptr(), _method_get_ccdik_joint_enable_constraint_1116898809_name._native_ptr(), 1116898809)
        assert(SkeletonModification2DCCDIK._method_get_ccdik_joint_enable_constraint_1116898809 != nil)
        let _method_set_ccdik_joint_constraint_angle_min_1602489585_name = StringName(from: "set_ccdik_joint_constraint_angle_min")
        self._method_set_ccdik_joint_constraint_angle_min_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DCCDIK._native_ptr(), _method_set_ccdik_joint_constraint_angle_min_1602489585_name._native_ptr(), 1602489585)
        assert(SkeletonModification2DCCDIK._method_set_ccdik_joint_constraint_angle_min_1602489585 != nil)
        let _method_get_ccdik_joint_constraint_angle_min_2339986948_name = StringName(from: "get_ccdik_joint_constraint_angle_min")
        self._method_get_ccdik_joint_constraint_angle_min_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DCCDIK._native_ptr(), _method_get_ccdik_joint_constraint_angle_min_2339986948_name._native_ptr(), 2339986948)
        assert(SkeletonModification2DCCDIK._method_get_ccdik_joint_constraint_angle_min_2339986948 != nil)
        let _method_set_ccdik_joint_constraint_angle_max_1602489585_name = StringName(from: "set_ccdik_joint_constraint_angle_max")
        self._method_set_ccdik_joint_constraint_angle_max_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DCCDIK._native_ptr(), _method_set_ccdik_joint_constraint_angle_max_1602489585_name._native_ptr(), 1602489585)
        assert(SkeletonModification2DCCDIK._method_set_ccdik_joint_constraint_angle_max_1602489585 != nil)
        let _method_get_ccdik_joint_constraint_angle_max_2339986948_name = StringName(from: "get_ccdik_joint_constraint_angle_max")
        self._method_get_ccdik_joint_constraint_angle_max_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DCCDIK._native_ptr(), _method_get_ccdik_joint_constraint_angle_max_2339986948_name._native_ptr(), 2339986948)
        assert(SkeletonModification2DCCDIK._method_get_ccdik_joint_constraint_angle_max_2339986948 != nil)
        let _method_set_ccdik_joint_constraint_angle_invert_300928843_name = StringName(from: "set_ccdik_joint_constraint_angle_invert")
        self._method_set_ccdik_joint_constraint_angle_invert_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DCCDIK._native_ptr(), _method_set_ccdik_joint_constraint_angle_invert_300928843_name._native_ptr(), 300928843)
        assert(SkeletonModification2DCCDIK._method_set_ccdik_joint_constraint_angle_invert_300928843 != nil)
        let _method_get_ccdik_joint_constraint_angle_invert_1116898809_name = StringName(from: "get_ccdik_joint_constraint_angle_invert")
        self._method_get_ccdik_joint_constraint_angle_invert_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DCCDIK._native_ptr(), _method_get_ccdik_joint_constraint_angle_invert_1116898809_name._native_ptr(), 1116898809)
        assert(SkeletonModification2DCCDIK._method_get_ccdik_joint_constraint_angle_invert_1116898809 != nil)
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
            return NodePath(godot: __resPtr.pointee)
    }
    public func set_tip_node(tip_nodepath: NodePath)  {
        let tip_nodepath_native = tip_nodepath._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tip_nodepath_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tip_node_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_tip_node() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tip_node_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
    }
    public func set_ccdik_data_chain_length(length: Int64)  {
        withUnsafePointer(to: length) { length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ccdik_data_chain_length_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ccdik_data_chain_length() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ccdik_data_chain_length_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_ccdik_joint_bone2d_node(joint_idx: Int64, bone2d_nodepath: NodePath)  {
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let bone2d_nodepath_native = bone2d_nodepath._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native), .init(bone2d_nodepath_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ccdik_joint_bone2d_node_2761262315,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ccdik_joint_bone2d_node(joint_idx: Int64) -> NodePath {
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ccdik_joint_bone2d_node_408788394,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
        }
    }
    public func set_ccdik_joint_bone_index(joint_idx: Int64, bone_idx: Int64)  {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native), .init(bone_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ccdik_joint_bone_index_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_ccdik_joint_bone_index(joint_idx: Int64) -> Int64 {
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
                    Self._method_get_ccdik_joint_bone_index_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func set_ccdik_joint_rotate_from_joint(joint_idx: Int64, rotate_from_joint: UInt8)  {
        withUnsafePointer(to: rotate_from_joint) { rotate_from_joint_native in
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native), .init(rotate_from_joint_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ccdik_joint_rotate_from_joint_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_ccdik_joint_rotate_from_joint(joint_idx: Int64) -> UInt8 {
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
                    Self._method_get_ccdik_joint_rotate_from_joint_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func set_ccdik_joint_enable_constraint(joint_idx: Int64, enable_constraint: UInt8)  {
        withUnsafePointer(to: enable_constraint) { enable_constraint_native in
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native), .init(enable_constraint_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ccdik_joint_enable_constraint_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_ccdik_joint_enable_constraint(joint_idx: Int64) -> UInt8 {
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
                    Self._method_get_ccdik_joint_enable_constraint_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func set_ccdik_joint_constraint_angle_min(joint_idx: Int64, angle_min: Float64)  {
        withUnsafePointer(to: angle_min) { angle_min_native in
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native), .init(angle_min_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ccdik_joint_constraint_angle_min_1602489585,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_ccdik_joint_constraint_angle_min(joint_idx: Int64) -> Float64 {
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
                    Self._method_get_ccdik_joint_constraint_angle_min_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func set_ccdik_joint_constraint_angle_max(joint_idx: Int64, angle_max: Float64)  {
        withUnsafePointer(to: angle_max) { angle_max_native in
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native), .init(angle_max_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ccdik_joint_constraint_angle_max_1602489585,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_ccdik_joint_constraint_angle_max(joint_idx: Int64) -> Float64 {
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
                    Self._method_get_ccdik_joint_constraint_angle_max_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func set_ccdik_joint_constraint_angle_invert(joint_idx: Int64, invert: UInt8)  {
        withUnsafePointer(to: invert) { invert_native in
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native), .init(invert_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ccdik_joint_constraint_angle_invert_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_ccdik_joint_constraint_angle_invert(joint_idx: Int64) -> UInt8 {
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
                    Self._method_get_ccdik_joint_constraint_angle_invert_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
}