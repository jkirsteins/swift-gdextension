import godot_native

fileprivate var __godot_name_RDPipelineRasterizationState: StringName! = nil

/// 
/// 
/// 
open class RDPipelineRasterizationState : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RDPipelineRasterizationState }

    static var _method_set_enable_depth_clamp_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_enable_depth_clamp_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_discard_primitives_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_discard_primitives_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_wireframe_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_wireframe_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_cull_mode_2662586502: GDExtensionMethodBindPtr! = nil
    static var _method_get_cull_mode_2192484313: GDExtensionMethodBindPtr! = nil
    static var _method_set_front_face_2637251213: GDExtensionMethodBindPtr! = nil
    static var _method_get_front_face_708793786: GDExtensionMethodBindPtr! = nil
    static var _method_set_depth_bias_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_depth_bias_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_depth_bias_constant_factor_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_depth_bias_constant_factor_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_depth_bias_clamp_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_depth_bias_clamp_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_depth_bias_slope_factor_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_depth_bias_slope_factor_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_line_width_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_width_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_patch_control_points_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_patch_control_points_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_RDPipelineRasterizationState = StringName(from: "RDPipelineRasterizationState")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_enable_depth_clamp_2586408642_name = StringName(from: "set_enable_depth_clamp")
        self._method_set_enable_depth_clamp_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineRasterizationState._native_ptr(), _method_set_enable_depth_clamp_2586408642_name._native_ptr(), 2586408642)
        assert(RDPipelineRasterizationState._method_set_enable_depth_clamp_2586408642 != nil)
        let _method_get_enable_depth_clamp_36873697_name = StringName(from: "get_enable_depth_clamp")
        self._method_get_enable_depth_clamp_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineRasterizationState._native_ptr(), _method_get_enable_depth_clamp_36873697_name._native_ptr(), 36873697)
        assert(RDPipelineRasterizationState._method_get_enable_depth_clamp_36873697 != nil)
        let _method_set_discard_primitives_2586408642_name = StringName(from: "set_discard_primitives")
        self._method_set_discard_primitives_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineRasterizationState._native_ptr(), _method_set_discard_primitives_2586408642_name._native_ptr(), 2586408642)
        assert(RDPipelineRasterizationState._method_set_discard_primitives_2586408642 != nil)
        let _method_get_discard_primitives_36873697_name = StringName(from: "get_discard_primitives")
        self._method_get_discard_primitives_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineRasterizationState._native_ptr(), _method_get_discard_primitives_36873697_name._native_ptr(), 36873697)
        assert(RDPipelineRasterizationState._method_get_discard_primitives_36873697 != nil)
        let _method_set_wireframe_2586408642_name = StringName(from: "set_wireframe")
        self._method_set_wireframe_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineRasterizationState._native_ptr(), _method_set_wireframe_2586408642_name._native_ptr(), 2586408642)
        assert(RDPipelineRasterizationState._method_set_wireframe_2586408642 != nil)
        let _method_get_wireframe_36873697_name = StringName(from: "get_wireframe")
        self._method_get_wireframe_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineRasterizationState._native_ptr(), _method_get_wireframe_36873697_name._native_ptr(), 36873697)
        assert(RDPipelineRasterizationState._method_get_wireframe_36873697 != nil)
        let _method_set_cull_mode_2662586502_name = StringName(from: "set_cull_mode")
        self._method_set_cull_mode_2662586502 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineRasterizationState._native_ptr(), _method_set_cull_mode_2662586502_name._native_ptr(), 2662586502)
        assert(RDPipelineRasterizationState._method_set_cull_mode_2662586502 != nil)
        let _method_get_cull_mode_2192484313_name = StringName(from: "get_cull_mode")
        self._method_get_cull_mode_2192484313 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineRasterizationState._native_ptr(), _method_get_cull_mode_2192484313_name._native_ptr(), 2192484313)
        assert(RDPipelineRasterizationState._method_get_cull_mode_2192484313 != nil)
        let _method_set_front_face_2637251213_name = StringName(from: "set_front_face")
        self._method_set_front_face_2637251213 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineRasterizationState._native_ptr(), _method_set_front_face_2637251213_name._native_ptr(), 2637251213)
        assert(RDPipelineRasterizationState._method_set_front_face_2637251213 != nil)
        let _method_get_front_face_708793786_name = StringName(from: "get_front_face")
        self._method_get_front_face_708793786 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineRasterizationState._native_ptr(), _method_get_front_face_708793786_name._native_ptr(), 708793786)
        assert(RDPipelineRasterizationState._method_get_front_face_708793786 != nil)
        let _method_set_depth_bias_enabled_2586408642_name = StringName(from: "set_depth_bias_enabled")
        self._method_set_depth_bias_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineRasterizationState._native_ptr(), _method_set_depth_bias_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(RDPipelineRasterizationState._method_set_depth_bias_enabled_2586408642 != nil)
        let _method_get_depth_bias_enabled_36873697_name = StringName(from: "get_depth_bias_enabled")
        self._method_get_depth_bias_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineRasterizationState._native_ptr(), _method_get_depth_bias_enabled_36873697_name._native_ptr(), 36873697)
        assert(RDPipelineRasterizationState._method_get_depth_bias_enabled_36873697 != nil)
        let _method_set_depth_bias_constant_factor_373806689_name = StringName(from: "set_depth_bias_constant_factor")
        self._method_set_depth_bias_constant_factor_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineRasterizationState._native_ptr(), _method_set_depth_bias_constant_factor_373806689_name._native_ptr(), 373806689)
        assert(RDPipelineRasterizationState._method_set_depth_bias_constant_factor_373806689 != nil)
        let _method_get_depth_bias_constant_factor_1740695150_name = StringName(from: "get_depth_bias_constant_factor")
        self._method_get_depth_bias_constant_factor_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineRasterizationState._native_ptr(), _method_get_depth_bias_constant_factor_1740695150_name._native_ptr(), 1740695150)
        assert(RDPipelineRasterizationState._method_get_depth_bias_constant_factor_1740695150 != nil)
        let _method_set_depth_bias_clamp_373806689_name = StringName(from: "set_depth_bias_clamp")
        self._method_set_depth_bias_clamp_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineRasterizationState._native_ptr(), _method_set_depth_bias_clamp_373806689_name._native_ptr(), 373806689)
        assert(RDPipelineRasterizationState._method_set_depth_bias_clamp_373806689 != nil)
        let _method_get_depth_bias_clamp_1740695150_name = StringName(from: "get_depth_bias_clamp")
        self._method_get_depth_bias_clamp_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineRasterizationState._native_ptr(), _method_get_depth_bias_clamp_1740695150_name._native_ptr(), 1740695150)
        assert(RDPipelineRasterizationState._method_get_depth_bias_clamp_1740695150 != nil)
        let _method_set_depth_bias_slope_factor_373806689_name = StringName(from: "set_depth_bias_slope_factor")
        self._method_set_depth_bias_slope_factor_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineRasterizationState._native_ptr(), _method_set_depth_bias_slope_factor_373806689_name._native_ptr(), 373806689)
        assert(RDPipelineRasterizationState._method_set_depth_bias_slope_factor_373806689 != nil)
        let _method_get_depth_bias_slope_factor_1740695150_name = StringName(from: "get_depth_bias_slope_factor")
        self._method_get_depth_bias_slope_factor_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineRasterizationState._native_ptr(), _method_get_depth_bias_slope_factor_1740695150_name._native_ptr(), 1740695150)
        assert(RDPipelineRasterizationState._method_get_depth_bias_slope_factor_1740695150 != nil)
        let _method_set_line_width_373806689_name = StringName(from: "set_line_width")
        self._method_set_line_width_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineRasterizationState._native_ptr(), _method_set_line_width_373806689_name._native_ptr(), 373806689)
        assert(RDPipelineRasterizationState._method_set_line_width_373806689 != nil)
        let _method_get_line_width_1740695150_name = StringName(from: "get_line_width")
        self._method_get_line_width_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineRasterizationState._native_ptr(), _method_get_line_width_1740695150_name._native_ptr(), 1740695150)
        assert(RDPipelineRasterizationState._method_get_line_width_1740695150 != nil)
        let _method_set_patch_control_points_1286410249_name = StringName(from: "set_patch_control_points")
        self._method_set_patch_control_points_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineRasterizationState._native_ptr(), _method_set_patch_control_points_1286410249_name._native_ptr(), 1286410249)
        assert(RDPipelineRasterizationState._method_set_patch_control_points_1286410249 != nil)
        let _method_get_patch_control_points_3905245786_name = StringName(from: "get_patch_control_points")
        self._method_get_patch_control_points_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineRasterizationState._native_ptr(), _method_get_patch_control_points_3905245786_name._native_ptr(), 3905245786)
        assert(RDPipelineRasterizationState._method_get_patch_control_points_3905245786 != nil)
    }

    public func set_enable_depth_clamp(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enable_depth_clamp_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_enable_depth_clamp() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_enable_depth_clamp_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_discard_primitives(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_discard_primitives_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_discard_primitives() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_discard_primitives_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_wireframe(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_wireframe_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_wireframe() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_wireframe_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_cull_mode(p_member: RenderingDevice.PolygonCullMode)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cull_mode_2662586502,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_cull_mode() -> RenderingDevice.PolygonCullMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cull_mode_2192484313,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.PolygonCullMode(godot: __resPtr.pointee)
    }
    public func set_front_face(p_member: RenderingDevice.PolygonFrontFace)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_front_face_2637251213,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_front_face() -> RenderingDevice.PolygonFrontFace {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_front_face_708793786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.PolygonFrontFace(godot: __resPtr.pointee)
    }
    public func set_depth_bias_enabled(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_depth_bias_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_depth_bias_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_depth_bias_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_depth_bias_constant_factor(p_member: Float64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_depth_bias_constant_factor_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_depth_bias_constant_factor() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_depth_bias_constant_factor_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_depth_bias_clamp(p_member: Float64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_depth_bias_clamp_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_depth_bias_clamp() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_depth_bias_clamp_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_depth_bias_slope_factor(p_member: Float64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_depth_bias_slope_factor_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_depth_bias_slope_factor() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_depth_bias_slope_factor_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_line_width(p_member: Float64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_line_width_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_line_width() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_width_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_patch_control_points(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_patch_control_points_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_patch_control_points() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_patch_control_points_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}