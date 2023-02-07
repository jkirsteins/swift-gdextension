import godot_native

fileprivate var __godot_name_CSGShape3D: StringName! = nil

/// MISSING
/// 
/// MISSING
public class CSGShape3D : GeometryInstance3D {

    public enum Operation : Int32 {
        case OPERATION_UNION = 0
        case OPERATION_INTERSECTION = 1
        case OPERATION_SUBTRACTION = 2
    }

    public override class var __godot_name: StringName { __godot_name_CSGShape3D }

    static var _method_is_root_shape_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_operation_811425055: GDExtensionMethodBindPtr! = nil
    static var _method_get_operation_2662425879: GDExtensionMethodBindPtr! = nil
    static var _method_set_snap_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_snap_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_collision_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_using_collision_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_layer_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_layer_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_mask_value_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_mask_value_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_layer_value_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_layer_value_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_priority_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_priority_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_calculate_tangents_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_calculating_tangents_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_meshes_3995934104: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_CSGShape3D = StringName(from: "CSGShape3D")

        let _method_is_root_shape_36873697_name = StringName(from: "is_root_shape")
        self._method_is_root_shape_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_root_shape_36873697_name._native_ptr(), 36873697)
        assert(CSGShape3D._method_is_root_shape_36873697 != nil)
        let _method_set_operation_811425055_name = StringName(from: "set_operation")
        self._method_set_operation_811425055 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_operation_811425055_name._native_ptr(), 811425055)
        assert(CSGShape3D._method_set_operation_811425055 != nil)
        let _method_get_operation_2662425879_name = StringName(from: "get_operation")
        self._method_get_operation_2662425879 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_operation_2662425879_name._native_ptr(), 2662425879)
        assert(CSGShape3D._method_get_operation_2662425879 != nil)
        let _method_set_snap_373806689_name = StringName(from: "set_snap")
        self._method_set_snap_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_snap_373806689_name._native_ptr(), 373806689)
        assert(CSGShape3D._method_set_snap_373806689 != nil)
        let _method_get_snap_1740695150_name = StringName(from: "get_snap")
        self._method_get_snap_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_snap_1740695150_name._native_ptr(), 1740695150)
        assert(CSGShape3D._method_get_snap_1740695150 != nil)
        let _method_set_use_collision_2586408642_name = StringName(from: "set_use_collision")
        self._method_set_use_collision_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_use_collision_2586408642_name._native_ptr(), 2586408642)
        assert(CSGShape3D._method_set_use_collision_2586408642 != nil)
        let _method_is_using_collision_36873697_name = StringName(from: "is_using_collision")
        self._method_is_using_collision_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_using_collision_36873697_name._native_ptr(), 36873697)
        assert(CSGShape3D._method_is_using_collision_36873697 != nil)
        let _method_set_collision_layer_1286410249_name = StringName(from: "set_collision_layer")
        self._method_set_collision_layer_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_layer_1286410249_name._native_ptr(), 1286410249)
        assert(CSGShape3D._method_set_collision_layer_1286410249 != nil)
        let _method_get_collision_layer_3905245786_name = StringName(from: "get_collision_layer")
        self._method_get_collision_layer_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_layer_3905245786_name._native_ptr(), 3905245786)
        assert(CSGShape3D._method_get_collision_layer_3905245786 != nil)
        let _method_set_collision_mask_1286410249_name = StringName(from: "set_collision_mask")
        self._method_set_collision_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_mask_1286410249_name._native_ptr(), 1286410249)
        assert(CSGShape3D._method_set_collision_mask_1286410249 != nil)
        let _method_get_collision_mask_3905245786_name = StringName(from: "get_collision_mask")
        self._method_get_collision_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_mask_3905245786_name._native_ptr(), 3905245786)
        assert(CSGShape3D._method_get_collision_mask_3905245786 != nil)
        let _method_set_collision_mask_value_300928843_name = StringName(from: "set_collision_mask_value")
        self._method_set_collision_mask_value_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_mask_value_300928843_name._native_ptr(), 300928843)
        assert(CSGShape3D._method_set_collision_mask_value_300928843 != nil)
        let _method_get_collision_mask_value_1116898809_name = StringName(from: "get_collision_mask_value")
        self._method_get_collision_mask_value_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_mask_value_1116898809_name._native_ptr(), 1116898809)
        assert(CSGShape3D._method_get_collision_mask_value_1116898809 != nil)
        let _method_set_collision_layer_value_300928843_name = StringName(from: "set_collision_layer_value")
        self._method_set_collision_layer_value_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_layer_value_300928843_name._native_ptr(), 300928843)
        assert(CSGShape3D._method_set_collision_layer_value_300928843 != nil)
        let _method_get_collision_layer_value_1116898809_name = StringName(from: "get_collision_layer_value")
        self._method_get_collision_layer_value_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_layer_value_1116898809_name._native_ptr(), 1116898809)
        assert(CSGShape3D._method_get_collision_layer_value_1116898809 != nil)
        let _method_set_collision_priority_373806689_name = StringName(from: "set_collision_priority")
        self._method_set_collision_priority_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_priority_373806689_name._native_ptr(), 373806689)
        assert(CSGShape3D._method_set_collision_priority_373806689 != nil)
        let _method_get_collision_priority_1740695150_name = StringName(from: "get_collision_priority")
        self._method_get_collision_priority_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_priority_1740695150_name._native_ptr(), 1740695150)
        assert(CSGShape3D._method_get_collision_priority_1740695150 != nil)
        let _method_set_calculate_tangents_2586408642_name = StringName(from: "set_calculate_tangents")
        self._method_set_calculate_tangents_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_calculate_tangents_2586408642_name._native_ptr(), 2586408642)
        assert(CSGShape3D._method_set_calculate_tangents_2586408642 != nil)
        let _method_is_calculating_tangents_36873697_name = StringName(from: "is_calculating_tangents")
        self._method_is_calculating_tangents_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_calculating_tangents_36873697_name._native_ptr(), 36873697)
        assert(CSGShape3D._method_is_calculating_tangents_36873697 != nil)
        let _method_get_meshes_3995934104_name = StringName(from: "get_meshes")
        self._method_get_meshes_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_meshes_3995934104_name._native_ptr(), 3995934104)
        assert(CSGShape3D._method_get_meshes_3995934104 != nil)
    }

    public func is_root_shape() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_root_shape_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_operation(operation: CSGShape3D.Operation)  {
        withUnsafePointer(to: operation.rawValue) { operation_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(operation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_operation_811425055,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_operation() -> CSGShape3D.Operation {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_operation_2662425879,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CSGShape3D.Operation(from: __resPtr.pointee)
    }
    public func set_snap(snap: Float64)  {
        withUnsafePointer(to: snap) { snap_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(snap_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_snap_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_snap() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_snap_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_use_collision(operation: UInt8)  {
        withUnsafePointer(to: operation) { operation_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(operation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_collision_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_using_collision() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_using_collision_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
    public func set_calculate_tangents(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_calculate_tangents_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_calculating_tangents() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_calculating_tangents_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_meshes() -> Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_meshes_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(from: __resPtr.pointee)
    }
}