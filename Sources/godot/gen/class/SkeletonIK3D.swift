import godot_native

fileprivate var __godot_name_SkeletonIK3D: StringName! = nil

/// SkeletonIK3D is used to place the end bone of a [Skeleton3D] bone chain at a certain point in 3D by rotating all bones in the chain accordingly.
/// 
/// SkeletonIK3D is used to place the end bone of a [Skeleton3D] bone chain at a certain point in 3D by rotating all bones in the chain accordingly. A typical scenario for IK in games is to place a characters feet on the ground or a characters hands on a currently hold object. SkeletonIK uses FabrikInverseKinematic internally to solve the bone chain and applies the results to the [Skeleton3D] [code]bones_global_pose_override[/code] property for all affected bones in the chain. If fully applied this overwrites any bone transform from [Animation]s or bone custom poses set by users. The applied amount can be controlled with the [code]interpolation[/code] property.
///  
/// [codeblock]
///  
/// # Apply IK effect automatically on every new frame (not the current)
///  
/// skeleton_ik_node.start()
///  
///  
/// # Apply IK effect only on the current frame
///  
/// skeleton_ik_node.start(true)
///  
///  
/// # Stop IK effect and reset bones_global_pose_override on Skeleton
///  
/// skeleton_ik_node.stop()
///  
///  
/// # Apply full IK effect
///  
/// skeleton_ik_node.set_interpolation(1.0)
///  
///  
/// # Apply half IK effect
///  
/// skeleton_ik_node.set_interpolation(0.5)
///  
///  
/// # Apply zero IK effect (a value at or below 0.01 also removes bones_global_pose_override on Skeleton)
///  
/// skeleton_ik_node.set_interpolation(0.0)
///  
/// [/codeblock]
public class SkeletonIK3D : Node {

    

    public override class var __godot_name: StringName { __godot_name_SkeletonIK3D }

    static var _method_set_root_bone_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_root_bone_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_set_tip_bone_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_tip_bone_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_set_interpolation_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_interpolation_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_target_transform_2952846383: GDExtensionMethodBindPtr! = nil
    static var _method_get_target_transform_3229777777: GDExtensionMethodBindPtr! = nil
    static var _method_set_target_node_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_target_node_277076166: GDExtensionMethodBindPtr! = nil
    static var _method_set_override_tip_basis_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_override_tip_basis_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_magnet_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_using_magnet_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_magnet_position_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_magnet_position_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_get_parent_skeleton_1488626673: GDExtensionMethodBindPtr! = nil
    static var _method_is_running_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_min_distance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_min_distance_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_iterations_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_iterations_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_start_107499316: GDExtensionMethodBindPtr! = nil
    static var _method_stop_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_SkeletonIK3D = StringName(from: "SkeletonIK3D")

        let _method_set_root_bone_3304788590_name = StringName(from: "set_root_bone")
        self._method_set_root_bone_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_root_bone_3304788590_name._native_ptr(), 3304788590)
        assert(SkeletonIK3D._method_set_root_bone_3304788590 != nil)
        let _method_get_root_bone_2002593661_name = StringName(from: "get_root_bone")
        self._method_get_root_bone_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_root_bone_2002593661_name._native_ptr(), 2002593661)
        assert(SkeletonIK3D._method_get_root_bone_2002593661 != nil)
        let _method_set_tip_bone_3304788590_name = StringName(from: "set_tip_bone")
        self._method_set_tip_bone_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tip_bone_3304788590_name._native_ptr(), 3304788590)
        assert(SkeletonIK3D._method_set_tip_bone_3304788590 != nil)
        let _method_get_tip_bone_2002593661_name = StringName(from: "get_tip_bone")
        self._method_get_tip_bone_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tip_bone_2002593661_name._native_ptr(), 2002593661)
        assert(SkeletonIK3D._method_get_tip_bone_2002593661 != nil)
        let _method_set_interpolation_373806689_name = StringName(from: "set_interpolation")
        self._method_set_interpolation_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_interpolation_373806689_name._native_ptr(), 373806689)
        assert(SkeletonIK3D._method_set_interpolation_373806689 != nil)
        let _method_get_interpolation_1740695150_name = StringName(from: "get_interpolation")
        self._method_get_interpolation_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_interpolation_1740695150_name._native_ptr(), 1740695150)
        assert(SkeletonIK3D._method_get_interpolation_1740695150 != nil)
        let _method_set_target_transform_2952846383_name = StringName(from: "set_target_transform")
        self._method_set_target_transform_2952846383 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_target_transform_2952846383_name._native_ptr(), 2952846383)
        assert(SkeletonIK3D._method_set_target_transform_2952846383 != nil)
        let _method_get_target_transform_3229777777_name = StringName(from: "get_target_transform")
        self._method_get_target_transform_3229777777 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_target_transform_3229777777_name._native_ptr(), 3229777777)
        assert(SkeletonIK3D._method_get_target_transform_3229777777 != nil)
        let _method_set_target_node_1348162250_name = StringName(from: "set_target_node")
        self._method_set_target_node_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_target_node_1348162250_name._native_ptr(), 1348162250)
        assert(SkeletonIK3D._method_set_target_node_1348162250 != nil)
        let _method_get_target_node_277076166_name = StringName(from: "get_target_node")
        self._method_get_target_node_277076166 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_target_node_277076166_name._native_ptr(), 277076166)
        assert(SkeletonIK3D._method_get_target_node_277076166 != nil)
        let _method_set_override_tip_basis_2586408642_name = StringName(from: "set_override_tip_basis")
        self._method_set_override_tip_basis_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_override_tip_basis_2586408642_name._native_ptr(), 2586408642)
        assert(SkeletonIK3D._method_set_override_tip_basis_2586408642 != nil)
        let _method_is_override_tip_basis_36873697_name = StringName(from: "is_override_tip_basis")
        self._method_is_override_tip_basis_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_override_tip_basis_36873697_name._native_ptr(), 36873697)
        assert(SkeletonIK3D._method_is_override_tip_basis_36873697 != nil)
        let _method_set_use_magnet_2586408642_name = StringName(from: "set_use_magnet")
        self._method_set_use_magnet_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_use_magnet_2586408642_name._native_ptr(), 2586408642)
        assert(SkeletonIK3D._method_set_use_magnet_2586408642 != nil)
        let _method_is_using_magnet_36873697_name = StringName(from: "is_using_magnet")
        self._method_is_using_magnet_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_using_magnet_36873697_name._native_ptr(), 36873697)
        assert(SkeletonIK3D._method_is_using_magnet_36873697 != nil)
        let _method_set_magnet_position_3460891852_name = StringName(from: "set_magnet_position")
        self._method_set_magnet_position_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_magnet_position_3460891852_name._native_ptr(), 3460891852)
        assert(SkeletonIK3D._method_set_magnet_position_3460891852 != nil)
        let _method_get_magnet_position_3360562783_name = StringName(from: "get_magnet_position")
        self._method_get_magnet_position_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_magnet_position_3360562783_name._native_ptr(), 3360562783)
        assert(SkeletonIK3D._method_get_magnet_position_3360562783 != nil)
        let _method_get_parent_skeleton_1488626673_name = StringName(from: "get_parent_skeleton")
        self._method_get_parent_skeleton_1488626673 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_parent_skeleton_1488626673_name._native_ptr(), 1488626673)
        assert(SkeletonIK3D._method_get_parent_skeleton_1488626673 != nil)
        let _method_is_running_2240911060_name = StringName(from: "is_running")
        self._method_is_running_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_running_2240911060_name._native_ptr(), 2240911060)
        assert(SkeletonIK3D._method_is_running_2240911060 != nil)
        let _method_set_min_distance_373806689_name = StringName(from: "set_min_distance")
        self._method_set_min_distance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_min_distance_373806689_name._native_ptr(), 373806689)
        assert(SkeletonIK3D._method_set_min_distance_373806689 != nil)
        let _method_get_min_distance_1740695150_name = StringName(from: "get_min_distance")
        self._method_get_min_distance_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_min_distance_1740695150_name._native_ptr(), 1740695150)
        assert(SkeletonIK3D._method_get_min_distance_1740695150 != nil)
        let _method_set_max_iterations_1286410249_name = StringName(from: "set_max_iterations")
        self._method_set_max_iterations_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_max_iterations_1286410249_name._native_ptr(), 1286410249)
        assert(SkeletonIK3D._method_set_max_iterations_1286410249 != nil)
        let _method_get_max_iterations_3905245786_name = StringName(from: "get_max_iterations")
        self._method_get_max_iterations_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_max_iterations_3905245786_name._native_ptr(), 3905245786)
        assert(SkeletonIK3D._method_get_max_iterations_3905245786 != nil)
        let _method_start_107499316_name = StringName(from: "start")
        self._method_start_107499316 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_start_107499316_name._native_ptr(), 107499316)
        assert(SkeletonIK3D._method_start_107499316 != nil)
        let _method_stop_3218959716_name = StringName(from: "stop")
        self._method_stop_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_stop_3218959716_name._native_ptr(), 3218959716)
        assert(SkeletonIK3D._method_stop_3218959716 != nil)
    }

    public func set_root_bone(root_bone: StringName)  {
        let root_bone_native = root_bone._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(root_bone_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_root_bone_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_root_bone() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_root_bone_2002593661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
    }
    public func set_tip_bone(tip_bone: StringName)  {
        let tip_bone_native = tip_bone._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tip_bone_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tip_bone_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_tip_bone() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tip_bone_2002593661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
    }
    public func set_interpolation(interpolation: Float64)  {
        withUnsafePointer(to: interpolation) { interpolation_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(interpolation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_interpolation_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_interpolation() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_interpolation_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_target_transform(target: Transform3D)  {
        let target_native = target._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(target_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_target_transform_2952846383,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_target_transform() -> Transform3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_target_transform_3229777777,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
    }
    public func set_target_node(node: NodePath)  {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
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
                    Self._method_get_target_node_277076166,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(from: __resPtr.pointee)
    }
    public func set_override_tip_basis(override: UInt8)  {
        withUnsafePointer(to: override) { override_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(override_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_override_tip_basis_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_override_tip_basis() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_override_tip_basis_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_use_magnet(use: UInt8)  {
        withUnsafePointer(to: use) { use_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(use_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_magnet_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_using_magnet() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_using_magnet_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_magnet_position(local_position: Vector3)  {
        let local_position_native = local_position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(local_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_magnet_position_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_magnet_position() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_magnet_position_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func get_parent_skeleton() -> Skeleton3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_parent_skeleton_1488626673,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Skeleton3D(from: __resPtr.pointee)
    }
    public func is_running() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_running_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_min_distance(min_distance: Float64)  {
        withUnsafePointer(to: min_distance) { min_distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(min_distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_min_distance_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_min_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_min_distance_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_max_iterations(iterations: Int64)  {
        withUnsafePointer(to: iterations) { iterations_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(iterations_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_iterations_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max_iterations() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_iterations_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func start(one_time: UInt8)  {
        withUnsafePointer(to: one_time) { one_time_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(one_time_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_start_107499316,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func stop()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_stop_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}