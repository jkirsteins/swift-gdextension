import godot_native

fileprivate var __godot_name_CollisionObject2D: StringName! = nil

/// Base node for 2D collision objects.
/// 
/// CollisionObject2D is the base class for 2D physics objects. It can hold any number of 2D collision [Shape2D]s. Each shape must be assigned to a [i]shape owner[/i]. The CollisionObject2D can have any number of shape owners. Shape owners are not nodes and do not appear in the editor, but are accessible through code using the [code]shape_owner_*[/code] methods.
///  
/// [b]Note:[/b] Only collisions between objects within the same canvas ([Viewport] canvas or [CanvasLayer]) are supported. The behavior of collisions between objects in different canvases is undefined.
open class CollisionObject2D : Node2D {

    public enum DisableMode : Int32 {
        case DISABLE_MODE_REMOVE = 0
        case DISABLE_MODE_MAKE_STATIC = 1
        case DISABLE_MODE_KEEP_ACTIVE = 2
    }

    public override class var __godot_name: StringName { __godot_name_CollisionObject2D }

    static var _method__input_event_0: GDExtensionMethodBindPtr! = nil
    static var _method__mouse_enter_0: GDExtensionMethodBindPtr! = nil
    static var _method__mouse_exit_0: GDExtensionMethodBindPtr! = nil
    static var _method__mouse_shape_enter_0: GDExtensionMethodBindPtr! = nil
    static var _method__mouse_shape_exit_0: GDExtensionMethodBindPtr! = nil
    static var _method_get_rid_2944877500: GDExtensionMethodBindPtr! = nil
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
    static var _method_set_disable_mode_1919204045: GDExtensionMethodBindPtr! = nil
    static var _method_get_disable_mode_3172846349: GDExtensionMethodBindPtr! = nil
    static var _method_set_pickable_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_pickable_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_create_shape_owner_3429307534: GDExtensionMethodBindPtr! = nil
    static var _method_remove_shape_owner_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_shape_owners_969006518: GDExtensionMethodBindPtr! = nil
    static var _method_shape_owner_set_transform_30160968: GDExtensionMethodBindPtr! = nil
    static var _method_shape_owner_get_transform_3836996910: GDExtensionMethodBindPtr! = nil
    static var _method_shape_owner_get_owner_3332903315: GDExtensionMethodBindPtr! = nil
    static var _method_shape_owner_set_disabled_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_shape_owner_disabled_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_shape_owner_set_one_way_collision_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_shape_owner_one_way_collision_enabled_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_shape_owner_set_one_way_collision_margin_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_get_shape_owner_one_way_collision_margin_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_shape_owner_add_shape_2077425081: GDExtensionMethodBindPtr! = nil
    static var _method_shape_owner_get_shape_count_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_shape_owner_get_shape_3106725749: GDExtensionMethodBindPtr! = nil
    static var _method_shape_owner_get_shape_index_3175239445: GDExtensionMethodBindPtr! = nil
    static var _method_shape_owner_remove_shape_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_shape_owner_clear_shapes_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_shape_find_owner_923996154: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_CollisionObject2D = StringName(from: "CollisionObject2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_rid_2944877500_name = StringName(from: "get_rid")
        self._method_get_rid_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_get_rid_2944877500_name._native_ptr(), 2944877500)
        assert(CollisionObject2D._method_get_rid_2944877500 != nil)
        let _method_set_collision_layer_1286410249_name = StringName(from: "set_collision_layer")
        self._method_set_collision_layer_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_set_collision_layer_1286410249_name._native_ptr(), 1286410249)
        assert(CollisionObject2D._method_set_collision_layer_1286410249 != nil)
        let _method_get_collision_layer_3905245786_name = StringName(from: "get_collision_layer")
        self._method_get_collision_layer_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_get_collision_layer_3905245786_name._native_ptr(), 3905245786)
        assert(CollisionObject2D._method_get_collision_layer_3905245786 != nil)
        let _method_set_collision_mask_1286410249_name = StringName(from: "set_collision_mask")
        self._method_set_collision_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_set_collision_mask_1286410249_name._native_ptr(), 1286410249)
        assert(CollisionObject2D._method_set_collision_mask_1286410249 != nil)
        let _method_get_collision_mask_3905245786_name = StringName(from: "get_collision_mask")
        self._method_get_collision_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_get_collision_mask_3905245786_name._native_ptr(), 3905245786)
        assert(CollisionObject2D._method_get_collision_mask_3905245786 != nil)
        let _method_set_collision_layer_value_300928843_name = StringName(from: "set_collision_layer_value")
        self._method_set_collision_layer_value_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_set_collision_layer_value_300928843_name._native_ptr(), 300928843)
        assert(CollisionObject2D._method_set_collision_layer_value_300928843 != nil)
        let _method_get_collision_layer_value_1116898809_name = StringName(from: "get_collision_layer_value")
        self._method_get_collision_layer_value_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_get_collision_layer_value_1116898809_name._native_ptr(), 1116898809)
        assert(CollisionObject2D._method_get_collision_layer_value_1116898809 != nil)
        let _method_set_collision_mask_value_300928843_name = StringName(from: "set_collision_mask_value")
        self._method_set_collision_mask_value_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_set_collision_mask_value_300928843_name._native_ptr(), 300928843)
        assert(CollisionObject2D._method_set_collision_mask_value_300928843 != nil)
        let _method_get_collision_mask_value_1116898809_name = StringName(from: "get_collision_mask_value")
        self._method_get_collision_mask_value_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_get_collision_mask_value_1116898809_name._native_ptr(), 1116898809)
        assert(CollisionObject2D._method_get_collision_mask_value_1116898809 != nil)
        let _method_set_collision_priority_373806689_name = StringName(from: "set_collision_priority")
        self._method_set_collision_priority_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_set_collision_priority_373806689_name._native_ptr(), 373806689)
        assert(CollisionObject2D._method_set_collision_priority_373806689 != nil)
        let _method_get_collision_priority_1740695150_name = StringName(from: "get_collision_priority")
        self._method_get_collision_priority_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_get_collision_priority_1740695150_name._native_ptr(), 1740695150)
        assert(CollisionObject2D._method_get_collision_priority_1740695150 != nil)
        let _method_set_disable_mode_1919204045_name = StringName(from: "set_disable_mode")
        self._method_set_disable_mode_1919204045 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_set_disable_mode_1919204045_name._native_ptr(), 1919204045)
        assert(CollisionObject2D._method_set_disable_mode_1919204045 != nil)
        let _method_get_disable_mode_3172846349_name = StringName(from: "get_disable_mode")
        self._method_get_disable_mode_3172846349 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_get_disable_mode_3172846349_name._native_ptr(), 3172846349)
        assert(CollisionObject2D._method_get_disable_mode_3172846349 != nil)
        let _method_set_pickable_2586408642_name = StringName(from: "set_pickable")
        self._method_set_pickable_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_set_pickable_2586408642_name._native_ptr(), 2586408642)
        assert(CollisionObject2D._method_set_pickable_2586408642 != nil)
        let _method_is_pickable_36873697_name = StringName(from: "is_pickable")
        self._method_is_pickable_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_is_pickable_36873697_name._native_ptr(), 36873697)
        assert(CollisionObject2D._method_is_pickable_36873697 != nil)
        let _method_create_shape_owner_3429307534_name = StringName(from: "create_shape_owner")
        self._method_create_shape_owner_3429307534 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_create_shape_owner_3429307534_name._native_ptr(), 3429307534)
        assert(CollisionObject2D._method_create_shape_owner_3429307534 != nil)
        let _method_remove_shape_owner_1286410249_name = StringName(from: "remove_shape_owner")
        self._method_remove_shape_owner_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_remove_shape_owner_1286410249_name._native_ptr(), 1286410249)
        assert(CollisionObject2D._method_remove_shape_owner_1286410249 != nil)
        let _method_get_shape_owners_969006518_name = StringName(from: "get_shape_owners")
        self._method_get_shape_owners_969006518 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_get_shape_owners_969006518_name._native_ptr(), 969006518)
        assert(CollisionObject2D._method_get_shape_owners_969006518 != nil)
        let _method_shape_owner_set_transform_30160968_name = StringName(from: "shape_owner_set_transform")
        self._method_shape_owner_set_transform_30160968 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_shape_owner_set_transform_30160968_name._native_ptr(), 30160968)
        assert(CollisionObject2D._method_shape_owner_set_transform_30160968 != nil)
        let _method_shape_owner_get_transform_3836996910_name = StringName(from: "shape_owner_get_transform")
        self._method_shape_owner_get_transform_3836996910 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_shape_owner_get_transform_3836996910_name._native_ptr(), 3836996910)
        assert(CollisionObject2D._method_shape_owner_get_transform_3836996910 != nil)
        let _method_shape_owner_get_owner_3332903315_name = StringName(from: "shape_owner_get_owner")
        self._method_shape_owner_get_owner_3332903315 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_shape_owner_get_owner_3332903315_name._native_ptr(), 3332903315)
        assert(CollisionObject2D._method_shape_owner_get_owner_3332903315 != nil)
        let _method_shape_owner_set_disabled_300928843_name = StringName(from: "shape_owner_set_disabled")
        self._method_shape_owner_set_disabled_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_shape_owner_set_disabled_300928843_name._native_ptr(), 300928843)
        assert(CollisionObject2D._method_shape_owner_set_disabled_300928843 != nil)
        let _method_is_shape_owner_disabled_1116898809_name = StringName(from: "is_shape_owner_disabled")
        self._method_is_shape_owner_disabled_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_is_shape_owner_disabled_1116898809_name._native_ptr(), 1116898809)
        assert(CollisionObject2D._method_is_shape_owner_disabled_1116898809 != nil)
        let _method_shape_owner_set_one_way_collision_300928843_name = StringName(from: "shape_owner_set_one_way_collision")
        self._method_shape_owner_set_one_way_collision_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_shape_owner_set_one_way_collision_300928843_name._native_ptr(), 300928843)
        assert(CollisionObject2D._method_shape_owner_set_one_way_collision_300928843 != nil)
        let _method_is_shape_owner_one_way_collision_enabled_1116898809_name = StringName(from: "is_shape_owner_one_way_collision_enabled")
        self._method_is_shape_owner_one_way_collision_enabled_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_is_shape_owner_one_way_collision_enabled_1116898809_name._native_ptr(), 1116898809)
        assert(CollisionObject2D._method_is_shape_owner_one_way_collision_enabled_1116898809 != nil)
        let _method_shape_owner_set_one_way_collision_margin_1602489585_name = StringName(from: "shape_owner_set_one_way_collision_margin")
        self._method_shape_owner_set_one_way_collision_margin_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_shape_owner_set_one_way_collision_margin_1602489585_name._native_ptr(), 1602489585)
        assert(CollisionObject2D._method_shape_owner_set_one_way_collision_margin_1602489585 != nil)
        let _method_get_shape_owner_one_way_collision_margin_2339986948_name = StringName(from: "get_shape_owner_one_way_collision_margin")
        self._method_get_shape_owner_one_way_collision_margin_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_get_shape_owner_one_way_collision_margin_2339986948_name._native_ptr(), 2339986948)
        assert(CollisionObject2D._method_get_shape_owner_one_way_collision_margin_2339986948 != nil)
        let _method_shape_owner_add_shape_2077425081_name = StringName(from: "shape_owner_add_shape")
        self._method_shape_owner_add_shape_2077425081 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_shape_owner_add_shape_2077425081_name._native_ptr(), 2077425081)
        assert(CollisionObject2D._method_shape_owner_add_shape_2077425081 != nil)
        let _method_shape_owner_get_shape_count_923996154_name = StringName(from: "shape_owner_get_shape_count")
        self._method_shape_owner_get_shape_count_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_shape_owner_get_shape_count_923996154_name._native_ptr(), 923996154)
        assert(CollisionObject2D._method_shape_owner_get_shape_count_923996154 != nil)
        let _method_shape_owner_get_shape_3106725749_name = StringName(from: "shape_owner_get_shape")
        self._method_shape_owner_get_shape_3106725749 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_shape_owner_get_shape_3106725749_name._native_ptr(), 3106725749)
        assert(CollisionObject2D._method_shape_owner_get_shape_3106725749 != nil)
        let _method_shape_owner_get_shape_index_3175239445_name = StringName(from: "shape_owner_get_shape_index")
        self._method_shape_owner_get_shape_index_3175239445 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_shape_owner_get_shape_index_3175239445_name._native_ptr(), 3175239445)
        assert(CollisionObject2D._method_shape_owner_get_shape_index_3175239445 != nil)
        let _method_shape_owner_remove_shape_3937882851_name = StringName(from: "shape_owner_remove_shape")
        self._method_shape_owner_remove_shape_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_shape_owner_remove_shape_3937882851_name._native_ptr(), 3937882851)
        assert(CollisionObject2D._method_shape_owner_remove_shape_3937882851 != nil)
        let _method_shape_owner_clear_shapes_1286410249_name = StringName(from: "shape_owner_clear_shapes")
        self._method_shape_owner_clear_shapes_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_shape_owner_clear_shapes_1286410249_name._native_ptr(), 1286410249)
        assert(CollisionObject2D._method_shape_owner_clear_shapes_1286410249 != nil)
        let _method_shape_find_owner_923996154_name = StringName(from: "shape_find_owner")
        self._method_shape_find_owner_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_CollisionObject2D._native_ptr(), _method_shape_find_owner_923996154_name._native_ptr(), 923996154)
        assert(CollisionObject2D._method_shape_find_owner_923996154 != nil)
    }

    public func _input_event(viewport: Viewport, event: InputEvent, shape_idx: Int64)  {
        withUnsafePointer(to: shape_idx) { shape_idx_native in
        let event_native = event._native_ptr()
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(event_native), .init(shape_idx_native)
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
    public func _mouse_shape_enter(shape_idx: Int64)  {
        withUnsafePointer(to: shape_idx) { shape_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__mouse_shape_enter_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _mouse_shape_exit(shape_idx: Int64)  {
        withUnsafePointer(to: shape_idx) { shape_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__mouse_shape_exit_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
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
            return RID(godot: __resPtr.pointee)
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
            return Int64(godot: __resPtr.pointee)
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
            return Int64(godot: __resPtr.pointee)
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
            return UInt8(godot: __resPtr.pointee)
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
            return UInt8(godot: __resPtr.pointee)
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
            return Float64(godot: __resPtr.pointee)
    }
    public func set_disable_mode(mode: CollisionObject2D.DisableMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_disable_mode_1919204045,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_disable_mode() -> CollisionObject2D.DisableMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_disable_mode_3172846349,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CollisionObject2D.DisableMode(godot: __resPtr.pointee)
    }
    public func set_pickable(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pickable_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_pickable() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_pickable_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
            return Int64(godot: __resPtr.pointee)
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
            return PackedInt32Array(godot: __resPtr.pointee)
    }
    public func shape_owner_set_transform(owner_id: Int64, transform: Transform2D)  {
        withUnsafePointer(to: owner_id) { owner_id_native in
        let transform_native = transform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(owner_id_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shape_owner_set_transform_30160968,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func shape_owner_get_transform(owner_id: Int64) -> Transform2D {
        withUnsafePointer(to: owner_id) { owner_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(owner_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shape_owner_get_transform_3836996910,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
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
            return Object(godot: __resPtr.pointee)
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
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func shape_owner_set_one_way_collision(owner_id: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: owner_id) { owner_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(owner_id_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shape_owner_set_one_way_collision_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func is_shape_owner_one_way_collision_enabled(owner_id: Int64) -> UInt8 {
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
                    Self._method_is_shape_owner_one_way_collision_enabled_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func shape_owner_set_one_way_collision_margin(owner_id: Int64, margin: Float64)  {
        withUnsafePointer(to: margin) { margin_native in
        withUnsafePointer(to: owner_id) { owner_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(owner_id_native), .init(margin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shape_owner_set_one_way_collision_margin_1602489585,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_shape_owner_one_way_collision_margin(owner_id: Int64) -> Float64 {
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
                    Self._method_get_shape_owner_one_way_collision_margin_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func shape_owner_add_shape(owner_id: Int64, shape: Shape2D)  {
        withUnsafePointer(to: owner_id) { owner_id_native in
        let shape_native = shape._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(owner_id_native), .init(shape_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shape_owner_add_shape_2077425081,
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
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func shape_owner_get_shape(owner_id: Int64, shape_id: Int64) -> Shape2D {
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
                    Self._method_shape_owner_get_shape_3106725749,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Shape2D(godot: __resPtr.pointee)
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
            return Int64(godot: __resPtr.pointee)
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
            return Int64(godot: __resPtr.pointee)
        }
    }
}