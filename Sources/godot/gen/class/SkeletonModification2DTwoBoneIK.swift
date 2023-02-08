import godot_native

fileprivate var __godot_name_SkeletonModification2DTwoBoneIK: StringName! = nil

/// A modification that rotates two bones using the law of cosigns to reach the target.
/// 
/// This [SkeletonModification2D] uses an algorithm typically called TwoBoneIK. This algorithm works by leveraging the law of cosigns and the lengths of the bones to figure out what rotation the bones currently have, and what rotation they need to make a complete triangle, where the first bone, the second bone, and the target form the three vertices of the triangle. Because the algorithm works by making a triangle, it can only operate on two bones.
///  
/// TwoBoneIK is great for arms, legs, and really any joints that can be represented by just two bones that bend to reach a target. This solver is more lightweight than [SkeletonModification2DFABRIK], but gives similar, natural looking results.
open class SkeletonModification2DTwoBoneIK : SkeletonModification2D {

    

    public override class var __godot_name: StringName { __godot_name_SkeletonModification2DTwoBoneIK }

    static var _method_set_target_node_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_target_node_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_target_minimum_distance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_target_minimum_distance_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_target_maximum_distance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_target_maximum_distance_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_flip_bend_direction_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_flip_bend_direction_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_joint_one_bone2d_node_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_joint_one_bone2d_node_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_joint_one_bone_idx_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_joint_one_bone_idx_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_joint_two_bone2d_node_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_joint_two_bone2d_node_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_joint_two_bone_idx_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_joint_two_bone_idx_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_SkeletonModification2DTwoBoneIK = StringName(from: "SkeletonModification2DTwoBoneIK")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_target_node_1348162250_name = StringName(from: "set_target_node")
        self._method_set_target_node_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DTwoBoneIK._native_ptr(), _method_set_target_node_1348162250_name._native_ptr(), 1348162250)
        assert(SkeletonModification2DTwoBoneIK._method_set_target_node_1348162250 != nil)
        let _method_get_target_node_4075236667_name = StringName(from: "get_target_node")
        self._method_get_target_node_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DTwoBoneIK._native_ptr(), _method_get_target_node_4075236667_name._native_ptr(), 4075236667)
        assert(SkeletonModification2DTwoBoneIK._method_get_target_node_4075236667 != nil)
        let _method_set_target_minimum_distance_373806689_name = StringName(from: "set_target_minimum_distance")
        self._method_set_target_minimum_distance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DTwoBoneIK._native_ptr(), _method_set_target_minimum_distance_373806689_name._native_ptr(), 373806689)
        assert(SkeletonModification2DTwoBoneIK._method_set_target_minimum_distance_373806689 != nil)
        let _method_get_target_minimum_distance_1740695150_name = StringName(from: "get_target_minimum_distance")
        self._method_get_target_minimum_distance_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DTwoBoneIK._native_ptr(), _method_get_target_minimum_distance_1740695150_name._native_ptr(), 1740695150)
        assert(SkeletonModification2DTwoBoneIK._method_get_target_minimum_distance_1740695150 != nil)
        let _method_set_target_maximum_distance_373806689_name = StringName(from: "set_target_maximum_distance")
        self._method_set_target_maximum_distance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DTwoBoneIK._native_ptr(), _method_set_target_maximum_distance_373806689_name._native_ptr(), 373806689)
        assert(SkeletonModification2DTwoBoneIK._method_set_target_maximum_distance_373806689 != nil)
        let _method_get_target_maximum_distance_1740695150_name = StringName(from: "get_target_maximum_distance")
        self._method_get_target_maximum_distance_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DTwoBoneIK._native_ptr(), _method_get_target_maximum_distance_1740695150_name._native_ptr(), 1740695150)
        assert(SkeletonModification2DTwoBoneIK._method_get_target_maximum_distance_1740695150 != nil)
        let _method_set_flip_bend_direction_2586408642_name = StringName(from: "set_flip_bend_direction")
        self._method_set_flip_bend_direction_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DTwoBoneIK._native_ptr(), _method_set_flip_bend_direction_2586408642_name._native_ptr(), 2586408642)
        assert(SkeletonModification2DTwoBoneIK._method_set_flip_bend_direction_2586408642 != nil)
        let _method_get_flip_bend_direction_36873697_name = StringName(from: "get_flip_bend_direction")
        self._method_get_flip_bend_direction_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DTwoBoneIK._native_ptr(), _method_get_flip_bend_direction_36873697_name._native_ptr(), 36873697)
        assert(SkeletonModification2DTwoBoneIK._method_get_flip_bend_direction_36873697 != nil)
        let _method_set_joint_one_bone2d_node_1348162250_name = StringName(from: "set_joint_one_bone2d_node")
        self._method_set_joint_one_bone2d_node_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DTwoBoneIK._native_ptr(), _method_set_joint_one_bone2d_node_1348162250_name._native_ptr(), 1348162250)
        assert(SkeletonModification2DTwoBoneIK._method_set_joint_one_bone2d_node_1348162250 != nil)
        let _method_get_joint_one_bone2d_node_4075236667_name = StringName(from: "get_joint_one_bone2d_node")
        self._method_get_joint_one_bone2d_node_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DTwoBoneIK._native_ptr(), _method_get_joint_one_bone2d_node_4075236667_name._native_ptr(), 4075236667)
        assert(SkeletonModification2DTwoBoneIK._method_get_joint_one_bone2d_node_4075236667 != nil)
        let _method_set_joint_one_bone_idx_1286410249_name = StringName(from: "set_joint_one_bone_idx")
        self._method_set_joint_one_bone_idx_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DTwoBoneIK._native_ptr(), _method_set_joint_one_bone_idx_1286410249_name._native_ptr(), 1286410249)
        assert(SkeletonModification2DTwoBoneIK._method_set_joint_one_bone_idx_1286410249 != nil)
        let _method_get_joint_one_bone_idx_3905245786_name = StringName(from: "get_joint_one_bone_idx")
        self._method_get_joint_one_bone_idx_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DTwoBoneIK._native_ptr(), _method_get_joint_one_bone_idx_3905245786_name._native_ptr(), 3905245786)
        assert(SkeletonModification2DTwoBoneIK._method_get_joint_one_bone_idx_3905245786 != nil)
        let _method_set_joint_two_bone2d_node_1348162250_name = StringName(from: "set_joint_two_bone2d_node")
        self._method_set_joint_two_bone2d_node_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DTwoBoneIK._native_ptr(), _method_set_joint_two_bone2d_node_1348162250_name._native_ptr(), 1348162250)
        assert(SkeletonModification2DTwoBoneIK._method_set_joint_two_bone2d_node_1348162250 != nil)
        let _method_get_joint_two_bone2d_node_4075236667_name = StringName(from: "get_joint_two_bone2d_node")
        self._method_get_joint_two_bone2d_node_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DTwoBoneIK._native_ptr(), _method_get_joint_two_bone2d_node_4075236667_name._native_ptr(), 4075236667)
        assert(SkeletonModification2DTwoBoneIK._method_get_joint_two_bone2d_node_4075236667 != nil)
        let _method_set_joint_two_bone_idx_1286410249_name = StringName(from: "set_joint_two_bone_idx")
        self._method_set_joint_two_bone_idx_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DTwoBoneIK._native_ptr(), _method_set_joint_two_bone_idx_1286410249_name._native_ptr(), 1286410249)
        assert(SkeletonModification2DTwoBoneIK._method_set_joint_two_bone_idx_1286410249 != nil)
        let _method_get_joint_two_bone_idx_3905245786_name = StringName(from: "get_joint_two_bone_idx")
        self._method_get_joint_two_bone_idx_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DTwoBoneIK._native_ptr(), _method_get_joint_two_bone_idx_3905245786_name._native_ptr(), 3905245786)
        assert(SkeletonModification2DTwoBoneIK._method_get_joint_two_bone_idx_3905245786 != nil)
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
    public func set_target_minimum_distance(minimum_distance: Float64)  {
        withUnsafePointer(to: minimum_distance) { minimum_distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(minimum_distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_target_minimum_distance_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_target_minimum_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_target_minimum_distance_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_target_maximum_distance(maximum_distance: Float64)  {
        withUnsafePointer(to: maximum_distance) { maximum_distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(maximum_distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_target_maximum_distance_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_target_maximum_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_target_maximum_distance_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_flip_bend_direction(flip_direction: UInt8)  {
        withUnsafePointer(to: flip_direction) { flip_direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flip_direction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_flip_bend_direction_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_flip_bend_direction() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_flip_bend_direction_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_joint_one_bone2d_node(bone2d_node: NodePath)  {
        let bone2d_node_native = bone2d_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone2d_node_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_joint_one_bone2d_node_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_joint_one_bone2d_node() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_joint_one_bone2d_node_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
    }
    public func set_joint_one_bone_idx(bone_idx: Int64)  {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_joint_one_bone_idx_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_joint_one_bone_idx() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_joint_one_bone_idx_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_joint_two_bone2d_node(bone2d_node: NodePath)  {
        let bone2d_node_native = bone2d_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone2d_node_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_joint_two_bone2d_node_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_joint_two_bone2d_node() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_joint_two_bone2d_node_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
    }
    public func set_joint_two_bone_idx(bone_idx: Int64)  {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_joint_two_bone_idx_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_joint_two_bone_idx() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_joint_two_bone_idx_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}