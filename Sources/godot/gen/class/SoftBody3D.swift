import godot_native

fileprivate var __godot_name_SoftBody3D: StringName! = nil

/// A soft mesh physics body.
/// 
/// A deformable physics body. Used to create elastic or deformable objects such as cloth, rubber, or other flexible materials.
///  
/// [b]Note:[/b] There are many known bugs in [SoftBody3D]. Therefore, it's not recommended to use them for things that can affect gameplay (such as a player character made entirely out of soft bodies).
public class SoftBody3D : MeshInstance3D {

    public enum DisableMode : Int32 {
        case DISABLE_MODE_REMOVE = 0
        case DISABLE_MODE_KEEP_ACTIVE = 1
    }

    public override class var __godot_name: StringName { __godot_name_SoftBody3D }

    static var _method_get_physics_rid_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_layer_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_layer_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_mask_value_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_mask_value_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_layer_value_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_layer_value_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_parent_collision_ignore_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_parent_collision_ignore_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_disable_mode_1104158384: GDExtensionMethodBindPtr! = nil
    static var _method_get_disable_mode_4135042476: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_exceptions_2915620761: GDExtensionMethodBindPtr! = nil
    static var _method_add_collision_exception_with_1078189570: GDExtensionMethodBindPtr! = nil
    static var _method_remove_collision_exception_with_1078189570: GDExtensionMethodBindPtr! = nil
    static var _method_set_simulation_precision_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_simulation_precision_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_set_total_mass_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_total_mass_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_set_linear_stiffness_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_linear_stiffness_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_set_pressure_coefficient_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_pressure_coefficient_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_set_damping_coefficient_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_damping_coefficient_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_set_drag_coefficient_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_drag_coefficient_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_transform_871989493: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_pinned_3814935226: GDExtensionMethodBindPtr! = nil
    static var _method_is_point_pinned_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_ray_pickable_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_ray_pickable_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_SoftBody3D = StringName(from: "SoftBody3D")

        let _method_get_physics_rid_2944877500_name = StringName(from: "get_physics_rid")
        self._method_get_physics_rid_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_physics_rid_2944877500_name._native_ptr(), 2944877500)
        assert(SoftBody3D._method_get_physics_rid_2944877500 != nil)
        let _method_set_collision_mask_1286410249_name = StringName(from: "set_collision_mask")
        self._method_set_collision_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_mask_1286410249_name._native_ptr(), 1286410249)
        assert(SoftBody3D._method_set_collision_mask_1286410249 != nil)
        let _method_get_collision_mask_3905245786_name = StringName(from: "get_collision_mask")
        self._method_get_collision_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_mask_3905245786_name._native_ptr(), 3905245786)
        assert(SoftBody3D._method_get_collision_mask_3905245786 != nil)
        let _method_set_collision_layer_1286410249_name = StringName(from: "set_collision_layer")
        self._method_set_collision_layer_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_layer_1286410249_name._native_ptr(), 1286410249)
        assert(SoftBody3D._method_set_collision_layer_1286410249 != nil)
        let _method_get_collision_layer_3905245786_name = StringName(from: "get_collision_layer")
        self._method_get_collision_layer_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_layer_3905245786_name._native_ptr(), 3905245786)
        assert(SoftBody3D._method_get_collision_layer_3905245786 != nil)
        let _method_set_collision_mask_value_300928843_name = StringName(from: "set_collision_mask_value")
        self._method_set_collision_mask_value_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_mask_value_300928843_name._native_ptr(), 300928843)
        assert(SoftBody3D._method_set_collision_mask_value_300928843 != nil)
        let _method_get_collision_mask_value_1116898809_name = StringName(from: "get_collision_mask_value")
        self._method_get_collision_mask_value_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_mask_value_1116898809_name._native_ptr(), 1116898809)
        assert(SoftBody3D._method_get_collision_mask_value_1116898809 != nil)
        let _method_set_collision_layer_value_300928843_name = StringName(from: "set_collision_layer_value")
        self._method_set_collision_layer_value_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_layer_value_300928843_name._native_ptr(), 300928843)
        assert(SoftBody3D._method_set_collision_layer_value_300928843 != nil)
        let _method_get_collision_layer_value_1116898809_name = StringName(from: "get_collision_layer_value")
        self._method_get_collision_layer_value_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_layer_value_1116898809_name._native_ptr(), 1116898809)
        assert(SoftBody3D._method_get_collision_layer_value_1116898809 != nil)
        let _method_set_parent_collision_ignore_1348162250_name = StringName(from: "set_parent_collision_ignore")
        self._method_set_parent_collision_ignore_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_parent_collision_ignore_1348162250_name._native_ptr(), 1348162250)
        assert(SoftBody3D._method_set_parent_collision_ignore_1348162250 != nil)
        let _method_get_parent_collision_ignore_4075236667_name = StringName(from: "get_parent_collision_ignore")
        self._method_get_parent_collision_ignore_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_parent_collision_ignore_4075236667_name._native_ptr(), 4075236667)
        assert(SoftBody3D._method_get_parent_collision_ignore_4075236667 != nil)
        let _method_set_disable_mode_1104158384_name = StringName(from: "set_disable_mode")
        self._method_set_disable_mode_1104158384 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_disable_mode_1104158384_name._native_ptr(), 1104158384)
        assert(SoftBody3D._method_set_disable_mode_1104158384 != nil)
        let _method_get_disable_mode_4135042476_name = StringName(from: "get_disable_mode")
        self._method_get_disable_mode_4135042476 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_disable_mode_4135042476_name._native_ptr(), 4135042476)
        assert(SoftBody3D._method_get_disable_mode_4135042476 != nil)
        let _method_get_collision_exceptions_2915620761_name = StringName(from: "get_collision_exceptions")
        self._method_get_collision_exceptions_2915620761 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_exceptions_2915620761_name._native_ptr(), 2915620761)
        assert(SoftBody3D._method_get_collision_exceptions_2915620761 != nil)
        let _method_add_collision_exception_with_1078189570_name = StringName(from: "add_collision_exception_with")
        self._method_add_collision_exception_with_1078189570 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_collision_exception_with_1078189570_name._native_ptr(), 1078189570)
        assert(SoftBody3D._method_add_collision_exception_with_1078189570 != nil)
        let _method_remove_collision_exception_with_1078189570_name = StringName(from: "remove_collision_exception_with")
        self._method_remove_collision_exception_with_1078189570 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_collision_exception_with_1078189570_name._native_ptr(), 1078189570)
        assert(SoftBody3D._method_remove_collision_exception_with_1078189570 != nil)
        let _method_set_simulation_precision_1286410249_name = StringName(from: "set_simulation_precision")
        self._method_set_simulation_precision_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_simulation_precision_1286410249_name._native_ptr(), 1286410249)
        assert(SoftBody3D._method_set_simulation_precision_1286410249 != nil)
        let _method_get_simulation_precision_2455072627_name = StringName(from: "get_simulation_precision")
        self._method_get_simulation_precision_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_simulation_precision_2455072627_name._native_ptr(), 2455072627)
        assert(SoftBody3D._method_get_simulation_precision_2455072627 != nil)
        let _method_set_total_mass_373806689_name = StringName(from: "set_total_mass")
        self._method_set_total_mass_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_total_mass_373806689_name._native_ptr(), 373806689)
        assert(SoftBody3D._method_set_total_mass_373806689 != nil)
        let _method_get_total_mass_191475506_name = StringName(from: "get_total_mass")
        self._method_get_total_mass_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_total_mass_191475506_name._native_ptr(), 191475506)
        assert(SoftBody3D._method_get_total_mass_191475506 != nil)
        let _method_set_linear_stiffness_373806689_name = StringName(from: "set_linear_stiffness")
        self._method_set_linear_stiffness_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_linear_stiffness_373806689_name._native_ptr(), 373806689)
        assert(SoftBody3D._method_set_linear_stiffness_373806689 != nil)
        let _method_get_linear_stiffness_191475506_name = StringName(from: "get_linear_stiffness")
        self._method_get_linear_stiffness_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_linear_stiffness_191475506_name._native_ptr(), 191475506)
        assert(SoftBody3D._method_get_linear_stiffness_191475506 != nil)
        let _method_set_pressure_coefficient_373806689_name = StringName(from: "set_pressure_coefficient")
        self._method_set_pressure_coefficient_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_pressure_coefficient_373806689_name._native_ptr(), 373806689)
        assert(SoftBody3D._method_set_pressure_coefficient_373806689 != nil)
        let _method_get_pressure_coefficient_191475506_name = StringName(from: "get_pressure_coefficient")
        self._method_get_pressure_coefficient_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_pressure_coefficient_191475506_name._native_ptr(), 191475506)
        assert(SoftBody3D._method_get_pressure_coefficient_191475506 != nil)
        let _method_set_damping_coefficient_373806689_name = StringName(from: "set_damping_coefficient")
        self._method_set_damping_coefficient_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_damping_coefficient_373806689_name._native_ptr(), 373806689)
        assert(SoftBody3D._method_set_damping_coefficient_373806689 != nil)
        let _method_get_damping_coefficient_191475506_name = StringName(from: "get_damping_coefficient")
        self._method_get_damping_coefficient_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_damping_coefficient_191475506_name._native_ptr(), 191475506)
        assert(SoftBody3D._method_get_damping_coefficient_191475506 != nil)
        let _method_set_drag_coefficient_373806689_name = StringName(from: "set_drag_coefficient")
        self._method_set_drag_coefficient_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_drag_coefficient_373806689_name._native_ptr(), 373806689)
        assert(SoftBody3D._method_set_drag_coefficient_373806689 != nil)
        let _method_get_drag_coefficient_191475506_name = StringName(from: "get_drag_coefficient")
        self._method_get_drag_coefficient_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_drag_coefficient_191475506_name._native_ptr(), 191475506)
        assert(SoftBody3D._method_get_drag_coefficient_191475506 != nil)
        let _method_get_point_transform_871989493_name = StringName(from: "get_point_transform")
        self._method_get_point_transform_871989493 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_transform_871989493_name._native_ptr(), 871989493)
        assert(SoftBody3D._method_get_point_transform_871989493 != nil)
        let _method_set_point_pinned_3814935226_name = StringName(from: "set_point_pinned")
        self._method_set_point_pinned_3814935226 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_pinned_3814935226_name._native_ptr(), 3814935226)
        assert(SoftBody3D._method_set_point_pinned_3814935226 != nil)
        let _method_is_point_pinned_1116898809_name = StringName(from: "is_point_pinned")
        self._method_is_point_pinned_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_point_pinned_1116898809_name._native_ptr(), 1116898809)
        assert(SoftBody3D._method_is_point_pinned_1116898809 != nil)
        let _method_set_ray_pickable_2586408642_name = StringName(from: "set_ray_pickable")
        self._method_set_ray_pickable_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ray_pickable_2586408642_name._native_ptr(), 2586408642)
        assert(SoftBody3D._method_set_ray_pickable_2586408642 != nil)
        let _method_is_ray_pickable_36873697_name = StringName(from: "is_ray_pickable")
        self._method_is_ray_pickable_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_ray_pickable_36873697_name._native_ptr(), 36873697)
        assert(SoftBody3D._method_is_ray_pickable_36873697 != nil)
    }

    public func get_physics_rid() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_physics_rid_2944877500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func set_collision_mask(collision_mask: Int64)  {
        withUnsafePointer(to: collision_mask) { collision_mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(collision_mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collision_mask_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_collision_mask() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_mask_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_collision_layer(collision_layer: Int64)  {
        withUnsafePointer(to: collision_layer) { collision_layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(collision_layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collision_layer_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_collision_layer() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_layer_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_collision_mask_value(layer_number: Int64, value: UInt8)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: layer_number) { layer_number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_number_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collision_mask_value_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_collision_mask_value(layer_number: Int64) -> UInt8 {
        withUnsafePointer(to: layer_number) { layer_number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_number_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_mask_value_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_collision_layer_value(layer_number: Int64, value: UInt8)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: layer_number) { layer_number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_number_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collision_layer_value_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_collision_layer_value(layer_number: Int64) -> UInt8 {
        withUnsafePointer(to: layer_number) { layer_number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_number_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_layer_value_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_parent_collision_ignore(parent_collision_ignore: NodePath)  {
        let parent_collision_ignore_native = parent_collision_ignore._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parent_collision_ignore_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_parent_collision_ignore_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_parent_collision_ignore() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_parent_collision_ignore_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(from: __resPtr.pointee)
    }
    public func set_disable_mode(mode: SoftBody3D.DisableMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_disable_mode_1104158384,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_disable_mode() -> SoftBody3D.DisableMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_disable_mode_4135042476,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SoftBody3D.DisableMode(from: __resPtr.pointee)
    }
    public func get_collision_exceptions() -> [PhysicsBody3D] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_exceptions_2915620761,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PhysicsBody3D](from: __resPtr.pointee)
    }
    public func add_collision_exception_with(body: Node)  {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_collision_exception_with_1078189570,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_collision_exception_with(body: Node)  {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_collision_exception_with_1078189570,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_simulation_precision(simulation_precision: Int64)  {
        withUnsafePointer(to: simulation_precision) { simulation_precision_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(simulation_precision_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_simulation_precision_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_simulation_precision() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_simulation_precision_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_total_mass(mass: Float64)  {
        withUnsafePointer(to: mass) { mass_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mass_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_total_mass_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_total_mass() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_total_mass_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_linear_stiffness(linear_stiffness: Float64)  {
        withUnsafePointer(to: linear_stiffness) { linear_stiffness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(linear_stiffness_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_linear_stiffness_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_linear_stiffness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_linear_stiffness_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_pressure_coefficient(pressure_coefficient: Float64)  {
        withUnsafePointer(to: pressure_coefficient) { pressure_coefficient_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pressure_coefficient_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pressure_coefficient_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_pressure_coefficient() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pressure_coefficient_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_damping_coefficient(damping_coefficient: Float64)  {
        withUnsafePointer(to: damping_coefficient) { damping_coefficient_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(damping_coefficient_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_damping_coefficient_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_damping_coefficient() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_damping_coefficient_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_drag_coefficient(drag_coefficient: Float64)  {
        withUnsafePointer(to: drag_coefficient) { drag_coefficient_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(drag_coefficient_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_drag_coefficient_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_drag_coefficient() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_drag_coefficient_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func get_point_transform(point_index: Int64) -> Vector3 {
        withUnsafePointer(to: point_index) { point_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_transform_871989493,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
        }
    }
    public func set_point_pinned(point_index: Int64, pinned: UInt8, attachment_path: NodePath)  {
        withUnsafePointer(to: pinned) { pinned_native in
        withUnsafePointer(to: point_index) { point_index_native in
        let attachment_path_native = attachment_path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_index_native), .init(pinned_native), .init(attachment_path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_pinned_3814935226,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func is_point_pinned(point_index: Int64) -> UInt8 {
        withUnsafePointer(to: point_index) { point_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_point_pinned_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_ray_pickable(ray_pickable: UInt8)  {
        withUnsafePointer(to: ray_pickable) { ray_pickable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ray_pickable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ray_pickable_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_ray_pickable() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_ray_pickable_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}