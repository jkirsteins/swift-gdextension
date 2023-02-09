import godot_native

fileprivate var __godot_name_RDPipelineColorBlendStateAttachment: StringName! = nil

/// 
/// 
/// 
open class RDPipelineColorBlendStateAttachment : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RDPipelineColorBlendStateAttachment }

    static var _method_set_as_mix_3218959716: StringName! = nil
    static var _method_set_enable_blend_2586408642: StringName! = nil
    static var _method_get_enable_blend_36873697: StringName! = nil
    static var _method_set_src_color_blend_factor_2251019273: StringName! = nil
    static var _method_get_src_color_blend_factor_3691288359: StringName! = nil
    static var _method_set_dst_color_blend_factor_2251019273: StringName! = nil
    static var _method_get_dst_color_blend_factor_3691288359: StringName! = nil
    static var _method_set_color_blend_op_3073022720: StringName! = nil
    static var _method_get_color_blend_op_1385093561: StringName! = nil
    static var _method_set_src_alpha_blend_factor_2251019273: StringName! = nil
    static var _method_get_src_alpha_blend_factor_3691288359: StringName! = nil
    static var _method_set_dst_alpha_blend_factor_2251019273: StringName! = nil
    static var _method_get_dst_alpha_blend_factor_3691288359: StringName! = nil
    static var _method_set_alpha_blend_op_3073022720: StringName! = nil
    static var _method_get_alpha_blend_op_1385093561: StringName! = nil
    static var _method_set_write_r_2586408642: StringName! = nil
    static var _method_get_write_r_36873697: StringName! = nil
    static var _method_set_write_g_2586408642: StringName! = nil
    static var _method_get_write_g_36873697: StringName! = nil
    static var _method_set_write_b_2586408642: StringName! = nil
    static var _method_get_write_b_36873697: StringName! = nil
    static var _method_set_write_a_2586408642: StringName! = nil
    static var _method_get_write_a_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_RDPipelineColorBlendStateAttachment == nil)
        __godot_name_RDPipelineColorBlendStateAttachment = StringName(from: "RDPipelineColorBlendStateAttachment")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_as_mix_3218959716 = StringName(from: "set_as_mix")
        assert(self._method_set_as_mix_3218959716 != nil)
        self._method_set_enable_blend_2586408642 = StringName(from: "set_enable_blend")
        assert(self._method_set_enable_blend_2586408642 != nil)
        self._method_get_enable_blend_36873697 = StringName(from: "get_enable_blend")
        assert(self._method_get_enable_blend_36873697 != nil)
        self._method_set_src_color_blend_factor_2251019273 = StringName(from: "set_src_color_blend_factor")
        assert(self._method_set_src_color_blend_factor_2251019273 != nil)
        self._method_get_src_color_blend_factor_3691288359 = StringName(from: "get_src_color_blend_factor")
        assert(self._method_get_src_color_blend_factor_3691288359 != nil)
        self._method_set_dst_color_blend_factor_2251019273 = StringName(from: "set_dst_color_blend_factor")
        assert(self._method_set_dst_color_blend_factor_2251019273 != nil)
        self._method_get_dst_color_blend_factor_3691288359 = StringName(from: "get_dst_color_blend_factor")
        assert(self._method_get_dst_color_blend_factor_3691288359 != nil)
        self._method_set_color_blend_op_3073022720 = StringName(from: "set_color_blend_op")
        assert(self._method_set_color_blend_op_3073022720 != nil)
        self._method_get_color_blend_op_1385093561 = StringName(from: "get_color_blend_op")
        assert(self._method_get_color_blend_op_1385093561 != nil)
        self._method_set_src_alpha_blend_factor_2251019273 = StringName(from: "set_src_alpha_blend_factor")
        assert(self._method_set_src_alpha_blend_factor_2251019273 != nil)
        self._method_get_src_alpha_blend_factor_3691288359 = StringName(from: "get_src_alpha_blend_factor")
        assert(self._method_get_src_alpha_blend_factor_3691288359 != nil)
        self._method_set_dst_alpha_blend_factor_2251019273 = StringName(from: "set_dst_alpha_blend_factor")
        assert(self._method_set_dst_alpha_blend_factor_2251019273 != nil)
        self._method_get_dst_alpha_blend_factor_3691288359 = StringName(from: "get_dst_alpha_blend_factor")
        assert(self._method_get_dst_alpha_blend_factor_3691288359 != nil)
        self._method_set_alpha_blend_op_3073022720 = StringName(from: "set_alpha_blend_op")
        assert(self._method_set_alpha_blend_op_3073022720 != nil)
        self._method_get_alpha_blend_op_1385093561 = StringName(from: "get_alpha_blend_op")
        assert(self._method_get_alpha_blend_op_1385093561 != nil)
        self._method_set_write_r_2586408642 = StringName(from: "set_write_r")
        assert(self._method_set_write_r_2586408642 != nil)
        self._method_get_write_r_36873697 = StringName(from: "get_write_r")
        assert(self._method_get_write_r_36873697 != nil)
        self._method_set_write_g_2586408642 = StringName(from: "set_write_g")
        assert(self._method_set_write_g_2586408642 != nil)
        self._method_get_write_g_36873697 = StringName(from: "get_write_g")
        assert(self._method_get_write_g_36873697 != nil)
        self._method_set_write_b_2586408642 = StringName(from: "set_write_b")
        assert(self._method_set_write_b_2586408642 != nil)
        self._method_get_write_b_36873697 = StringName(from: "get_write_b")
        assert(self._method_get_write_b_36873697 != nil)
        self._method_set_write_a_2586408642 = StringName(from: "set_write_a")
        assert(self._method_set_write_a_2586408642 != nil)
        self._method_get_write_a_36873697 = StringName(from: "get_write_a")
        assert(self._method_get_write_a_36873697 != nil)
    }

    public func set_as_mix()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_as_mix_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_enable_blend(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_enable_blend_2586408642._native_ptr(),
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
    public func get_enable_blend() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_enable_blend_36873697._native_ptr(),
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
    public func set_src_color_blend_factor(p_member: RenderingDevice.BlendFactor)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_src_color_blend_factor_2251019273._native_ptr(),
                    2251019273)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_src_color_blend_factor() -> RenderingDevice.BlendFactor {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_src_color_blend_factor_3691288359._native_ptr(),
                    3691288359)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.BlendFactor(godot: __resPtr.pointee)
    }
    public func set_dst_color_blend_factor(p_member: RenderingDevice.BlendFactor)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_dst_color_blend_factor_2251019273._native_ptr(),
                    2251019273)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_dst_color_blend_factor() -> RenderingDevice.BlendFactor {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_dst_color_blend_factor_3691288359._native_ptr(),
                    3691288359)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.BlendFactor(godot: __resPtr.pointee)
    }
    public func set_color_blend_op(p_member: RenderingDevice.BlendOperation)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_color_blend_op_3073022720._native_ptr(),
                    3073022720)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_color_blend_op() -> RenderingDevice.BlendOperation {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_color_blend_op_1385093561._native_ptr(),
                    1385093561)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.BlendOperation(godot: __resPtr.pointee)
    }
    public func set_src_alpha_blend_factor(p_member: RenderingDevice.BlendFactor)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_src_alpha_blend_factor_2251019273._native_ptr(),
                    2251019273)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_src_alpha_blend_factor() -> RenderingDevice.BlendFactor {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_src_alpha_blend_factor_3691288359._native_ptr(),
                    3691288359)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.BlendFactor(godot: __resPtr.pointee)
    }
    public func set_dst_alpha_blend_factor(p_member: RenderingDevice.BlendFactor)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_dst_alpha_blend_factor_2251019273._native_ptr(),
                    2251019273)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_dst_alpha_blend_factor() -> RenderingDevice.BlendFactor {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_dst_alpha_blend_factor_3691288359._native_ptr(),
                    3691288359)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.BlendFactor(godot: __resPtr.pointee)
    }
    public func set_alpha_blend_op(p_member: RenderingDevice.BlendOperation)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_alpha_blend_op_3073022720._native_ptr(),
                    3073022720)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_alpha_blend_op() -> RenderingDevice.BlendOperation {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_alpha_blend_op_1385093561._native_ptr(),
                    1385093561)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.BlendOperation(godot: __resPtr.pointee)
    }
    public func set_write_r(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_write_r_2586408642._native_ptr(),
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
    public func get_write_r() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_write_r_36873697._native_ptr(),
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
    public func set_write_g(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_write_g_2586408642._native_ptr(),
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
    public func get_write_g() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_write_g_36873697._native_ptr(),
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
    public func set_write_b(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_write_b_2586408642._native_ptr(),
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
    public func get_write_b() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_write_b_36873697._native_ptr(),
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
    public func set_write_a(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_write_a_2586408642._native_ptr(),
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
    public func get_write_a() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_write_a_36873697._native_ptr(),
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