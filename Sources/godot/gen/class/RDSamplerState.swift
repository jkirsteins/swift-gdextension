import godot_native

fileprivate var __godot_name_RDSamplerState: StringName! = nil

/// 
/// 
/// 
public class RDSamplerState : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RDSamplerState }

    static var _method_set_mag_filter_1493420382: GDExtensionMethodBindPtr! = nil
    static var _method_get_mag_filter_2209202801: GDExtensionMethodBindPtr! = nil
    static var _method_set_min_filter_1493420382: GDExtensionMethodBindPtr! = nil
    static var _method_get_min_filter_2209202801: GDExtensionMethodBindPtr! = nil
    static var _method_set_mip_filter_1493420382: GDExtensionMethodBindPtr! = nil
    static var _method_get_mip_filter_2209202801: GDExtensionMethodBindPtr! = nil
    static var _method_set_repeat_u_246127626: GDExtensionMethodBindPtr! = nil
    static var _method_get_repeat_u_3227895872: GDExtensionMethodBindPtr! = nil
    static var _method_set_repeat_v_246127626: GDExtensionMethodBindPtr! = nil
    static var _method_get_repeat_v_3227895872: GDExtensionMethodBindPtr! = nil
    static var _method_set_repeat_w_246127626: GDExtensionMethodBindPtr! = nil
    static var _method_get_repeat_w_3227895872: GDExtensionMethodBindPtr! = nil
    static var _method_set_lod_bias_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_lod_bias_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_anisotropy_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_use_anisotropy_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_anisotropy_max_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_anisotropy_max_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_enable_compare_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_enable_compare_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_compare_op_2573711505: GDExtensionMethodBindPtr! = nil
    static var _method_get_compare_op_269730778: GDExtensionMethodBindPtr! = nil
    static var _method_set_min_lod_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_min_lod_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_lod_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_lod_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_border_color_1115869595: GDExtensionMethodBindPtr! = nil
    static var _method_get_border_color_3514246478: GDExtensionMethodBindPtr! = nil
    static var _method_set_unnormalized_uvw_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_unnormalized_uvw_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_RDSamplerState = StringName(from: "RDSamplerState")

        let _method_set_mag_filter_1493420382_name = StringName(from: "set_mag_filter")
        self._method_set_mag_filter_1493420382 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_mag_filter_1493420382_name._native_ptr(), 1493420382)
        assert(RDSamplerState._method_set_mag_filter_1493420382 != nil)
        let _method_get_mag_filter_2209202801_name = StringName(from: "get_mag_filter")
        self._method_get_mag_filter_2209202801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_mag_filter_2209202801_name._native_ptr(), 2209202801)
        assert(RDSamplerState._method_get_mag_filter_2209202801 != nil)
        let _method_set_min_filter_1493420382_name = StringName(from: "set_min_filter")
        self._method_set_min_filter_1493420382 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_min_filter_1493420382_name._native_ptr(), 1493420382)
        assert(RDSamplerState._method_set_min_filter_1493420382 != nil)
        let _method_get_min_filter_2209202801_name = StringName(from: "get_min_filter")
        self._method_get_min_filter_2209202801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_min_filter_2209202801_name._native_ptr(), 2209202801)
        assert(RDSamplerState._method_get_min_filter_2209202801 != nil)
        let _method_set_mip_filter_1493420382_name = StringName(from: "set_mip_filter")
        self._method_set_mip_filter_1493420382 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_mip_filter_1493420382_name._native_ptr(), 1493420382)
        assert(RDSamplerState._method_set_mip_filter_1493420382 != nil)
        let _method_get_mip_filter_2209202801_name = StringName(from: "get_mip_filter")
        self._method_get_mip_filter_2209202801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_mip_filter_2209202801_name._native_ptr(), 2209202801)
        assert(RDSamplerState._method_get_mip_filter_2209202801 != nil)
        let _method_set_repeat_u_246127626_name = StringName(from: "set_repeat_u")
        self._method_set_repeat_u_246127626 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_repeat_u_246127626_name._native_ptr(), 246127626)
        assert(RDSamplerState._method_set_repeat_u_246127626 != nil)
        let _method_get_repeat_u_3227895872_name = StringName(from: "get_repeat_u")
        self._method_get_repeat_u_3227895872 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_repeat_u_3227895872_name._native_ptr(), 3227895872)
        assert(RDSamplerState._method_get_repeat_u_3227895872 != nil)
        let _method_set_repeat_v_246127626_name = StringName(from: "set_repeat_v")
        self._method_set_repeat_v_246127626 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_repeat_v_246127626_name._native_ptr(), 246127626)
        assert(RDSamplerState._method_set_repeat_v_246127626 != nil)
        let _method_get_repeat_v_3227895872_name = StringName(from: "get_repeat_v")
        self._method_get_repeat_v_3227895872 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_repeat_v_3227895872_name._native_ptr(), 3227895872)
        assert(RDSamplerState._method_get_repeat_v_3227895872 != nil)
        let _method_set_repeat_w_246127626_name = StringName(from: "set_repeat_w")
        self._method_set_repeat_w_246127626 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_repeat_w_246127626_name._native_ptr(), 246127626)
        assert(RDSamplerState._method_set_repeat_w_246127626 != nil)
        let _method_get_repeat_w_3227895872_name = StringName(from: "get_repeat_w")
        self._method_get_repeat_w_3227895872 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_repeat_w_3227895872_name._native_ptr(), 3227895872)
        assert(RDSamplerState._method_get_repeat_w_3227895872 != nil)
        let _method_set_lod_bias_373806689_name = StringName(from: "set_lod_bias")
        self._method_set_lod_bias_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_lod_bias_373806689_name._native_ptr(), 373806689)
        assert(RDSamplerState._method_set_lod_bias_373806689 != nil)
        let _method_get_lod_bias_1740695150_name = StringName(from: "get_lod_bias")
        self._method_get_lod_bias_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_lod_bias_1740695150_name._native_ptr(), 1740695150)
        assert(RDSamplerState._method_get_lod_bias_1740695150 != nil)
        let _method_set_use_anisotropy_2586408642_name = StringName(from: "set_use_anisotropy")
        self._method_set_use_anisotropy_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_use_anisotropy_2586408642_name._native_ptr(), 2586408642)
        assert(RDSamplerState._method_set_use_anisotropy_2586408642 != nil)
        let _method_get_use_anisotropy_36873697_name = StringName(from: "get_use_anisotropy")
        self._method_get_use_anisotropy_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_use_anisotropy_36873697_name._native_ptr(), 36873697)
        assert(RDSamplerState._method_get_use_anisotropy_36873697 != nil)
        let _method_set_anisotropy_max_373806689_name = StringName(from: "set_anisotropy_max")
        self._method_set_anisotropy_max_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_anisotropy_max_373806689_name._native_ptr(), 373806689)
        assert(RDSamplerState._method_set_anisotropy_max_373806689 != nil)
        let _method_get_anisotropy_max_1740695150_name = StringName(from: "get_anisotropy_max")
        self._method_get_anisotropy_max_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_anisotropy_max_1740695150_name._native_ptr(), 1740695150)
        assert(RDSamplerState._method_get_anisotropy_max_1740695150 != nil)
        let _method_set_enable_compare_2586408642_name = StringName(from: "set_enable_compare")
        self._method_set_enable_compare_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_enable_compare_2586408642_name._native_ptr(), 2586408642)
        assert(RDSamplerState._method_set_enable_compare_2586408642 != nil)
        let _method_get_enable_compare_36873697_name = StringName(from: "get_enable_compare")
        self._method_get_enable_compare_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_enable_compare_36873697_name._native_ptr(), 36873697)
        assert(RDSamplerState._method_get_enable_compare_36873697 != nil)
        let _method_set_compare_op_2573711505_name = StringName(from: "set_compare_op")
        self._method_set_compare_op_2573711505 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_compare_op_2573711505_name._native_ptr(), 2573711505)
        assert(RDSamplerState._method_set_compare_op_2573711505 != nil)
        let _method_get_compare_op_269730778_name = StringName(from: "get_compare_op")
        self._method_get_compare_op_269730778 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_compare_op_269730778_name._native_ptr(), 269730778)
        assert(RDSamplerState._method_get_compare_op_269730778 != nil)
        let _method_set_min_lod_373806689_name = StringName(from: "set_min_lod")
        self._method_set_min_lod_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_min_lod_373806689_name._native_ptr(), 373806689)
        assert(RDSamplerState._method_set_min_lod_373806689 != nil)
        let _method_get_min_lod_1740695150_name = StringName(from: "get_min_lod")
        self._method_get_min_lod_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_min_lod_1740695150_name._native_ptr(), 1740695150)
        assert(RDSamplerState._method_get_min_lod_1740695150 != nil)
        let _method_set_max_lod_373806689_name = StringName(from: "set_max_lod")
        self._method_set_max_lod_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_max_lod_373806689_name._native_ptr(), 373806689)
        assert(RDSamplerState._method_set_max_lod_373806689 != nil)
        let _method_get_max_lod_1740695150_name = StringName(from: "get_max_lod")
        self._method_get_max_lod_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_max_lod_1740695150_name._native_ptr(), 1740695150)
        assert(RDSamplerState._method_get_max_lod_1740695150 != nil)
        let _method_set_border_color_1115869595_name = StringName(from: "set_border_color")
        self._method_set_border_color_1115869595 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_border_color_1115869595_name._native_ptr(), 1115869595)
        assert(RDSamplerState._method_set_border_color_1115869595 != nil)
        let _method_get_border_color_3514246478_name = StringName(from: "get_border_color")
        self._method_get_border_color_3514246478 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_border_color_3514246478_name._native_ptr(), 3514246478)
        assert(RDSamplerState._method_get_border_color_3514246478 != nil)
        let _method_set_unnormalized_uvw_2586408642_name = StringName(from: "set_unnormalized_uvw")
        self._method_set_unnormalized_uvw_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_unnormalized_uvw_2586408642_name._native_ptr(), 2586408642)
        assert(RDSamplerState._method_set_unnormalized_uvw_2586408642 != nil)
        let _method_get_unnormalized_uvw_36873697_name = StringName(from: "get_unnormalized_uvw")
        self._method_get_unnormalized_uvw_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_unnormalized_uvw_36873697_name._native_ptr(), 36873697)
        assert(RDSamplerState._method_get_unnormalized_uvw_36873697 != nil)
    }

    public func set_mag_filter(p_member: RenderingDevice.SamplerFilter)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mag_filter_1493420382,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_mag_filter() -> RenderingDevice.SamplerFilter {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mag_filter_2209202801,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.SamplerFilter(from: __resPtr.pointee)
    }
    public func set_min_filter(p_member: RenderingDevice.SamplerFilter)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_min_filter_1493420382,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_min_filter() -> RenderingDevice.SamplerFilter {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_min_filter_2209202801,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.SamplerFilter(from: __resPtr.pointee)
    }
    public func set_mip_filter(p_member: RenderingDevice.SamplerFilter)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mip_filter_1493420382,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_mip_filter() -> RenderingDevice.SamplerFilter {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mip_filter_2209202801,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.SamplerFilter(from: __resPtr.pointee)
    }
    public func set_repeat_u(p_member: RenderingDevice.SamplerRepeatMode)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_repeat_u_246127626,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_repeat_u() -> RenderingDevice.SamplerRepeatMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_repeat_u_3227895872,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.SamplerRepeatMode(from: __resPtr.pointee)
    }
    public func set_repeat_v(p_member: RenderingDevice.SamplerRepeatMode)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_repeat_v_246127626,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_repeat_v() -> RenderingDevice.SamplerRepeatMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_repeat_v_3227895872,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.SamplerRepeatMode(from: __resPtr.pointee)
    }
    public func set_repeat_w(p_member: RenderingDevice.SamplerRepeatMode)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_repeat_w_246127626,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_repeat_w() -> RenderingDevice.SamplerRepeatMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_repeat_w_3227895872,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.SamplerRepeatMode(from: __resPtr.pointee)
    }
    public func set_lod_bias(p_member: Float64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_lod_bias_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_lod_bias() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_lod_bias_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_use_anisotropy(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_anisotropy_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_use_anisotropy() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_use_anisotropy_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_anisotropy_max(p_member: Float64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_anisotropy_max_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_anisotropy_max() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_anisotropy_max_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_enable_compare(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enable_compare_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_enable_compare() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_enable_compare_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_compare_op(p_member: RenderingDevice.CompareOperator)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_compare_op_2573711505,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_compare_op() -> RenderingDevice.CompareOperator {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_compare_op_269730778,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.CompareOperator(from: __resPtr.pointee)
    }
    public func set_min_lod(p_member: Float64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_min_lod_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_min_lod() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_min_lod_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_max_lod(p_member: Float64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_lod_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max_lod() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_lod_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_border_color(p_member: RenderingDevice.SamplerBorderColor)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_border_color_1115869595,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_border_color() -> RenderingDevice.SamplerBorderColor {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_border_color_3514246478,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.SamplerBorderColor(from: __resPtr.pointee)
    }
    public func set_unnormalized_uvw(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_unnormalized_uvw_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_unnormalized_uvw() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_unnormalized_uvw_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}