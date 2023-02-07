import godot_native

fileprivate var __godot_name_PhysicsDirectBodyState2DExtension: StringName! = nil

/// 
/// 
/// 
public class PhysicsDirectBodyState2DExtension : PhysicsDirectBodyState2D {

    

    public override class var __godot_name: StringName { __godot_name_PhysicsDirectBodyState2DExtension }

    static var _method__get_total_gravity_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_total_linear_damp_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_total_angular_damp_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_center_of_mass_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_center_of_mass_local_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_inverse_mass_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_inverse_inertia_0: GDExtensionMethodBindPtr! = nil
    static var _method__set_linear_velocity_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_linear_velocity_0: GDExtensionMethodBindPtr! = nil
    static var _method__set_angular_velocity_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_angular_velocity_0: GDExtensionMethodBindPtr! = nil
    static var _method__set_transform_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_transform_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_velocity_at_local_position_0: GDExtensionMethodBindPtr! = nil
    static var _method__apply_central_impulse_0: GDExtensionMethodBindPtr! = nil
    static var _method__apply_impulse_0: GDExtensionMethodBindPtr! = nil
    static var _method__apply_torque_impulse_0: GDExtensionMethodBindPtr! = nil
    static var _method__apply_central_force_0: GDExtensionMethodBindPtr! = nil
    static var _method__apply_force_0: GDExtensionMethodBindPtr! = nil
    static var _method__apply_torque_0: GDExtensionMethodBindPtr! = nil
    static var _method__add_constant_central_force_0: GDExtensionMethodBindPtr! = nil
    static var _method__add_constant_force_0: GDExtensionMethodBindPtr! = nil
    static var _method__add_constant_torque_0: GDExtensionMethodBindPtr! = nil
    static var _method__set_constant_force_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_constant_force_0: GDExtensionMethodBindPtr! = nil
    static var _method__set_constant_torque_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_constant_torque_0: GDExtensionMethodBindPtr! = nil
    static var _method__set_sleep_state_0: GDExtensionMethodBindPtr! = nil
    static var _method__is_sleeping_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_contact_count_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_contact_local_position_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_contact_local_normal_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_contact_local_shape_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_contact_collider_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_contact_collider_position_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_contact_collider_id_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_contact_collider_object_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_contact_collider_shape_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_contact_collider_velocity_at_position_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_contact_impulse_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_step_0: GDExtensionMethodBindPtr! = nil
    static var _method__integrate_forces_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_space_state_0: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PhysicsDirectBodyState2DExtension = StringName(from: "PhysicsDirectBodyState2DExtension")

        
    }

    public func _get_total_gravity() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_total_gravity_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func _get_total_linear_damp() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_total_linear_damp_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func _get_total_angular_damp() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_total_angular_damp_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func _get_center_of_mass() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_center_of_mass_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func _get_center_of_mass_local() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_center_of_mass_local_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func _get_inverse_mass() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_inverse_mass_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func _get_inverse_inertia() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_inverse_inertia_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func _set_linear_velocity(velocity: Vector2)  {
        let velocity_native = velocity._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(velocity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__set_linear_velocity_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _get_linear_velocity() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_linear_velocity_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func _set_angular_velocity(velocity: Float64)  {
        withUnsafePointer(to: velocity) { velocity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(velocity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__set_angular_velocity_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _get_angular_velocity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_angular_velocity_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func _set_transform(transform: Transform2D)  {
        let transform_native = transform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__set_transform_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _get_transform() -> Transform2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_transform_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(from: __resPtr.pointee)
    }
    public func _get_velocity_at_local_position(local_position: Vector2) -> Vector2 {
        let local_position_native = local_position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(local_position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_velocity_at_local_position_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func _apply_central_impulse(impulse: Vector2)  {
        let impulse_native = impulse._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(impulse_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__apply_central_impulse_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _apply_impulse(impulse: Vector2, position: Vector2)  {
        let position_native = position._native_ptr()
        let impulse_native = impulse._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(impulse_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__apply_impulse_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _apply_torque_impulse(impulse: Float64)  {
        withUnsafePointer(to: impulse) { impulse_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(impulse_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__apply_torque_impulse_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _apply_central_force(force: Vector2)  {
        let force_native = force._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__apply_central_force_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _apply_force(force: Vector2, position: Vector2)  {
        let position_native = position._native_ptr()
        let force_native = force._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__apply_force_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _apply_torque(torque: Float64)  {
        withUnsafePointer(to: torque) { torque_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(torque_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__apply_torque_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _add_constant_central_force(force: Vector2)  {
        let force_native = force._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__add_constant_central_force_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _add_constant_force(force: Vector2, position: Vector2)  {
        let position_native = position._native_ptr()
        let force_native = force._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__add_constant_force_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _add_constant_torque(torque: Float64)  {
        withUnsafePointer(to: torque) { torque_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(torque_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__add_constant_torque_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _set_constant_force(force: Vector2)  {
        let force_native = force._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__set_constant_force_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _get_constant_force() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_constant_force_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func _set_constant_torque(torque: Float64)  {
        withUnsafePointer(to: torque) { torque_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(torque_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__set_constant_torque_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _get_constant_torque() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_constant_torque_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func _set_sleep_state(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__set_sleep_state_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _is_sleeping() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__is_sleeping_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _get_contact_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_contact_count_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _get_contact_local_position(contact_idx: Int64) -> Vector2 {
        withUnsafePointer(to: contact_idx) { contact_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(contact_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_contact_local_position_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
    }
    public func _get_contact_local_normal(contact_idx: Int64) -> Vector2 {
        withUnsafePointer(to: contact_idx) { contact_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(contact_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_contact_local_normal_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
    }
    public func _get_contact_local_shape(contact_idx: Int64) -> Int64 {
        withUnsafePointer(to: contact_idx) { contact_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(contact_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_contact_local_shape_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func _get_contact_collider(contact_idx: Int64) -> RID {
        withUnsafePointer(to: contact_idx) { contact_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(contact_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_contact_collider_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
        }
    }
    public func _get_contact_collider_position(contact_idx: Int64) -> Vector2 {
        withUnsafePointer(to: contact_idx) { contact_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(contact_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_contact_collider_position_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
    }
    public func _get_contact_collider_id(contact_idx: Int64) -> Int64 {
        withUnsafePointer(to: contact_idx) { contact_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(contact_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_contact_collider_id_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func _get_contact_collider_object(contact_idx: Int64) -> Object {
        withUnsafePointer(to: contact_idx) { contact_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(contact_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_contact_collider_object_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Object(from: __resPtr.pointee)
        }
    }
    public func _get_contact_collider_shape(contact_idx: Int64) -> Int64 {
        withUnsafePointer(to: contact_idx) { contact_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(contact_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_contact_collider_shape_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func _get_contact_collider_velocity_at_position(contact_idx: Int64) -> Vector2 {
        withUnsafePointer(to: contact_idx) { contact_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(contact_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_contact_collider_velocity_at_position_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
    }
    public func _get_contact_impulse(contact_idx: Int64) -> Vector2 {
        withUnsafePointer(to: contact_idx) { contact_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(contact_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_contact_impulse_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
    }
    public func _get_step() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_step_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func _integrate_forces()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__integrate_forces_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _get_space_state() -> PhysicsDirectSpaceState2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_space_state_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsDirectSpaceState2D(from: __resPtr.pointee)
    }
}