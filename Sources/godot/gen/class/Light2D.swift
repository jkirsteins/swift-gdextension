import godot_native

fileprivate var __godot_name_Light2D: StringName! = nil

/// Casts light in a 2D environment.
/// 
/// Casts light in a 2D environment. A light is defined as a color, an energy value, a mode (see constants), and various other parameters (range and shadows-related).
public class Light2D : Node2D {

    public enum ShadowFilter : Int32 {
        case SHADOW_FILTER_NONE = 0
        case SHADOW_FILTER_PCF5 = 1
        case SHADOW_FILTER_PCF13 = 2
    }
    public enum BlendMode : Int32 {
        case BLEND_MODE_ADD = 0
        case BLEND_MODE_SUB = 1
        case BLEND_MODE_MIX = 2
    }

    public override class var __godot_name: StringName { __godot_name_Light2D }

    static var _method_set_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_editor_only_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_editor_only_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_energy_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_energy_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_z_range_min_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_z_range_min_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_z_range_max_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_z_range_max_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_layer_range_min_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_layer_range_min_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_layer_range_max_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_layer_range_max_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_cull_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_cull_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_item_shadow_cull_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_item_shadow_cull_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_shadow_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_shadow_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_shadow_smooth_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_shadow_smooth_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_shadow_filter_3209356555: GDExtensionMethodBindPtr! = nil
    static var _method_get_shadow_filter_1973619177: GDExtensionMethodBindPtr! = nil
    static var _method_set_shadow_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_shadow_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_blend_mode_2916638796: GDExtensionMethodBindPtr! = nil
    static var _method_get_blend_mode_936255250: GDExtensionMethodBindPtr! = nil
    static var _method_set_height_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_height_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Light2D = StringName(from: "Light2D")

        let _method_set_enabled_2586408642_name = StringName(from: "set_enabled")
        self._method_set_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Light2D._method_set_enabled_2586408642 != nil)
        let _method_is_enabled_36873697_name = StringName(from: "is_enabled")
        self._method_is_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_enabled_36873697_name._native_ptr(), 36873697)
        assert(Light2D._method_is_enabled_36873697 != nil)
        let _method_set_editor_only_2586408642_name = StringName(from: "set_editor_only")
        self._method_set_editor_only_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_editor_only_2586408642_name._native_ptr(), 2586408642)
        assert(Light2D._method_set_editor_only_2586408642 != nil)
        let _method_is_editor_only_36873697_name = StringName(from: "is_editor_only")
        self._method_is_editor_only_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_editor_only_36873697_name._native_ptr(), 36873697)
        assert(Light2D._method_is_editor_only_36873697 != nil)
        let _method_set_color_2920490490_name = StringName(from: "set_color")
        self._method_set_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_color_2920490490_name._native_ptr(), 2920490490)
        assert(Light2D._method_set_color_2920490490 != nil)
        let _method_get_color_3444240500_name = StringName(from: "get_color")
        self._method_get_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_color_3444240500_name._native_ptr(), 3444240500)
        assert(Light2D._method_get_color_3444240500 != nil)
        let _method_set_energy_373806689_name = StringName(from: "set_energy")
        self._method_set_energy_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_energy_373806689_name._native_ptr(), 373806689)
        assert(Light2D._method_set_energy_373806689 != nil)
        let _method_get_energy_1740695150_name = StringName(from: "get_energy")
        self._method_get_energy_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_energy_1740695150_name._native_ptr(), 1740695150)
        assert(Light2D._method_get_energy_1740695150 != nil)
        let _method_set_z_range_min_1286410249_name = StringName(from: "set_z_range_min")
        self._method_set_z_range_min_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_z_range_min_1286410249_name._native_ptr(), 1286410249)
        assert(Light2D._method_set_z_range_min_1286410249 != nil)
        let _method_get_z_range_min_3905245786_name = StringName(from: "get_z_range_min")
        self._method_get_z_range_min_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_z_range_min_3905245786_name._native_ptr(), 3905245786)
        assert(Light2D._method_get_z_range_min_3905245786 != nil)
        let _method_set_z_range_max_1286410249_name = StringName(from: "set_z_range_max")
        self._method_set_z_range_max_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_z_range_max_1286410249_name._native_ptr(), 1286410249)
        assert(Light2D._method_set_z_range_max_1286410249 != nil)
        let _method_get_z_range_max_3905245786_name = StringName(from: "get_z_range_max")
        self._method_get_z_range_max_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_z_range_max_3905245786_name._native_ptr(), 3905245786)
        assert(Light2D._method_get_z_range_max_3905245786 != nil)
        let _method_set_layer_range_min_1286410249_name = StringName(from: "set_layer_range_min")
        self._method_set_layer_range_min_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_layer_range_min_1286410249_name._native_ptr(), 1286410249)
        assert(Light2D._method_set_layer_range_min_1286410249 != nil)
        let _method_get_layer_range_min_3905245786_name = StringName(from: "get_layer_range_min")
        self._method_get_layer_range_min_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_layer_range_min_3905245786_name._native_ptr(), 3905245786)
        assert(Light2D._method_get_layer_range_min_3905245786 != nil)
        let _method_set_layer_range_max_1286410249_name = StringName(from: "set_layer_range_max")
        self._method_set_layer_range_max_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_layer_range_max_1286410249_name._native_ptr(), 1286410249)
        assert(Light2D._method_set_layer_range_max_1286410249 != nil)
        let _method_get_layer_range_max_3905245786_name = StringName(from: "get_layer_range_max")
        self._method_get_layer_range_max_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_layer_range_max_3905245786_name._native_ptr(), 3905245786)
        assert(Light2D._method_get_layer_range_max_3905245786 != nil)
        let _method_set_item_cull_mask_1286410249_name = StringName(from: "set_item_cull_mask")
        self._method_set_item_cull_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_cull_mask_1286410249_name._native_ptr(), 1286410249)
        assert(Light2D._method_set_item_cull_mask_1286410249 != nil)
        let _method_get_item_cull_mask_3905245786_name = StringName(from: "get_item_cull_mask")
        self._method_get_item_cull_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_cull_mask_3905245786_name._native_ptr(), 3905245786)
        assert(Light2D._method_get_item_cull_mask_3905245786 != nil)
        let _method_set_item_shadow_cull_mask_1286410249_name = StringName(from: "set_item_shadow_cull_mask")
        self._method_set_item_shadow_cull_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_item_shadow_cull_mask_1286410249_name._native_ptr(), 1286410249)
        assert(Light2D._method_set_item_shadow_cull_mask_1286410249 != nil)
        let _method_get_item_shadow_cull_mask_3905245786_name = StringName(from: "get_item_shadow_cull_mask")
        self._method_get_item_shadow_cull_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_item_shadow_cull_mask_3905245786_name._native_ptr(), 3905245786)
        assert(Light2D._method_get_item_shadow_cull_mask_3905245786 != nil)
        let _method_set_shadow_enabled_2586408642_name = StringName(from: "set_shadow_enabled")
        self._method_set_shadow_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shadow_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Light2D._method_set_shadow_enabled_2586408642 != nil)
        let _method_is_shadow_enabled_36873697_name = StringName(from: "is_shadow_enabled")
        self._method_is_shadow_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_shadow_enabled_36873697_name._native_ptr(), 36873697)
        assert(Light2D._method_is_shadow_enabled_36873697 != nil)
        let _method_set_shadow_smooth_373806689_name = StringName(from: "set_shadow_smooth")
        self._method_set_shadow_smooth_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shadow_smooth_373806689_name._native_ptr(), 373806689)
        assert(Light2D._method_set_shadow_smooth_373806689 != nil)
        let _method_get_shadow_smooth_1740695150_name = StringName(from: "get_shadow_smooth")
        self._method_get_shadow_smooth_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shadow_smooth_1740695150_name._native_ptr(), 1740695150)
        assert(Light2D._method_get_shadow_smooth_1740695150 != nil)
        let _method_set_shadow_filter_3209356555_name = StringName(from: "set_shadow_filter")
        self._method_set_shadow_filter_3209356555 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shadow_filter_3209356555_name._native_ptr(), 3209356555)
        assert(Light2D._method_set_shadow_filter_3209356555 != nil)
        let _method_get_shadow_filter_1973619177_name = StringName(from: "get_shadow_filter")
        self._method_get_shadow_filter_1973619177 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shadow_filter_1973619177_name._native_ptr(), 1973619177)
        assert(Light2D._method_get_shadow_filter_1973619177 != nil)
        let _method_set_shadow_color_2920490490_name = StringName(from: "set_shadow_color")
        self._method_set_shadow_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shadow_color_2920490490_name._native_ptr(), 2920490490)
        assert(Light2D._method_set_shadow_color_2920490490 != nil)
        let _method_get_shadow_color_3444240500_name = StringName(from: "get_shadow_color")
        self._method_get_shadow_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shadow_color_3444240500_name._native_ptr(), 3444240500)
        assert(Light2D._method_get_shadow_color_3444240500 != nil)
        let _method_set_blend_mode_2916638796_name = StringName(from: "set_blend_mode")
        self._method_set_blend_mode_2916638796 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_blend_mode_2916638796_name._native_ptr(), 2916638796)
        assert(Light2D._method_set_blend_mode_2916638796 != nil)
        let _method_get_blend_mode_936255250_name = StringName(from: "get_blend_mode")
        self._method_get_blend_mode_936255250 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_blend_mode_936255250_name._native_ptr(), 936255250)
        assert(Light2D._method_get_blend_mode_936255250 != nil)
        let _method_set_height_373806689_name = StringName(from: "set_height")
        self._method_set_height_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_height_373806689_name._native_ptr(), 373806689)
        assert(Light2D._method_set_height_373806689 != nil)
        let _method_get_height_1740695150_name = StringName(from: "get_height")
        self._method_get_height_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_height_1740695150_name._native_ptr(), 1740695150)
        assert(Light2D._method_get_height_1740695150 != nil)
    }

    public func set_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_editor_only(editor_only: UInt8)  {
        withUnsafePointer(to: editor_only) { editor_only_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(editor_only_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_editor_only_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_editor_only() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_editor_only_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_energy(energy: Float64)  {
        withUnsafePointer(to: energy) { energy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(energy_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_energy_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_energy() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_energy_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_z_range_min(z: Int64)  {
        withUnsafePointer(to: z) { z_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(z_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_z_range_min_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_z_range_min() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_z_range_min_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_z_range_max(z: Int64)  {
        withUnsafePointer(to: z) { z_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(z_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_z_range_max_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_z_range_max() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_z_range_max_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_layer_range_min(layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_layer_range_min_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_layer_range_min() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_layer_range_min_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_layer_range_max(layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_layer_range_max_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_layer_range_max() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_layer_range_max_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_item_cull_mask(item_cull_mask: Int64)  {
        withUnsafePointer(to: item_cull_mask) { item_cull_mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_cull_mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_cull_mask_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_item_cull_mask() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_cull_mask_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_item_shadow_cull_mask(item_shadow_cull_mask: Int64)  {
        withUnsafePointer(to: item_shadow_cull_mask) { item_shadow_cull_mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_shadow_cull_mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_item_shadow_cull_mask_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_item_shadow_cull_mask() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_item_shadow_cull_mask_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_shadow_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shadow_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_shadow_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_shadow_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_shadow_smooth(smooth: Float64)  {
        withUnsafePointer(to: smooth) { smooth_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(smooth_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shadow_smooth_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_shadow_smooth() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shadow_smooth_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_shadow_filter(filter: Light2D.ShadowFilter)  {
        withUnsafePointer(to: filter.rawValue) { filter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filter_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shadow_filter_3209356555,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_shadow_filter() -> Light2D.ShadowFilter {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shadow_filter_1973619177,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Light2D.ShadowFilter(from: __resPtr.pointee)
    }
    public func set_shadow_color(shadow_color: Color)  {
        let shadow_color_native = shadow_color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shadow_color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shadow_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_shadow_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shadow_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_blend_mode(mode: Light2D.BlendMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_blend_mode_2916638796,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_blend_mode() -> Light2D.BlendMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_blend_mode_936255250,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Light2D.BlendMode(from: __resPtr.pointee)
    }
    public func set_height(height: Float64)  {
        withUnsafePointer(to: height) { height_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(height_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_height_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_height() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_height_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}