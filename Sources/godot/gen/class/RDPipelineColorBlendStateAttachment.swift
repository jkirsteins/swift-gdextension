import godot_native

fileprivate var __godot_name_RDPipelineColorBlendStateAttachment: StringName! = nil

/// 
/// 
/// 
public class RDPipelineColorBlendStateAttachment : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RDPipelineColorBlendStateAttachment }

    static var _method_set_as_mix_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_enable_blend_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_enable_blend_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_src_color_blend_factor_2251019273: GDExtensionMethodBindPtr! = nil
    static var _method_get_src_color_blend_factor_3691288359: GDExtensionMethodBindPtr! = nil
    static var _method_set_dst_color_blend_factor_2251019273: GDExtensionMethodBindPtr! = nil
    static var _method_get_dst_color_blend_factor_3691288359: GDExtensionMethodBindPtr! = nil
    static var _method_set_color_blend_op_3073022720: GDExtensionMethodBindPtr! = nil
    static var _method_get_color_blend_op_1385093561: GDExtensionMethodBindPtr! = nil
    static var _method_set_src_alpha_blend_factor_2251019273: GDExtensionMethodBindPtr! = nil
    static var _method_get_src_alpha_blend_factor_3691288359: GDExtensionMethodBindPtr! = nil
    static var _method_set_dst_alpha_blend_factor_2251019273: GDExtensionMethodBindPtr! = nil
    static var _method_get_dst_alpha_blend_factor_3691288359: GDExtensionMethodBindPtr! = nil
    static var _method_set_alpha_blend_op_3073022720: GDExtensionMethodBindPtr! = nil
    static var _method_get_alpha_blend_op_1385093561: GDExtensionMethodBindPtr! = nil
    static var _method_set_write_r_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_write_r_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_write_g_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_write_g_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_write_b_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_write_b_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_write_a_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_write_a_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_RDPipelineColorBlendStateAttachment = StringName(from: "RDPipelineColorBlendStateAttachment")

        let _method_set_as_mix_3218959716_name = StringName(from: "set_as_mix")
        self._method_set_as_mix_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_as_mix_3218959716_name._native_ptr(), 3218959716)
        assert(RDPipelineColorBlendStateAttachment._method_set_as_mix_3218959716 != nil)
        let _method_set_enable_blend_2586408642_name = StringName(from: "set_enable_blend")
        self._method_set_enable_blend_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_enable_blend_2586408642_name._native_ptr(), 2586408642)
        assert(RDPipelineColorBlendStateAttachment._method_set_enable_blend_2586408642 != nil)
        let _method_get_enable_blend_36873697_name = StringName(from: "get_enable_blend")
        self._method_get_enable_blend_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_enable_blend_36873697_name._native_ptr(), 36873697)
        assert(RDPipelineColorBlendStateAttachment._method_get_enable_blend_36873697 != nil)
        let _method_set_src_color_blend_factor_2251019273_name = StringName(from: "set_src_color_blend_factor")
        self._method_set_src_color_blend_factor_2251019273 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_src_color_blend_factor_2251019273_name._native_ptr(), 2251019273)
        assert(RDPipelineColorBlendStateAttachment._method_set_src_color_blend_factor_2251019273 != nil)
        let _method_get_src_color_blend_factor_3691288359_name = StringName(from: "get_src_color_blend_factor")
        self._method_get_src_color_blend_factor_3691288359 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_src_color_blend_factor_3691288359_name._native_ptr(), 3691288359)
        assert(RDPipelineColorBlendStateAttachment._method_get_src_color_blend_factor_3691288359 != nil)
        let _method_set_dst_color_blend_factor_2251019273_name = StringName(from: "set_dst_color_blend_factor")
        self._method_set_dst_color_blend_factor_2251019273 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_dst_color_blend_factor_2251019273_name._native_ptr(), 2251019273)
        assert(RDPipelineColorBlendStateAttachment._method_set_dst_color_blend_factor_2251019273 != nil)
        let _method_get_dst_color_blend_factor_3691288359_name = StringName(from: "get_dst_color_blend_factor")
        self._method_get_dst_color_blend_factor_3691288359 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_dst_color_blend_factor_3691288359_name._native_ptr(), 3691288359)
        assert(RDPipelineColorBlendStateAttachment._method_get_dst_color_blend_factor_3691288359 != nil)
        let _method_set_color_blend_op_3073022720_name = StringName(from: "set_color_blend_op")
        self._method_set_color_blend_op_3073022720 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_color_blend_op_3073022720_name._native_ptr(), 3073022720)
        assert(RDPipelineColorBlendStateAttachment._method_set_color_blend_op_3073022720 != nil)
        let _method_get_color_blend_op_1385093561_name = StringName(from: "get_color_blend_op")
        self._method_get_color_blend_op_1385093561 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_color_blend_op_1385093561_name._native_ptr(), 1385093561)
        assert(RDPipelineColorBlendStateAttachment._method_get_color_blend_op_1385093561 != nil)
        let _method_set_src_alpha_blend_factor_2251019273_name = StringName(from: "set_src_alpha_blend_factor")
        self._method_set_src_alpha_blend_factor_2251019273 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_src_alpha_blend_factor_2251019273_name._native_ptr(), 2251019273)
        assert(RDPipelineColorBlendStateAttachment._method_set_src_alpha_blend_factor_2251019273 != nil)
        let _method_get_src_alpha_blend_factor_3691288359_name = StringName(from: "get_src_alpha_blend_factor")
        self._method_get_src_alpha_blend_factor_3691288359 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_src_alpha_blend_factor_3691288359_name._native_ptr(), 3691288359)
        assert(RDPipelineColorBlendStateAttachment._method_get_src_alpha_blend_factor_3691288359 != nil)
        let _method_set_dst_alpha_blend_factor_2251019273_name = StringName(from: "set_dst_alpha_blend_factor")
        self._method_set_dst_alpha_blend_factor_2251019273 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_dst_alpha_blend_factor_2251019273_name._native_ptr(), 2251019273)
        assert(RDPipelineColorBlendStateAttachment._method_set_dst_alpha_blend_factor_2251019273 != nil)
        let _method_get_dst_alpha_blend_factor_3691288359_name = StringName(from: "get_dst_alpha_blend_factor")
        self._method_get_dst_alpha_blend_factor_3691288359 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_dst_alpha_blend_factor_3691288359_name._native_ptr(), 3691288359)
        assert(RDPipelineColorBlendStateAttachment._method_get_dst_alpha_blend_factor_3691288359 != nil)
        let _method_set_alpha_blend_op_3073022720_name = StringName(from: "set_alpha_blend_op")
        self._method_set_alpha_blend_op_3073022720 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_alpha_blend_op_3073022720_name._native_ptr(), 3073022720)
        assert(RDPipelineColorBlendStateAttachment._method_set_alpha_blend_op_3073022720 != nil)
        let _method_get_alpha_blend_op_1385093561_name = StringName(from: "get_alpha_blend_op")
        self._method_get_alpha_blend_op_1385093561 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_alpha_blend_op_1385093561_name._native_ptr(), 1385093561)
        assert(RDPipelineColorBlendStateAttachment._method_get_alpha_blend_op_1385093561 != nil)
        let _method_set_write_r_2586408642_name = StringName(from: "set_write_r")
        self._method_set_write_r_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_write_r_2586408642_name._native_ptr(), 2586408642)
        assert(RDPipelineColorBlendStateAttachment._method_set_write_r_2586408642 != nil)
        let _method_get_write_r_36873697_name = StringName(from: "get_write_r")
        self._method_get_write_r_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_write_r_36873697_name._native_ptr(), 36873697)
        assert(RDPipelineColorBlendStateAttachment._method_get_write_r_36873697 != nil)
        let _method_set_write_g_2586408642_name = StringName(from: "set_write_g")
        self._method_set_write_g_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_write_g_2586408642_name._native_ptr(), 2586408642)
        assert(RDPipelineColorBlendStateAttachment._method_set_write_g_2586408642 != nil)
        let _method_get_write_g_36873697_name = StringName(from: "get_write_g")
        self._method_get_write_g_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_write_g_36873697_name._native_ptr(), 36873697)
        assert(RDPipelineColorBlendStateAttachment._method_get_write_g_36873697 != nil)
        let _method_set_write_b_2586408642_name = StringName(from: "set_write_b")
        self._method_set_write_b_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_write_b_2586408642_name._native_ptr(), 2586408642)
        assert(RDPipelineColorBlendStateAttachment._method_set_write_b_2586408642 != nil)
        let _method_get_write_b_36873697_name = StringName(from: "get_write_b")
        self._method_get_write_b_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_write_b_36873697_name._native_ptr(), 36873697)
        assert(RDPipelineColorBlendStateAttachment._method_get_write_b_36873697 != nil)
        let _method_set_write_a_2586408642_name = StringName(from: "set_write_a")
        self._method_set_write_a_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_write_a_2586408642_name._native_ptr(), 2586408642)
        assert(RDPipelineColorBlendStateAttachment._method_set_write_a_2586408642 != nil)
        let _method_get_write_a_36873697_name = StringName(from: "get_write_a")
        self._method_get_write_a_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_write_a_36873697_name._native_ptr(), 36873697)
        assert(RDPipelineColorBlendStateAttachment._method_get_write_a_36873697 != nil)
    }

    public func set_as_mix()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_as_mix_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enable_blend_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_enable_blend_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_src_color_blend_factor(p_member: RenderingDevice.BlendFactor)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_src_color_blend_factor_2251019273,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_src_color_blend_factor_3691288359,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.BlendFactor(from: __resPtr.pointee)
    }
    public func set_dst_color_blend_factor(p_member: RenderingDevice.BlendFactor)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_dst_color_blend_factor_2251019273,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_dst_color_blend_factor_3691288359,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.BlendFactor(from: __resPtr.pointee)
    }
    public func set_color_blend_op(p_member: RenderingDevice.BlendOperation)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_color_blend_op_3073022720,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_color_blend_op_1385093561,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.BlendOperation(from: __resPtr.pointee)
    }
    public func set_src_alpha_blend_factor(p_member: RenderingDevice.BlendFactor)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_src_alpha_blend_factor_2251019273,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_src_alpha_blend_factor_3691288359,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.BlendFactor(from: __resPtr.pointee)
    }
    public func set_dst_alpha_blend_factor(p_member: RenderingDevice.BlendFactor)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_dst_alpha_blend_factor_2251019273,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_dst_alpha_blend_factor_3691288359,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.BlendFactor(from: __resPtr.pointee)
    }
    public func set_alpha_blend_op(p_member: RenderingDevice.BlendOperation)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_alpha_blend_op_3073022720,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_alpha_blend_op_1385093561,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.BlendOperation(from: __resPtr.pointee)
    }
    public func set_write_r(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_write_r_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_write_r_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_write_g(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_write_g_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_write_g_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_write_b(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_write_b_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_write_b_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_write_a(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_write_a_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_write_a_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}