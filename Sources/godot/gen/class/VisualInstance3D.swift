import godot_native

fileprivate var __godot_name_VisualInstance3D: StringName! = nil

/// Parent of all visual 3D nodes.
/// 
/// The [VisualInstance3D] is used to connect a resource to a visual representation. All visual 3D nodes inherit from the [VisualInstance3D]. In general, you should not access the [VisualInstance3D] properties directly as they are accessed and managed by the nodes that inherit from [VisualInstance3D]. [VisualInstance3D] is the node representation of the [RenderingServer] instance.
public class VisualInstance3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_VisualInstance3D }

    static var _method__get_aabb_0: GDExtensionMethodBindPtr! = nil
    static var _method_set_base_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_get_base_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_get_instance_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_set_layer_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_layer_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_layer_mask_value_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_layer_mask_value_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_sorting_offset_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_sorting_offset_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_sorting_use_aabb_center_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_sorting_use_aabb_center_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_aabb_1068685055: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualInstance3D = StringName(from: "VisualInstance3D")

        let _method_set_base_2722037293_name = StringName(from: "set_base")
        self._method_set_base_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_base_2722037293_name._native_ptr(), 2722037293)
        assert(VisualInstance3D._method_set_base_2722037293 != nil)
        let _method_get_base_2944877500_name = StringName(from: "get_base")
        self._method_get_base_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_base_2944877500_name._native_ptr(), 2944877500)
        assert(VisualInstance3D._method_get_base_2944877500 != nil)
        let _method_get_instance_2944877500_name = StringName(from: "get_instance")
        self._method_get_instance_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_instance_2944877500_name._native_ptr(), 2944877500)
        assert(VisualInstance3D._method_get_instance_2944877500 != nil)
        let _method_set_layer_mask_1286410249_name = StringName(from: "set_layer_mask")
        self._method_set_layer_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_layer_mask_1286410249_name._native_ptr(), 1286410249)
        assert(VisualInstance3D._method_set_layer_mask_1286410249 != nil)
        let _method_get_layer_mask_3905245786_name = StringName(from: "get_layer_mask")
        self._method_get_layer_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_layer_mask_3905245786_name._native_ptr(), 3905245786)
        assert(VisualInstance3D._method_get_layer_mask_3905245786 != nil)
        let _method_set_layer_mask_value_300928843_name = StringName(from: "set_layer_mask_value")
        self._method_set_layer_mask_value_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_layer_mask_value_300928843_name._native_ptr(), 300928843)
        assert(VisualInstance3D._method_set_layer_mask_value_300928843 != nil)
        let _method_get_layer_mask_value_1116898809_name = StringName(from: "get_layer_mask_value")
        self._method_get_layer_mask_value_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_layer_mask_value_1116898809_name._native_ptr(), 1116898809)
        assert(VisualInstance3D._method_get_layer_mask_value_1116898809 != nil)
        let _method_set_sorting_offset_373806689_name = StringName(from: "set_sorting_offset")
        self._method_set_sorting_offset_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sorting_offset_373806689_name._native_ptr(), 373806689)
        assert(VisualInstance3D._method_set_sorting_offset_373806689 != nil)
        let _method_get_sorting_offset_1740695150_name = StringName(from: "get_sorting_offset")
        self._method_get_sorting_offset_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sorting_offset_1740695150_name._native_ptr(), 1740695150)
        assert(VisualInstance3D._method_get_sorting_offset_1740695150 != nil)
        let _method_set_sorting_use_aabb_center_2586408642_name = StringName(from: "set_sorting_use_aabb_center")
        self._method_set_sorting_use_aabb_center_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sorting_use_aabb_center_2586408642_name._native_ptr(), 2586408642)
        assert(VisualInstance3D._method_set_sorting_use_aabb_center_2586408642 != nil)
        let _method_is_sorting_use_aabb_center_36873697_name = StringName(from: "is_sorting_use_aabb_center")
        self._method_is_sorting_use_aabb_center_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_sorting_use_aabb_center_36873697_name._native_ptr(), 36873697)
        assert(VisualInstance3D._method_is_sorting_use_aabb_center_36873697 != nil)
        let _method_get_aabb_1068685055_name = StringName(from: "get_aabb")
        self._method_get_aabb_1068685055 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_aabb_1068685055_name._native_ptr(), 1068685055)
        assert(VisualInstance3D._method_get_aabb_1068685055 != nil)
    }

    public func _get_aabb() -> AABB {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_aabb_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AABB(from: __resPtr.pointee)
    }
    public func set_base(base: RID)  {
        let base_native = base._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(base_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_base_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_base() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_base_2944877500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func get_instance() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_instance_2944877500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func set_layer_mask(mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_layer_mask_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_layer_mask() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_layer_mask_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_layer_mask_value(layer_number: Int64, value: UInt8)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: layer_number) { layer_number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_number_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_layer_mask_value_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_layer_mask_value(layer_number: Int64) -> UInt8 {
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
                    Self._method_get_layer_mask_value_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_sorting_offset(offset: Float64)  {
        withUnsafePointer(to: offset) { offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sorting_offset_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sorting_offset() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sorting_offset_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_sorting_use_aabb_center(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sorting_use_aabb_center_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_sorting_use_aabb_center() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_sorting_use_aabb_center_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_aabb() -> AABB {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_aabb_1068685055,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AABB(from: __resPtr.pointee)
    }
}