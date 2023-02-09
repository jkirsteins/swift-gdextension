import godot_native

fileprivate var __godot_name_RDSamplerState: StringName! = nil

/// 
/// 
/// 
open class RDSamplerState : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RDSamplerState }

    static var _method_set_mag_filter_1493420382: StringName! = nil
    static var _method_get_mag_filter_2209202801: StringName! = nil
    static var _method_set_min_filter_1493420382: StringName! = nil
    static var _method_get_min_filter_2209202801: StringName! = nil
    static var _method_set_mip_filter_1493420382: StringName! = nil
    static var _method_get_mip_filter_2209202801: StringName! = nil
    static var _method_set_repeat_u_246127626: StringName! = nil
    static var _method_get_repeat_u_3227895872: StringName! = nil
    static var _method_set_repeat_v_246127626: StringName! = nil
    static var _method_get_repeat_v_3227895872: StringName! = nil
    static var _method_set_repeat_w_246127626: StringName! = nil
    static var _method_get_repeat_w_3227895872: StringName! = nil
    static var _method_set_lod_bias_373806689: StringName! = nil
    static var _method_get_lod_bias_1740695150: StringName! = nil
    static var _method_set_use_anisotropy_2586408642: StringName! = nil
    static var _method_get_use_anisotropy_36873697: StringName! = nil
    static var _method_set_anisotropy_max_373806689: StringName! = nil
    static var _method_get_anisotropy_max_1740695150: StringName! = nil
    static var _method_set_enable_compare_2586408642: StringName! = nil
    static var _method_get_enable_compare_36873697: StringName! = nil
    static var _method_set_compare_op_2573711505: StringName! = nil
    static var _method_get_compare_op_269730778: StringName! = nil
    static var _method_set_min_lod_373806689: StringName! = nil
    static var _method_get_min_lod_1740695150: StringName! = nil
    static var _method_set_max_lod_373806689: StringName! = nil
    static var _method_get_max_lod_1740695150: StringName! = nil
    static var _method_set_border_color_1115869595: StringName! = nil
    static var _method_get_border_color_3514246478: StringName! = nil
    static var _method_set_unnormalized_uvw_2586408642: StringName! = nil
    static var _method_get_unnormalized_uvw_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_RDSamplerState == nil)
        __godot_name_RDSamplerState = StringName(from: "RDSamplerState")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_mag_filter_1493420382 = StringName(from: "set_mag_filter")
        assert(self._method_set_mag_filter_1493420382 != nil)
        self._method_get_mag_filter_2209202801 = StringName(from: "get_mag_filter")
        assert(self._method_get_mag_filter_2209202801 != nil)
        self._method_set_min_filter_1493420382 = StringName(from: "set_min_filter")
        assert(self._method_set_min_filter_1493420382 != nil)
        self._method_get_min_filter_2209202801 = StringName(from: "get_min_filter")
        assert(self._method_get_min_filter_2209202801 != nil)
        self._method_set_mip_filter_1493420382 = StringName(from: "set_mip_filter")
        assert(self._method_set_mip_filter_1493420382 != nil)
        self._method_get_mip_filter_2209202801 = StringName(from: "get_mip_filter")
        assert(self._method_get_mip_filter_2209202801 != nil)
        self._method_set_repeat_u_246127626 = StringName(from: "set_repeat_u")
        assert(self._method_set_repeat_u_246127626 != nil)
        self._method_get_repeat_u_3227895872 = StringName(from: "get_repeat_u")
        assert(self._method_get_repeat_u_3227895872 != nil)
        self._method_set_repeat_v_246127626 = StringName(from: "set_repeat_v")
        assert(self._method_set_repeat_v_246127626 != nil)
        self._method_get_repeat_v_3227895872 = StringName(from: "get_repeat_v")
        assert(self._method_get_repeat_v_3227895872 != nil)
        self._method_set_repeat_w_246127626 = StringName(from: "set_repeat_w")
        assert(self._method_set_repeat_w_246127626 != nil)
        self._method_get_repeat_w_3227895872 = StringName(from: "get_repeat_w")
        assert(self._method_get_repeat_w_3227895872 != nil)
        self._method_set_lod_bias_373806689 = StringName(from: "set_lod_bias")
        assert(self._method_set_lod_bias_373806689 != nil)
        self._method_get_lod_bias_1740695150 = StringName(from: "get_lod_bias")
        assert(self._method_get_lod_bias_1740695150 != nil)
        self._method_set_use_anisotropy_2586408642 = StringName(from: "set_use_anisotropy")
        assert(self._method_set_use_anisotropy_2586408642 != nil)
        self._method_get_use_anisotropy_36873697 = StringName(from: "get_use_anisotropy")
        assert(self._method_get_use_anisotropy_36873697 != nil)
        self._method_set_anisotropy_max_373806689 = StringName(from: "set_anisotropy_max")
        assert(self._method_set_anisotropy_max_373806689 != nil)
        self._method_get_anisotropy_max_1740695150 = StringName(from: "get_anisotropy_max")
        assert(self._method_get_anisotropy_max_1740695150 != nil)
        self._method_set_enable_compare_2586408642 = StringName(from: "set_enable_compare")
        assert(self._method_set_enable_compare_2586408642 != nil)
        self._method_get_enable_compare_36873697 = StringName(from: "get_enable_compare")
        assert(self._method_get_enable_compare_36873697 != nil)
        self._method_set_compare_op_2573711505 = StringName(from: "set_compare_op")
        assert(self._method_set_compare_op_2573711505 != nil)
        self._method_get_compare_op_269730778 = StringName(from: "get_compare_op")
        assert(self._method_get_compare_op_269730778 != nil)
        self._method_set_min_lod_373806689 = StringName(from: "set_min_lod")
        assert(self._method_set_min_lod_373806689 != nil)
        self._method_get_min_lod_1740695150 = StringName(from: "get_min_lod")
        assert(self._method_get_min_lod_1740695150 != nil)
        self._method_set_max_lod_373806689 = StringName(from: "set_max_lod")
        assert(self._method_set_max_lod_373806689 != nil)
        self._method_get_max_lod_1740695150 = StringName(from: "get_max_lod")
        assert(self._method_get_max_lod_1740695150 != nil)
        self._method_set_border_color_1115869595 = StringName(from: "set_border_color")
        assert(self._method_set_border_color_1115869595 != nil)
        self._method_get_border_color_3514246478 = StringName(from: "get_border_color")
        assert(self._method_get_border_color_3514246478 != nil)
        self._method_set_unnormalized_uvw_2586408642 = StringName(from: "set_unnormalized_uvw")
        assert(self._method_set_unnormalized_uvw_2586408642 != nil)
        self._method_get_unnormalized_uvw_36873697 = StringName(from: "get_unnormalized_uvw")
        assert(self._method_get_unnormalized_uvw_36873697 != nil)
    }

    public func set_mag_filter(p_member: RenderingDevice.SamplerFilter)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_mag_filter_1493420382._native_ptr(),
                    1493420382)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_mag_filter_2209202801._native_ptr(),
                    2209202801)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.SamplerFilter(godot: __resPtr.pointee)
    }
    public func set_min_filter(p_member: RenderingDevice.SamplerFilter)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_min_filter_1493420382._native_ptr(),
                    1493420382)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_min_filter_2209202801._native_ptr(),
                    2209202801)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.SamplerFilter(godot: __resPtr.pointee)
    }
    public func set_mip_filter(p_member: RenderingDevice.SamplerFilter)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_mip_filter_1493420382._native_ptr(),
                    1493420382)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_mip_filter_2209202801._native_ptr(),
                    2209202801)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.SamplerFilter(godot: __resPtr.pointee)
    }
    public func set_repeat_u(p_member: RenderingDevice.SamplerRepeatMode)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_repeat_u_246127626._native_ptr(),
                    246127626)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_repeat_u_3227895872._native_ptr(),
                    3227895872)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.SamplerRepeatMode(godot: __resPtr.pointee)
    }
    public func set_repeat_v(p_member: RenderingDevice.SamplerRepeatMode)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_repeat_v_246127626._native_ptr(),
                    246127626)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_repeat_v_3227895872._native_ptr(),
                    3227895872)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.SamplerRepeatMode(godot: __resPtr.pointee)
    }
    public func set_repeat_w(p_member: RenderingDevice.SamplerRepeatMode)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_repeat_w_246127626._native_ptr(),
                    246127626)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_repeat_w_3227895872._native_ptr(),
                    3227895872)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.SamplerRepeatMode(godot: __resPtr.pointee)
    }
    public func set_lod_bias(p_member: Float64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_lod_bias_373806689._native_ptr(),
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
    public func get_lod_bias() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_lod_bias_1740695150._native_ptr(),
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
    public func set_use_anisotropy(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_use_anisotropy_2586408642._native_ptr(),
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
    public func get_use_anisotropy() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_use_anisotropy_36873697._native_ptr(),
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
    public func set_anisotropy_max(p_member: Float64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_anisotropy_max_373806689._native_ptr(),
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
    public func get_anisotropy_max() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_anisotropy_max_1740695150._native_ptr(),
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
    public func set_enable_compare(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_enable_compare_2586408642._native_ptr(),
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
    public func get_enable_compare() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_enable_compare_36873697._native_ptr(),
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
    public func set_compare_op(p_member: RenderingDevice.CompareOperator)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_compare_op_2573711505._native_ptr(),
                    2573711505)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_compare_op_269730778._native_ptr(),
                    269730778)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.CompareOperator(godot: __resPtr.pointee)
    }
    public func set_min_lod(p_member: Float64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_min_lod_373806689._native_ptr(),
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
    public func get_min_lod() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_min_lod_1740695150._native_ptr(),
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
    public func set_max_lod(p_member: Float64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_max_lod_373806689._native_ptr(),
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
    public func get_max_lod() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_max_lod_1740695150._native_ptr(),
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
    public func set_border_color(p_member: RenderingDevice.SamplerBorderColor)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_border_color_1115869595._native_ptr(),
                    1115869595)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_border_color_3514246478._native_ptr(),
                    3514246478)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.SamplerBorderColor(godot: __resPtr.pointee)
    }
    public func set_unnormalized_uvw(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_unnormalized_uvw_2586408642._native_ptr(),
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
    public func get_unnormalized_uvw() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_unnormalized_uvw_36873697._native_ptr(),
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
}