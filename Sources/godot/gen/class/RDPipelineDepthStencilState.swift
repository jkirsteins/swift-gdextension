import godot_native

fileprivate var __godot_name_RDPipelineDepthStencilState: StringName! = nil

/// 
/// 
/// 
open class RDPipelineDepthStencilState : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RDPipelineDepthStencilState }

    static var _method_set_enable_depth_test_2586408642: StringName! = nil
    static var _method_get_enable_depth_test_36873697: StringName! = nil
    static var _method_set_enable_depth_write_2586408642: StringName! = nil
    static var _method_get_enable_depth_write_36873697: StringName! = nil
    static var _method_set_depth_compare_operator_2573711505: StringName! = nil
    static var _method_get_depth_compare_operator_269730778: StringName! = nil
    static var _method_set_enable_depth_range_2586408642: StringName! = nil
    static var _method_get_enable_depth_range_36873697: StringName! = nil
    static var _method_set_depth_range_min_373806689: StringName! = nil
    static var _method_get_depth_range_min_1740695150: StringName! = nil
    static var _method_set_depth_range_max_373806689: StringName! = nil
    static var _method_get_depth_range_max_1740695150: StringName! = nil
    static var _method_set_enable_stencil_2586408642: StringName! = nil
    static var _method_get_enable_stencil_36873697: StringName! = nil
    static var _method_set_front_op_fail_2092799566: StringName! = nil
    static var _method_get_front_op_fail_1714732389: StringName! = nil
    static var _method_set_front_op_pass_2092799566: StringName! = nil
    static var _method_get_front_op_pass_1714732389: StringName! = nil
    static var _method_set_front_op_depth_fail_2092799566: StringName! = nil
    static var _method_get_front_op_depth_fail_1714732389: StringName! = nil
    static var _method_set_front_op_compare_2573711505: StringName! = nil
    static var _method_get_front_op_compare_269730778: StringName! = nil
    static var _method_set_front_op_compare_mask_1286410249: StringName! = nil
    static var _method_get_front_op_compare_mask_3905245786: StringName! = nil
    static var _method_set_front_op_write_mask_1286410249: StringName! = nil
    static var _method_get_front_op_write_mask_3905245786: StringName! = nil
    static var _method_set_front_op_reference_1286410249: StringName! = nil
    static var _method_get_front_op_reference_3905245786: StringName! = nil
    static var _method_set_back_op_fail_2092799566: StringName! = nil
    static var _method_get_back_op_fail_1714732389: StringName! = nil
    static var _method_set_back_op_pass_2092799566: StringName! = nil
    static var _method_get_back_op_pass_1714732389: StringName! = nil
    static var _method_set_back_op_depth_fail_2092799566: StringName! = nil
    static var _method_get_back_op_depth_fail_1714732389: StringName! = nil
    static var _method_set_back_op_compare_2573711505: StringName! = nil
    static var _method_get_back_op_compare_269730778: StringName! = nil
    static var _method_set_back_op_compare_mask_1286410249: StringName! = nil
    static var _method_get_back_op_compare_mask_3905245786: StringName! = nil
    static var _method_set_back_op_write_mask_1286410249: StringName! = nil
    static var _method_get_back_op_write_mask_3905245786: StringName! = nil
    static var _method_set_back_op_reference_1286410249: StringName! = nil
    static var _method_get_back_op_reference_3905245786: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_RDPipelineDepthStencilState == nil)
        __godot_name_RDPipelineDepthStencilState = StringName(from: "RDPipelineDepthStencilState")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_enable_depth_test_2586408642 = StringName(from: "set_enable_depth_test")
        assert(self._method_set_enable_depth_test_2586408642 != nil)
        self._method_get_enable_depth_test_36873697 = StringName(from: "get_enable_depth_test")
        assert(self._method_get_enable_depth_test_36873697 != nil)
        self._method_set_enable_depth_write_2586408642 = StringName(from: "set_enable_depth_write")
        assert(self._method_set_enable_depth_write_2586408642 != nil)
        self._method_get_enable_depth_write_36873697 = StringName(from: "get_enable_depth_write")
        assert(self._method_get_enable_depth_write_36873697 != nil)
        self._method_set_depth_compare_operator_2573711505 = StringName(from: "set_depth_compare_operator")
        assert(self._method_set_depth_compare_operator_2573711505 != nil)
        self._method_get_depth_compare_operator_269730778 = StringName(from: "get_depth_compare_operator")
        assert(self._method_get_depth_compare_operator_269730778 != nil)
        self._method_set_enable_depth_range_2586408642 = StringName(from: "set_enable_depth_range")
        assert(self._method_set_enable_depth_range_2586408642 != nil)
        self._method_get_enable_depth_range_36873697 = StringName(from: "get_enable_depth_range")
        assert(self._method_get_enable_depth_range_36873697 != nil)
        self._method_set_depth_range_min_373806689 = StringName(from: "set_depth_range_min")
        assert(self._method_set_depth_range_min_373806689 != nil)
        self._method_get_depth_range_min_1740695150 = StringName(from: "get_depth_range_min")
        assert(self._method_get_depth_range_min_1740695150 != nil)
        self._method_set_depth_range_max_373806689 = StringName(from: "set_depth_range_max")
        assert(self._method_set_depth_range_max_373806689 != nil)
        self._method_get_depth_range_max_1740695150 = StringName(from: "get_depth_range_max")
        assert(self._method_get_depth_range_max_1740695150 != nil)
        self._method_set_enable_stencil_2586408642 = StringName(from: "set_enable_stencil")
        assert(self._method_set_enable_stencil_2586408642 != nil)
        self._method_get_enable_stencil_36873697 = StringName(from: "get_enable_stencil")
        assert(self._method_get_enable_stencil_36873697 != nil)
        self._method_set_front_op_fail_2092799566 = StringName(from: "set_front_op_fail")
        assert(self._method_set_front_op_fail_2092799566 != nil)
        self._method_get_front_op_fail_1714732389 = StringName(from: "get_front_op_fail")
        assert(self._method_get_front_op_fail_1714732389 != nil)
        self._method_set_front_op_pass_2092799566 = StringName(from: "set_front_op_pass")
        assert(self._method_set_front_op_pass_2092799566 != nil)
        self._method_get_front_op_pass_1714732389 = StringName(from: "get_front_op_pass")
        assert(self._method_get_front_op_pass_1714732389 != nil)
        self._method_set_front_op_depth_fail_2092799566 = StringName(from: "set_front_op_depth_fail")
        assert(self._method_set_front_op_depth_fail_2092799566 != nil)
        self._method_get_front_op_depth_fail_1714732389 = StringName(from: "get_front_op_depth_fail")
        assert(self._method_get_front_op_depth_fail_1714732389 != nil)
        self._method_set_front_op_compare_2573711505 = StringName(from: "set_front_op_compare")
        assert(self._method_set_front_op_compare_2573711505 != nil)
        self._method_get_front_op_compare_269730778 = StringName(from: "get_front_op_compare")
        assert(self._method_get_front_op_compare_269730778 != nil)
        self._method_set_front_op_compare_mask_1286410249 = StringName(from: "set_front_op_compare_mask")
        assert(self._method_set_front_op_compare_mask_1286410249 != nil)
        self._method_get_front_op_compare_mask_3905245786 = StringName(from: "get_front_op_compare_mask")
        assert(self._method_get_front_op_compare_mask_3905245786 != nil)
        self._method_set_front_op_write_mask_1286410249 = StringName(from: "set_front_op_write_mask")
        assert(self._method_set_front_op_write_mask_1286410249 != nil)
        self._method_get_front_op_write_mask_3905245786 = StringName(from: "get_front_op_write_mask")
        assert(self._method_get_front_op_write_mask_3905245786 != nil)
        self._method_set_front_op_reference_1286410249 = StringName(from: "set_front_op_reference")
        assert(self._method_set_front_op_reference_1286410249 != nil)
        self._method_get_front_op_reference_3905245786 = StringName(from: "get_front_op_reference")
        assert(self._method_get_front_op_reference_3905245786 != nil)
        self._method_set_back_op_fail_2092799566 = StringName(from: "set_back_op_fail")
        assert(self._method_set_back_op_fail_2092799566 != nil)
        self._method_get_back_op_fail_1714732389 = StringName(from: "get_back_op_fail")
        assert(self._method_get_back_op_fail_1714732389 != nil)
        self._method_set_back_op_pass_2092799566 = StringName(from: "set_back_op_pass")
        assert(self._method_set_back_op_pass_2092799566 != nil)
        self._method_get_back_op_pass_1714732389 = StringName(from: "get_back_op_pass")
        assert(self._method_get_back_op_pass_1714732389 != nil)
        self._method_set_back_op_depth_fail_2092799566 = StringName(from: "set_back_op_depth_fail")
        assert(self._method_set_back_op_depth_fail_2092799566 != nil)
        self._method_get_back_op_depth_fail_1714732389 = StringName(from: "get_back_op_depth_fail")
        assert(self._method_get_back_op_depth_fail_1714732389 != nil)
        self._method_set_back_op_compare_2573711505 = StringName(from: "set_back_op_compare")
        assert(self._method_set_back_op_compare_2573711505 != nil)
        self._method_get_back_op_compare_269730778 = StringName(from: "get_back_op_compare")
        assert(self._method_get_back_op_compare_269730778 != nil)
        self._method_set_back_op_compare_mask_1286410249 = StringName(from: "set_back_op_compare_mask")
        assert(self._method_set_back_op_compare_mask_1286410249 != nil)
        self._method_get_back_op_compare_mask_3905245786 = StringName(from: "get_back_op_compare_mask")
        assert(self._method_get_back_op_compare_mask_3905245786 != nil)
        self._method_set_back_op_write_mask_1286410249 = StringName(from: "set_back_op_write_mask")
        assert(self._method_set_back_op_write_mask_1286410249 != nil)
        self._method_get_back_op_write_mask_3905245786 = StringName(from: "get_back_op_write_mask")
        assert(self._method_get_back_op_write_mask_3905245786 != nil)
        self._method_set_back_op_reference_1286410249 = StringName(from: "set_back_op_reference")
        assert(self._method_set_back_op_reference_1286410249 != nil)
        self._method_get_back_op_reference_3905245786 = StringName(from: "get_back_op_reference")
        assert(self._method_get_back_op_reference_3905245786 != nil)
    }

    public func set_enable_depth_test(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_enable_depth_test_2586408642._native_ptr(),
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
    public func get_enable_depth_test() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_enable_depth_test_36873697._native_ptr(),
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
    public func set_enable_depth_write(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_enable_depth_write_2586408642._native_ptr(),
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
    public func get_enable_depth_write() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_enable_depth_write_36873697._native_ptr(),
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
    public func set_depth_compare_operator(p_member: RenderingDevice.CompareOperator)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_depth_compare_operator_2573711505._native_ptr(),
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
    public func get_depth_compare_operator() -> RenderingDevice.CompareOperator {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_depth_compare_operator_269730778._native_ptr(),
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
    public func set_enable_depth_range(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_enable_depth_range_2586408642._native_ptr(),
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
    public func get_enable_depth_range() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_enable_depth_range_36873697._native_ptr(),
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
    public func set_depth_range_min(p_member: Float64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_depth_range_min_373806689._native_ptr(),
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
    public func get_depth_range_min() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_depth_range_min_1740695150._native_ptr(),
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
    public func set_depth_range_max(p_member: Float64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_depth_range_max_373806689._native_ptr(),
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
    public func get_depth_range_max() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_depth_range_max_1740695150._native_ptr(),
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
    public func set_enable_stencil(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_enable_stencil_2586408642._native_ptr(),
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
    public func get_enable_stencil() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_enable_stencil_36873697._native_ptr(),
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
    public func set_front_op_fail(p_member: RenderingDevice.StencilOperation)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_front_op_fail_2092799566._native_ptr(),
                    2092799566)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_front_op_fail() -> RenderingDevice.StencilOperation {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_front_op_fail_1714732389._native_ptr(),
                    1714732389)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.StencilOperation(godot: __resPtr.pointee)
    }
    public func set_front_op_pass(p_member: RenderingDevice.StencilOperation)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_front_op_pass_2092799566._native_ptr(),
                    2092799566)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_front_op_pass() -> RenderingDevice.StencilOperation {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_front_op_pass_1714732389._native_ptr(),
                    1714732389)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.StencilOperation(godot: __resPtr.pointee)
    }
    public func set_front_op_depth_fail(p_member: RenderingDevice.StencilOperation)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_front_op_depth_fail_2092799566._native_ptr(),
                    2092799566)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_front_op_depth_fail() -> RenderingDevice.StencilOperation {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_front_op_depth_fail_1714732389._native_ptr(),
                    1714732389)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.StencilOperation(godot: __resPtr.pointee)
    }
    public func set_front_op_compare(p_member: RenderingDevice.CompareOperator)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_front_op_compare_2573711505._native_ptr(),
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
    public func get_front_op_compare() -> RenderingDevice.CompareOperator {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_front_op_compare_269730778._native_ptr(),
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
    public func set_front_op_compare_mask(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_front_op_compare_mask_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_front_op_compare_mask() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_front_op_compare_mask_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_front_op_write_mask(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_front_op_write_mask_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_front_op_write_mask() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_front_op_write_mask_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_front_op_reference(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_front_op_reference_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_front_op_reference() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_front_op_reference_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_back_op_fail(p_member: RenderingDevice.StencilOperation)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_back_op_fail_2092799566._native_ptr(),
                    2092799566)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_back_op_fail() -> RenderingDevice.StencilOperation {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_back_op_fail_1714732389._native_ptr(),
                    1714732389)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.StencilOperation(godot: __resPtr.pointee)
    }
    public func set_back_op_pass(p_member: RenderingDevice.StencilOperation)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_back_op_pass_2092799566._native_ptr(),
                    2092799566)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_back_op_pass() -> RenderingDevice.StencilOperation {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_back_op_pass_1714732389._native_ptr(),
                    1714732389)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.StencilOperation(godot: __resPtr.pointee)
    }
    public func set_back_op_depth_fail(p_member: RenderingDevice.StencilOperation)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_back_op_depth_fail_2092799566._native_ptr(),
                    2092799566)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_back_op_depth_fail() -> RenderingDevice.StencilOperation {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_back_op_depth_fail_1714732389._native_ptr(),
                    1714732389)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.StencilOperation(godot: __resPtr.pointee)
    }
    public func set_back_op_compare(p_member: RenderingDevice.CompareOperator)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_back_op_compare_2573711505._native_ptr(),
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
    public func get_back_op_compare() -> RenderingDevice.CompareOperator {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_back_op_compare_269730778._native_ptr(),
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
    public func set_back_op_compare_mask(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_back_op_compare_mask_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_back_op_compare_mask() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_back_op_compare_mask_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_back_op_write_mask(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_back_op_write_mask_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_back_op_write_mask() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_back_op_write_mask_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_back_op_reference(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_back_op_reference_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_back_op_reference() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_back_op_reference_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}