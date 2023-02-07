import godot_native

fileprivate var __godot_name_CollisionObject3D: StringName! = nil

/// Base node for collision objects.
/// 
/// CollisionObject3D is the base class for physics objects. It can hold any number of collision [Shape3D]s. Each shape must be assigned to a [i]shape owner[/i]. The CollisionObject3D can have any number of shape owners. Shape owners are not nodes and do not appear in the editor, but are accessible through code using the [code]shape_owner_*[/code] methods.
///  
/// [b]Warning:[/b] With a non-uniform scale this node will probably not function as expected. Please make sure to keep its scale uniform (i.e. the same on all axes), and change the size(s) of its collision shape(s) instead.
public class CollisionObject3D : Node3D {

    public enum DisableMode : Int32 {
        case DISABLE_MODE_REMOVE = 0
        case DISABLE_MODE_MAKE_STATIC = 1
        case DISABLE_MODE_KEEP_ACTIVE = 2
    }

    public override class var __godot_name: StringName { __godot_name_CollisionObject3D }

    static var _method__input_event_0: GDExtensionMethodBindPtr! = nil
    static var _method__mouse_enter_0: GDExtensionMethodBindPtr! = nil
    static var _method__mouse_exit_0: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_layer_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_layer_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_layer_value_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_layer_value_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_mask_value_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_mask_value_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_priority_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_priority_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_disable_mode_1623620376: GDExtensionMethodBindPtr! = nil
    static var _method_get_disable_mode_410164780: GDExtensionMethodBindPtr! = nil
    static var _method_set_ray_pickable_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_ray_pickable_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_capture_input_on_drag_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_capture_input_on_drag_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_rid_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_create_shape_owner_3429307534: GDExtensionMethodBindPtr! = nil
    static var _method_remove_shape_owner_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_shape_owners_969006518: GDExtensionMethodBindPtr! = nil
    static var _method_shape_owner_set_transform_3616898986: GDExtensionMethodBindPtr! = nil
    static var _method_shape_owner_get_transform_1965739696: GDExtensionMethodBindPtr! = nil
    static var _method_shape_owner_get_owner_3332903315: GDExtensionMethodBindPtr! = nil
    static var _method_shape_owner_set_disabled_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_shape_owner_disabled_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_shape_owner_add_shape_2566676345: GDExtensionMethodBindPtr! = nil
    static var _method_shape_owner_get_shape_count_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_shape_owner_get_shape_4015519174: GDExtensionMethodBindPtr! = nil
    static var _method_shape_owner_get_shape_index_3175239445: GDExtensionMethodBindPtr! = nil
    static var _method_shape_owner_remove_shape_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_shape_owner_clear_shapes_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_shape_find_owner_923996154: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_CollisionObject3D = StringName(from: "CollisionObject3D")

        let _method_set_collision_layer_1286410249_name = StringName(from: "set_collision_layer")
        self._method_set_collision_layer_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_layer_1286410249_name._native_ptr(), 1286410249)
        assert(CollisionObject3D._method_set_collision_layer_1286410249 != nil)
        let _method_get_collision_layer_3905245786_name = StringName(from: "get_collision_layer")
        self._method_get_collision_layer_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_layer_3905245786_name._native_ptr(), 3905245786)
        assert(CollisionObject3D._method_get_collision_layer_3905245786 != nil)
        let _method_set_collision_mask_1286410249_name = StringName(from: "set_collision_mask")
        self._method_set_collision_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_mask_1286410249_name._native_ptr(), 1286410249)
        assert(CollisionObject3D._method_set_collision_mask_1286410249 != nil)
        let _method_get_collision_mask_3905245786_name = StringName(from: "get_collision_mask")
        self._method_get_collision_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_mask_3905245786_name._native_ptr(), 3905245786)
        assert(CollisionObject3D._method_get_collision_mask_3905245786 != nil)
        let _method_set_collision_layer_value_300928843_name = StringName(from: "set_collision_layer_value")
        self._method_set_collision_layer_value_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_layer_value_300928843_name._native_ptr(), 300928843)
        assert(CollisionObject3D._method_set_collision_layer_value_300928843 != nil)
        let _method_get_collision_layer_value_1116898809_name = StringName(from: "get_collision_layer_value")
        self._method_get_collision_layer_value_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_layer_value_1116898809_name._native_ptr(), 1116898809)
        assert(CollisionObject3D._method_get_collision_layer_value_1116898809 != nil)
        let _method_set_collision_mask_value_300928843_name = StringName(from: "set_collision_mask_value")
        self._method_set_collision_mask_value_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_mask_value_300928843_name._native_ptr(), 300928843)
        assert(CollisionObject3D._method_set_collision_mask_value_300928843 != nil)
        let _method_get_collision_mask_value_1116898809_name = StringName(from: "get_collision_mask_value")
        self._method_get_collision_mask_value_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_mask_value_1116898809_name._native_ptr(), 1116898809)
        assert(CollisionObject3D._method_get_collision_mask_value_1116898809 != nil)
        let _method_set_collision_priority_373806689_name = StringName(from: "set_collision_priority")
        self._method_set_collision_priority_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_priority_373806689_name._native_ptr(), 373806689)
        assert(CollisionObject3D._method_set_collision_priority_373806689 != nil)
        let _method_get_collision_priority_1740695150_name = StringName(from: "get_collision_priority")
        self._method_get_collision_priority_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_priority_1740695150_name._native_ptr(), 1740695150)
        assert(CollisionObject3D._method_get_collision_priority_1740695150 != nil)
        let _method_set_disable_mode_1623620376_name = StringName(from: "set_disable_mode")
        self._method_set_disable_mode_1623620376 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_disable_mode_1623620376_name._native_ptr(), 1623620376)
        assert(CollisionObject3D._method_set_disable_mode_1623620376 != nil)
        let _method_get_disable_mode_410164780_name = StringName(from: "get_disable_mode")
        self._method_get_disable_mode_410164780 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_disable_mode_410164780_name._native_ptr(), 410164780)
        assert(CollisionObject3D._method_get_disable_mode_410164780 != nil)
        let _method_set_ray_pickable_2586408642_name = StringName(from: "set_ray_pickable")
        self._method_set_ray_pickable_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ray_pickable_2586408642_name._native_ptr(), 2586408642)
        assert(CollisionObject3D._method_set_ray_pickable_2586408642 != nil)
        let _method_is_ray_pickable_36873697_name = StringName(from: "is_ray_pickable")
        self._method_is_ray_pickable_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_ray_pickable_36873697_name._native_ptr(), 36873697)
        assert(CollisionObject3D._method_is_ray_pickable_36873697 != nil)
        let _method_set_capture_input_on_drag_2586408642_name = StringName(from: "set_capture_input_on_drag")
        self._method_set_capture_input_on_drag_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_capture_input_on_drag_2586408642_name._native_ptr(), 2586408642)
        assert(CollisionObject3D._method_set_capture_input_on_drag_2586408642 != nil)
        let _method_get_capture_input_on_drag_36873697_name = StringName(from: "get_capture_input_on_drag")
        self._method_get_capture_input_on_drag_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_capture_input_on_drag_36873697_name._native_ptr(), 36873697)
        assert(CollisionObject3D._method_get_capture_input_on_drag_36873697 != nil)
        let _method_get_rid_2944877500_name = StringName(from: "get_rid")
        self._method_get_rid_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rid_2944877500_name._native_ptr(), 2944877500)
        assert(CollisionObject3D._method_get_rid_2944877500 != nil)
        let _method_create_shape_owner_3429307534_name = StringName(from: "create_shape_owner")
        self._method_create_shape_owner_3429307534 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_shape_owner_3429307534_name._native_ptr(), 3429307534)
        assert(CollisionObject3D._method_create_shape_owner_3429307534 != nil)
        let _method_remove_shape_owner_1286410249_name = StringName(from: "remove_shape_owner")
        self._method_remove_shape_owner_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_shape_owner_1286410249_name._native_ptr(), 1286410249)
        assert(CollisionObject3D._method_remove_shape_owner_1286410249 != nil)
        let _method_get_shape_owners_969006518_name = StringName(from: "get_shape_owners")
        self._method_get_shape_owners_969006518 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shape_owners_969006518_name._native_ptr(), 969006518)
        assert(CollisionObject3D._method_get_shape_owners_969006518 != nil)
        let _method_shape_owner_set_transform_3616898986_name = StringName(from: "shape_owner_set_transform")
        self._method_shape_owner_set_transform_3616898986 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shape_owner_set_transform_3616898986_name._native_ptr(), 3616898986)
        assert(CollisionObject3D._method_shape_owner_set_transform_3616898986 != nil)
        let _method_shape_owner_get_transform_1965739696_name = StringName(from: "shape_owner_get_transform")
        self._method_shape_owner_get_transform_1965739696 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shape_owner_get_transform_1965739696_name._native_ptr(), 1965739696)
        assert(CollisionObject3D._method_shape_owner_get_transform_1965739696 != nil)
        let _method_shape_owner_get_owner_3332903315_name = StringName(from: "shape_owner_get_owner")
        self._method_shape_owner_get_owner_3332903315 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shape_owner_get_owner_3332903315_name._native_ptr(), 3332903315)
        assert(CollisionObject3D._method_shape_owner_get_owner_3332903315 != nil)
        let _method_shape_owner_set_disabled_300928843_name = StringName(from: "shape_owner_set_disabled")
        self._method_shape_owner_set_disabled_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shape_owner_set_disabled_300928843_name._native_ptr(), 300928843)
        assert(CollisionObject3D._method_shape_owner_set_disabled_300928843 != nil)
        let _method_is_shape_owner_disabled_1116898809_name = StringName(from: "is_shape_owner_disabled")
        self._method_is_shape_owner_disabled_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_shape_owner_disabled_1116898809_name._native_ptr(), 1116898809)
        assert(CollisionObject3D._method_is_shape_owner_disabled_1116898809 != nil)
        let _method_shape_owner_add_shape_2566676345_name = StringName(from: "shape_owner_add_shape")
        self._method_shape_owner_add_shape_2566676345 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shape_owner_add_shape_2566676345_name._native_ptr(), 2566676345)
        assert(CollisionObject3D._method_shape_owner_add_shape_2566676345 != nil)
        let _method_shape_owner_get_shape_count_923996154_name = StringName(from: "shape_owner_get_shape_count")
        self._method_shape_owner_get_shape_count_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shape_owner_get_shape_count_923996154_name._native_ptr(), 923996154)
        assert(CollisionObject3D._method_shape_owner_get_shape_count_923996154 != nil)
        let _method_shape_owner_get_shape_4015519174_name = StringName(from: "shape_owner_get_shape")
        self._method_shape_owner_get_shape_4015519174 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shape_owner_get_shape_4015519174_name._native_ptr(), 4015519174)
        assert(CollisionObject3D._method_shape_owner_get_shape_4015519174 != nil)
        let _method_shape_owner_get_shape_index_3175239445_name = StringName(from: "shape_owner_get_shape_index")
        self._method_shape_owner_get_shape_index_3175239445 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shape_owner_get_shape_index_3175239445_name._native_ptr(), 3175239445)
        assert(CollisionObject3D._method_shape_owner_get_shape_index_3175239445 != nil)
        let _method_shape_owner_remove_shape_3937882851_name = StringName(from: "shape_owner_remove_shape")
        self._method_shape_owner_remove_shape_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shape_owner_remove_shape_3937882851_name._native_ptr(), 3937882851)
        assert(CollisionObject3D._method_shape_owner_remove_shape_3937882851 != nil)
        let _method_shape_owner_clear_shapes_1286410249_name = StringName(from: "shape_owner_clear_shapes")
        self._method_shape_owner_clear_shapes_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shape_owner_clear_shapes_1286410249_name._native_ptr(), 1286410249)
        assert(CollisionObject3D._method_shape_owner_clear_shapes_1286410249 != nil)
        let _method_shape_find_owner_923996154_name = StringName(from: "shape_find_owner")
        self._method_shape_find_owner_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shape_find_owner_923996154_name._native_ptr(), 923996154)
        assert(CollisionObject3D._method_shape_find_owner_923996154 != nil)
    }

    public func _input_event(camera: Camera3D, event: InputEvent, position: Vector3, normal: Vector3, shape_idx: Int64)  {
        withUnsafePointer(to: shape_idx) { shape_idx_native in
        let normal_native = normal._native_ptr()
        let position_native = position._native_ptr()
        let event_native = event._native_ptr()
        let camera_native = camera._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(camera_native), .init(event_native), .init(position_native), .init(normal_native), .init(shape_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__input_event_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _mouse_enter()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__mouse_enter_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _mouse_exit()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__mouse_exit_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_collision_layer(layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
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
    public func set_collision_mask(mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mask_native)
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
    public func set_collision_priority(priority: Float64)  {
        withUnsafePointer(to: priority) { priority_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(priority_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collision_priority_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_collision_priority() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_priority_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_disable_mode(mode: CollisionObject3D.DisableMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_disable_mode_1623620376,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_disable_mode() -> CollisionObject3D.DisableMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_disable_mode_410164780,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CollisionObject3D.DisableMode(from: __resPtr.pointee)
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
    public func set_capture_input_on_drag(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_capture_input_on_drag_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_capture_input_on_drag() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_capture_input_on_drag_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_rid() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rid_2944877500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func create_shape_owner(owner: Object) -> Int64 {
        let owner_native = owner._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(owner_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_shape_owner_3429307534,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func remove_shape_owner(owner_id: Int64)  {
        withUnsafePointer(to: owner_id) { owner_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(owner_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_shape_owner_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_shape_owners() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shape_owners_969006518,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
    }
    public func shape_owner_set_transform(owner_id: Int64, transform: Transform3D)  {
        withUnsafePointer(to: owner_id) { owner_id_native in
        let transform_native = transform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(owner_id_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shape_owner_set_transform_3616898986,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func shape_owner_get_transform(owner_id: Int64) -> Transform3D {
        withUnsafePointer(to: owner_id) { owner_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(owner_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shape_owner_get_transform_1965739696,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
        }
    }
    public func shape_owner_get_owner(owner_id: Int64) -> Object {
        withUnsafePointer(to: owner_id) { owner_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(owner_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shape_owner_get_owner_3332903315,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Object(from: __resPtr.pointee)
        }
    }
    public func shape_owner_set_disabled(owner_id: Int64, disabled: UInt8)  {
        withUnsafePointer(to: disabled) { disabled_native in
        withUnsafePointer(to: owner_id) { owner_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(owner_id_native), .init(disabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shape_owner_set_disabled_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func is_shape_owner_disabled(owner_id: Int64) -> UInt8 {
        withUnsafePointer(to: owner_id) { owner_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(owner_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_shape_owner_disabled_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func shape_owner_add_shape(owner_id: Int64, shape: Shape3D)  {
        withUnsafePointer(to: owner_id) { owner_id_native in
        let shape_native = shape._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(owner_id_native), .init(shape_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shape_owner_add_shape_2566676345,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func shape_owner_get_shape_count(owner_id: Int64) -> Int64 {
        withUnsafePointer(to: owner_id) { owner_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(owner_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shape_owner_get_shape_count_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func shape_owner_get_shape(owner_id: Int64, shape_id: Int64) -> Shape3D {
        withUnsafePointer(to: shape_id) { shape_id_native in
        withUnsafePointer(to: owner_id) { owner_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(owner_id_native), .init(shape_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shape_owner_get_shape_4015519174,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Shape3D(from: __resPtr.pointee)
        }
        }
    }
    public func shape_owner_get_shape_index(owner_id: Int64, shape_id: Int64) -> Int64 {
        withUnsafePointer(to: shape_id) { shape_id_native in
        withUnsafePointer(to: owner_id) { owner_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(owner_id_native), .init(shape_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shape_owner_get_shape_index_3175239445,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
    }
    public func shape_owner_remove_shape(owner_id: Int64, shape_id: Int64)  {
        withUnsafePointer(to: shape_id) { shape_id_native in
        withUnsafePointer(to: owner_id) { owner_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(owner_id_native), .init(shape_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shape_owner_remove_shape_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func shape_owner_clear_shapes(owner_id: Int64)  {
        withUnsafePointer(to: owner_id) { owner_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(owner_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shape_owner_clear_shapes_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func shape_find_owner(shape_index: Int64) -> Int64 {
        withUnsafePointer(to: shape_index) { shape_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shape_find_owner_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
}