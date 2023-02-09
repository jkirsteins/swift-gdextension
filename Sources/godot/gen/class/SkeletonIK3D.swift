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
open class SkeletonIK3D : Node {

    

    public override class var __godot_name: StringName { __godot_name_SkeletonIK3D }

    static var _method_set_root_bone_3304788590: StringName! = nil
    static var _method_get_root_bone_2002593661: StringName! = nil
    static var _method_set_tip_bone_3304788590: StringName! = nil
    static var _method_get_tip_bone_2002593661: StringName! = nil
    static var _method_set_interpolation_373806689: StringName! = nil
    static var _method_get_interpolation_1740695150: StringName! = nil
    static var _method_set_target_transform_2952846383: StringName! = nil
    static var _method_get_target_transform_3229777777: StringName! = nil
    static var _method_set_target_node_1348162250: StringName! = nil
    static var _method_get_target_node_277076166: StringName! = nil
    static var _method_set_override_tip_basis_2586408642: StringName! = nil
    static var _method_is_override_tip_basis_36873697: StringName! = nil
    static var _method_set_use_magnet_2586408642: StringName! = nil
    static var _method_is_using_magnet_36873697: StringName! = nil
    static var _method_set_magnet_position_3460891852: StringName! = nil
    static var _method_get_magnet_position_3360562783: StringName! = nil
    static var _method_get_parent_skeleton_1488626673: StringName! = nil
    static var _method_is_running_2240911060: StringName! = nil
    static var _method_set_min_distance_373806689: StringName! = nil
    static var _method_get_min_distance_1740695150: StringName! = nil
    static var _method_set_max_iterations_1286410249: StringName! = nil
    static var _method_get_max_iterations_3905245786: StringName! = nil
    static var _method_start_107499316: StringName! = nil
    static var _method_stop_3218959716: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_SkeletonIK3D == nil)
        __godot_name_SkeletonIK3D = StringName(from: "SkeletonIK3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_root_bone_3304788590 = StringName(from: "set_root_bone")
        assert(self._method_set_root_bone_3304788590 != nil)
        self._method_get_root_bone_2002593661 = StringName(from: "get_root_bone")
        assert(self._method_get_root_bone_2002593661 != nil)
        self._method_set_tip_bone_3304788590 = StringName(from: "set_tip_bone")
        assert(self._method_set_tip_bone_3304788590 != nil)
        self._method_get_tip_bone_2002593661 = StringName(from: "get_tip_bone")
        assert(self._method_get_tip_bone_2002593661 != nil)
        self._method_set_interpolation_373806689 = StringName(from: "set_interpolation")
        assert(self._method_set_interpolation_373806689 != nil)
        self._method_get_interpolation_1740695150 = StringName(from: "get_interpolation")
        assert(self._method_get_interpolation_1740695150 != nil)
        self._method_set_target_transform_2952846383 = StringName(from: "set_target_transform")
        assert(self._method_set_target_transform_2952846383 != nil)
        self._method_get_target_transform_3229777777 = StringName(from: "get_target_transform")
        assert(self._method_get_target_transform_3229777777 != nil)
        self._method_set_target_node_1348162250 = StringName(from: "set_target_node")
        assert(self._method_set_target_node_1348162250 != nil)
        self._method_get_target_node_277076166 = StringName(from: "get_target_node")
        assert(self._method_get_target_node_277076166 != nil)
        self._method_set_override_tip_basis_2586408642 = StringName(from: "set_override_tip_basis")
        assert(self._method_set_override_tip_basis_2586408642 != nil)
        self._method_is_override_tip_basis_36873697 = StringName(from: "is_override_tip_basis")
        assert(self._method_is_override_tip_basis_36873697 != nil)
        self._method_set_use_magnet_2586408642 = StringName(from: "set_use_magnet")
        assert(self._method_set_use_magnet_2586408642 != nil)
        self._method_is_using_magnet_36873697 = StringName(from: "is_using_magnet")
        assert(self._method_is_using_magnet_36873697 != nil)
        self._method_set_magnet_position_3460891852 = StringName(from: "set_magnet_position")
        assert(self._method_set_magnet_position_3460891852 != nil)
        self._method_get_magnet_position_3360562783 = StringName(from: "get_magnet_position")
        assert(self._method_get_magnet_position_3360562783 != nil)
        self._method_get_parent_skeleton_1488626673 = StringName(from: "get_parent_skeleton")
        assert(self._method_get_parent_skeleton_1488626673 != nil)
        self._method_is_running_2240911060 = StringName(from: "is_running")
        assert(self._method_is_running_2240911060 != nil)
        self._method_set_min_distance_373806689 = StringName(from: "set_min_distance")
        assert(self._method_set_min_distance_373806689 != nil)
        self._method_get_min_distance_1740695150 = StringName(from: "get_min_distance")
        assert(self._method_get_min_distance_1740695150 != nil)
        self._method_set_max_iterations_1286410249 = StringName(from: "set_max_iterations")
        assert(self._method_set_max_iterations_1286410249 != nil)
        self._method_get_max_iterations_3905245786 = StringName(from: "get_max_iterations")
        assert(self._method_get_max_iterations_3905245786 != nil)
        self._method_start_107499316 = StringName(from: "start")
        assert(self._method_start_107499316 != nil)
        self._method_stop_3218959716 = StringName(from: "stop")
        assert(self._method_stop_3218959716 != nil)
    }

    public func set_root_bone(root_bone: StringName)  {
        let root_bone_native = root_bone._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(root_bone_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_root_bone_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_root_bone_2002593661._native_ptr(),
                    2002593661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
    public func set_tip_bone(tip_bone: StringName)  {
        let tip_bone_native = tip_bone._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tip_bone_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tip_bone_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tip_bone_2002593661._native_ptr(),
                    2002593661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
    public func set_interpolation(interpolation: Float64)  {
        withUnsafePointer(to: interpolation) { interpolation_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(interpolation_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_interpolation_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_interpolation_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_target_transform(target: Transform3D)  {
        let target_native = target._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(target_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_target_transform_2952846383._native_ptr(),
                    2952846383)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_target_transform_3229777777._native_ptr(),
                    3229777777)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(godot: __resPtr.pointee)
    }
    public func set_target_node(node: NodePath)  {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
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
                    Self._method_get_target_node_277076166._native_ptr(),
                    277076166)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
    }
    public func set_override_tip_basis(override: UInt8)  {
        withUnsafePointer(to: override) { override_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(override_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_override_tip_basis_2586408642._native_ptr(),
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
    public func is_override_tip_basis() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_override_tip_basis_36873697._native_ptr(),
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
    public func set_use_magnet(use: UInt8)  {
        withUnsafePointer(to: use) { use_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(use_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_use_magnet_2586408642._native_ptr(),
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
    public func is_using_magnet() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_using_magnet_36873697._native_ptr(),
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
    public func set_magnet_position(local_position: Vector3)  {
        let local_position_native = local_position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(local_position_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_magnet_position_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_magnet_position_3360562783._native_ptr(),
                    3360562783)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func get_parent_skeleton() -> Skeleton3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_parent_skeleton_1488626673._native_ptr(),
                    1488626673)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Skeleton3D(godot: __resPtr.pointee)
    }
    public func is_running() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_running_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_min_distance(min_distance: Float64)  {
        withUnsafePointer(to: min_distance) { min_distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(min_distance_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_min_distance_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_min_distance_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_max_iterations(iterations: Int64)  {
        withUnsafePointer(to: iterations) { iterations_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(iterations_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_max_iterations_1286410249._native_ptr(),
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
    public func get_max_iterations() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_max_iterations_3905245786._native_ptr(),
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
    public func start(one_time: UInt8)  {
        withUnsafePointer(to: one_time) { one_time_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(one_time_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_start_107499316._native_ptr(),
                    107499316)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_stop_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}