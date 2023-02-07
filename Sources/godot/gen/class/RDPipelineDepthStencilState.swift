import godot_native

fileprivate var __godot_name_RDPipelineDepthStencilState: StringName! = nil

/// 
/// 
/// 
public class RDPipelineDepthStencilState : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RDPipelineDepthStencilState }

    static var _method_set_enable_depth_test_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_enable_depth_test_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_enable_depth_write_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_enable_depth_write_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_depth_compare_operator_2573711505: GDExtensionMethodBindPtr! = nil
    static var _method_get_depth_compare_operator_269730778: GDExtensionMethodBindPtr! = nil
    static var _method_set_enable_depth_range_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_enable_depth_range_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_depth_range_min_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_depth_range_min_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_depth_range_max_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_depth_range_max_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_enable_stencil_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_enable_stencil_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_front_op_fail_2092799566: GDExtensionMethodBindPtr! = nil
    static var _method_get_front_op_fail_1714732389: GDExtensionMethodBindPtr! = nil
    static var _method_set_front_op_pass_2092799566: GDExtensionMethodBindPtr! = nil
    static var _method_get_front_op_pass_1714732389: GDExtensionMethodBindPtr! = nil
    static var _method_set_front_op_depth_fail_2092799566: GDExtensionMethodBindPtr! = nil
    static var _method_get_front_op_depth_fail_1714732389: GDExtensionMethodBindPtr! = nil
    static var _method_set_front_op_compare_2573711505: GDExtensionMethodBindPtr! = nil
    static var _method_get_front_op_compare_269730778: GDExtensionMethodBindPtr! = nil
    static var _method_set_front_op_compare_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_front_op_compare_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_front_op_write_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_front_op_write_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_front_op_reference_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_front_op_reference_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_back_op_fail_2092799566: GDExtensionMethodBindPtr! = nil
    static var _method_get_back_op_fail_1714732389: GDExtensionMethodBindPtr! = nil
    static var _method_set_back_op_pass_2092799566: GDExtensionMethodBindPtr! = nil
    static var _method_get_back_op_pass_1714732389: GDExtensionMethodBindPtr! = nil
    static var _method_set_back_op_depth_fail_2092799566: GDExtensionMethodBindPtr! = nil
    static var _method_get_back_op_depth_fail_1714732389: GDExtensionMethodBindPtr! = nil
    static var _method_set_back_op_compare_2573711505: GDExtensionMethodBindPtr! = nil
    static var _method_get_back_op_compare_269730778: GDExtensionMethodBindPtr! = nil
    static var _method_set_back_op_compare_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_back_op_compare_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_back_op_write_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_back_op_write_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_back_op_reference_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_back_op_reference_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_RDPipelineDepthStencilState = StringName(from: "RDPipelineDepthStencilState")

        let _method_set_enable_depth_test_2586408642_name = StringName(from: "set_enable_depth_test")
        self._method_set_enable_depth_test_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_enable_depth_test_2586408642_name._native_ptr(), 2586408642)
        assert(RDPipelineDepthStencilState._method_set_enable_depth_test_2586408642 != nil)
        let _method_get_enable_depth_test_36873697_name = StringName(from: "get_enable_depth_test")
        self._method_get_enable_depth_test_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_enable_depth_test_36873697_name._native_ptr(), 36873697)
        assert(RDPipelineDepthStencilState._method_get_enable_depth_test_36873697 != nil)
        let _method_set_enable_depth_write_2586408642_name = StringName(from: "set_enable_depth_write")
        self._method_set_enable_depth_write_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_enable_depth_write_2586408642_name._native_ptr(), 2586408642)
        assert(RDPipelineDepthStencilState._method_set_enable_depth_write_2586408642 != nil)
        let _method_get_enable_depth_write_36873697_name = StringName(from: "get_enable_depth_write")
        self._method_get_enable_depth_write_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_enable_depth_write_36873697_name._native_ptr(), 36873697)
        assert(RDPipelineDepthStencilState._method_get_enable_depth_write_36873697 != nil)
        let _method_set_depth_compare_operator_2573711505_name = StringName(from: "set_depth_compare_operator")
        self._method_set_depth_compare_operator_2573711505 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_depth_compare_operator_2573711505_name._native_ptr(), 2573711505)
        assert(RDPipelineDepthStencilState._method_set_depth_compare_operator_2573711505 != nil)
        let _method_get_depth_compare_operator_269730778_name = StringName(from: "get_depth_compare_operator")
        self._method_get_depth_compare_operator_269730778 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_depth_compare_operator_269730778_name._native_ptr(), 269730778)
        assert(RDPipelineDepthStencilState._method_get_depth_compare_operator_269730778 != nil)
        let _method_set_enable_depth_range_2586408642_name = StringName(from: "set_enable_depth_range")
        self._method_set_enable_depth_range_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_enable_depth_range_2586408642_name._native_ptr(), 2586408642)
        assert(RDPipelineDepthStencilState._method_set_enable_depth_range_2586408642 != nil)
        let _method_get_enable_depth_range_36873697_name = StringName(from: "get_enable_depth_range")
        self._method_get_enable_depth_range_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_enable_depth_range_36873697_name._native_ptr(), 36873697)
        assert(RDPipelineDepthStencilState._method_get_enable_depth_range_36873697 != nil)
        let _method_set_depth_range_min_373806689_name = StringName(from: "set_depth_range_min")
        self._method_set_depth_range_min_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_depth_range_min_373806689_name._native_ptr(), 373806689)
        assert(RDPipelineDepthStencilState._method_set_depth_range_min_373806689 != nil)
        let _method_get_depth_range_min_1740695150_name = StringName(from: "get_depth_range_min")
        self._method_get_depth_range_min_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_depth_range_min_1740695150_name._native_ptr(), 1740695150)
        assert(RDPipelineDepthStencilState._method_get_depth_range_min_1740695150 != nil)
        let _method_set_depth_range_max_373806689_name = StringName(from: "set_depth_range_max")
        self._method_set_depth_range_max_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_depth_range_max_373806689_name._native_ptr(), 373806689)
        assert(RDPipelineDepthStencilState._method_set_depth_range_max_373806689 != nil)
        let _method_get_depth_range_max_1740695150_name = StringName(from: "get_depth_range_max")
        self._method_get_depth_range_max_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_depth_range_max_1740695150_name._native_ptr(), 1740695150)
        assert(RDPipelineDepthStencilState._method_get_depth_range_max_1740695150 != nil)
        let _method_set_enable_stencil_2586408642_name = StringName(from: "set_enable_stencil")
        self._method_set_enable_stencil_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_enable_stencil_2586408642_name._native_ptr(), 2586408642)
        assert(RDPipelineDepthStencilState._method_set_enable_stencil_2586408642 != nil)
        let _method_get_enable_stencil_36873697_name = StringName(from: "get_enable_stencil")
        self._method_get_enable_stencil_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_enable_stencil_36873697_name._native_ptr(), 36873697)
        assert(RDPipelineDepthStencilState._method_get_enable_stencil_36873697 != nil)
        let _method_set_front_op_fail_2092799566_name = StringName(from: "set_front_op_fail")
        self._method_set_front_op_fail_2092799566 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_front_op_fail_2092799566_name._native_ptr(), 2092799566)
        assert(RDPipelineDepthStencilState._method_set_front_op_fail_2092799566 != nil)
        let _method_get_front_op_fail_1714732389_name = StringName(from: "get_front_op_fail")
        self._method_get_front_op_fail_1714732389 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_front_op_fail_1714732389_name._native_ptr(), 1714732389)
        assert(RDPipelineDepthStencilState._method_get_front_op_fail_1714732389 != nil)
        let _method_set_front_op_pass_2092799566_name = StringName(from: "set_front_op_pass")
        self._method_set_front_op_pass_2092799566 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_front_op_pass_2092799566_name._native_ptr(), 2092799566)
        assert(RDPipelineDepthStencilState._method_set_front_op_pass_2092799566 != nil)
        let _method_get_front_op_pass_1714732389_name = StringName(from: "get_front_op_pass")
        self._method_get_front_op_pass_1714732389 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_front_op_pass_1714732389_name._native_ptr(), 1714732389)
        assert(RDPipelineDepthStencilState._method_get_front_op_pass_1714732389 != nil)
        let _method_set_front_op_depth_fail_2092799566_name = StringName(from: "set_front_op_depth_fail")
        self._method_set_front_op_depth_fail_2092799566 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_front_op_depth_fail_2092799566_name._native_ptr(), 2092799566)
        assert(RDPipelineDepthStencilState._method_set_front_op_depth_fail_2092799566 != nil)
        let _method_get_front_op_depth_fail_1714732389_name = StringName(from: "get_front_op_depth_fail")
        self._method_get_front_op_depth_fail_1714732389 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_front_op_depth_fail_1714732389_name._native_ptr(), 1714732389)
        assert(RDPipelineDepthStencilState._method_get_front_op_depth_fail_1714732389 != nil)
        let _method_set_front_op_compare_2573711505_name = StringName(from: "set_front_op_compare")
        self._method_set_front_op_compare_2573711505 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_front_op_compare_2573711505_name._native_ptr(), 2573711505)
        assert(RDPipelineDepthStencilState._method_set_front_op_compare_2573711505 != nil)
        let _method_get_front_op_compare_269730778_name = StringName(from: "get_front_op_compare")
        self._method_get_front_op_compare_269730778 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_front_op_compare_269730778_name._native_ptr(), 269730778)
        assert(RDPipelineDepthStencilState._method_get_front_op_compare_269730778 != nil)
        let _method_set_front_op_compare_mask_1286410249_name = StringName(from: "set_front_op_compare_mask")
        self._method_set_front_op_compare_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_front_op_compare_mask_1286410249_name._native_ptr(), 1286410249)
        assert(RDPipelineDepthStencilState._method_set_front_op_compare_mask_1286410249 != nil)
        let _method_get_front_op_compare_mask_3905245786_name = StringName(from: "get_front_op_compare_mask")
        self._method_get_front_op_compare_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_front_op_compare_mask_3905245786_name._native_ptr(), 3905245786)
        assert(RDPipelineDepthStencilState._method_get_front_op_compare_mask_3905245786 != nil)
        let _method_set_front_op_write_mask_1286410249_name = StringName(from: "set_front_op_write_mask")
        self._method_set_front_op_write_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_front_op_write_mask_1286410249_name._native_ptr(), 1286410249)
        assert(RDPipelineDepthStencilState._method_set_front_op_write_mask_1286410249 != nil)
        let _method_get_front_op_write_mask_3905245786_name = StringName(from: "get_front_op_write_mask")
        self._method_get_front_op_write_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_front_op_write_mask_3905245786_name._native_ptr(), 3905245786)
        assert(RDPipelineDepthStencilState._method_get_front_op_write_mask_3905245786 != nil)
        let _method_set_front_op_reference_1286410249_name = StringName(from: "set_front_op_reference")
        self._method_set_front_op_reference_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_front_op_reference_1286410249_name._native_ptr(), 1286410249)
        assert(RDPipelineDepthStencilState._method_set_front_op_reference_1286410249 != nil)
        let _method_get_front_op_reference_3905245786_name = StringName(from: "get_front_op_reference")
        self._method_get_front_op_reference_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_front_op_reference_3905245786_name._native_ptr(), 3905245786)
        assert(RDPipelineDepthStencilState._method_get_front_op_reference_3905245786 != nil)
        let _method_set_back_op_fail_2092799566_name = StringName(from: "set_back_op_fail")
        self._method_set_back_op_fail_2092799566 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_back_op_fail_2092799566_name._native_ptr(), 2092799566)
        assert(RDPipelineDepthStencilState._method_set_back_op_fail_2092799566 != nil)
        let _method_get_back_op_fail_1714732389_name = StringName(from: "get_back_op_fail")
        self._method_get_back_op_fail_1714732389 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_back_op_fail_1714732389_name._native_ptr(), 1714732389)
        assert(RDPipelineDepthStencilState._method_get_back_op_fail_1714732389 != nil)
        let _method_set_back_op_pass_2092799566_name = StringName(from: "set_back_op_pass")
        self._method_set_back_op_pass_2092799566 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_back_op_pass_2092799566_name._native_ptr(), 2092799566)
        assert(RDPipelineDepthStencilState._method_set_back_op_pass_2092799566 != nil)
        let _method_get_back_op_pass_1714732389_name = StringName(from: "get_back_op_pass")
        self._method_get_back_op_pass_1714732389 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_back_op_pass_1714732389_name._native_ptr(), 1714732389)
        assert(RDPipelineDepthStencilState._method_get_back_op_pass_1714732389 != nil)
        let _method_set_back_op_depth_fail_2092799566_name = StringName(from: "set_back_op_depth_fail")
        self._method_set_back_op_depth_fail_2092799566 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_back_op_depth_fail_2092799566_name._native_ptr(), 2092799566)
        assert(RDPipelineDepthStencilState._method_set_back_op_depth_fail_2092799566 != nil)
        let _method_get_back_op_depth_fail_1714732389_name = StringName(from: "get_back_op_depth_fail")
        self._method_get_back_op_depth_fail_1714732389 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_back_op_depth_fail_1714732389_name._native_ptr(), 1714732389)
        assert(RDPipelineDepthStencilState._method_get_back_op_depth_fail_1714732389 != nil)
        let _method_set_back_op_compare_2573711505_name = StringName(from: "set_back_op_compare")
        self._method_set_back_op_compare_2573711505 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_back_op_compare_2573711505_name._native_ptr(), 2573711505)
        assert(RDPipelineDepthStencilState._method_set_back_op_compare_2573711505 != nil)
        let _method_get_back_op_compare_269730778_name = StringName(from: "get_back_op_compare")
        self._method_get_back_op_compare_269730778 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_back_op_compare_269730778_name._native_ptr(), 269730778)
        assert(RDPipelineDepthStencilState._method_get_back_op_compare_269730778 != nil)
        let _method_set_back_op_compare_mask_1286410249_name = StringName(from: "set_back_op_compare_mask")
        self._method_set_back_op_compare_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_back_op_compare_mask_1286410249_name._native_ptr(), 1286410249)
        assert(RDPipelineDepthStencilState._method_set_back_op_compare_mask_1286410249 != nil)
        let _method_get_back_op_compare_mask_3905245786_name = StringName(from: "get_back_op_compare_mask")
        self._method_get_back_op_compare_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_back_op_compare_mask_3905245786_name._native_ptr(), 3905245786)
        assert(RDPipelineDepthStencilState._method_get_back_op_compare_mask_3905245786 != nil)
        let _method_set_back_op_write_mask_1286410249_name = StringName(from: "set_back_op_write_mask")
        self._method_set_back_op_write_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_back_op_write_mask_1286410249_name._native_ptr(), 1286410249)
        assert(RDPipelineDepthStencilState._method_set_back_op_write_mask_1286410249 != nil)
        let _method_get_back_op_write_mask_3905245786_name = StringName(from: "get_back_op_write_mask")
        self._method_get_back_op_write_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_back_op_write_mask_3905245786_name._native_ptr(), 3905245786)
        assert(RDPipelineDepthStencilState._method_get_back_op_write_mask_3905245786 != nil)
        let _method_set_back_op_reference_1286410249_name = StringName(from: "set_back_op_reference")
        self._method_set_back_op_reference_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_back_op_reference_1286410249_name._native_ptr(), 1286410249)
        assert(RDPipelineDepthStencilState._method_set_back_op_reference_1286410249 != nil)
        let _method_get_back_op_reference_3905245786_name = StringName(from: "get_back_op_reference")
        self._method_get_back_op_reference_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_back_op_reference_3905245786_name._native_ptr(), 3905245786)
        assert(RDPipelineDepthStencilState._method_get_back_op_reference_3905245786 != nil)
    }

    public func set_enable_depth_test(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enable_depth_test_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_enable_depth_test_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_enable_depth_write(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enable_depth_write_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_enable_depth_write_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_depth_compare_operator(p_member: RenderingDevice.CompareOperator)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_depth_compare_operator_2573711505,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_depth_compare_operator_269730778,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.CompareOperator(from: __resPtr.pointee)
    }
    public func set_enable_depth_range(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enable_depth_range_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_enable_depth_range_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_depth_range_min(p_member: Float64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_depth_range_min_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_depth_range_min_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_depth_range_max(p_member: Float64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_depth_range_max_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_depth_range_max_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_enable_stencil(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enable_stencil_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_enable_stencil_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_front_op_fail(p_member: RenderingDevice.StencilOperation)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_front_op_fail_2092799566,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_front_op_fail_1714732389,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.StencilOperation(from: __resPtr.pointee)
    }
    public func set_front_op_pass(p_member: RenderingDevice.StencilOperation)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_front_op_pass_2092799566,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_front_op_pass_1714732389,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.StencilOperation(from: __resPtr.pointee)
    }
    public func set_front_op_depth_fail(p_member: RenderingDevice.StencilOperation)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_front_op_depth_fail_2092799566,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_front_op_depth_fail_1714732389,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.StencilOperation(from: __resPtr.pointee)
    }
    public func set_front_op_compare(p_member: RenderingDevice.CompareOperator)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_front_op_compare_2573711505,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_front_op_compare_269730778,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.CompareOperator(from: __resPtr.pointee)
    }
    public func set_front_op_compare_mask(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_front_op_compare_mask_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_front_op_compare_mask_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_front_op_write_mask(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_front_op_write_mask_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_front_op_write_mask_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_front_op_reference(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_front_op_reference_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_front_op_reference_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_back_op_fail(p_member: RenderingDevice.StencilOperation)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_back_op_fail_2092799566,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_back_op_fail_1714732389,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.StencilOperation(from: __resPtr.pointee)
    }
    public func set_back_op_pass(p_member: RenderingDevice.StencilOperation)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_back_op_pass_2092799566,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_back_op_pass_1714732389,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.StencilOperation(from: __resPtr.pointee)
    }
    public func set_back_op_depth_fail(p_member: RenderingDevice.StencilOperation)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_back_op_depth_fail_2092799566,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_back_op_depth_fail_1714732389,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.StencilOperation(from: __resPtr.pointee)
    }
    public func set_back_op_compare(p_member: RenderingDevice.CompareOperator)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_back_op_compare_2573711505,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_back_op_compare_269730778,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.CompareOperator(from: __resPtr.pointee)
    }
    public func set_back_op_compare_mask(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_back_op_compare_mask_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_back_op_compare_mask_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_back_op_write_mask(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_back_op_write_mask_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_back_op_write_mask_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_back_op_reference(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_back_op_reference_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_back_op_reference_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
}