import godot_native

fileprivate var __godot_name_RDPipelineColorBlendState: StringName! = nil

/// 
/// 
/// 
open class RDPipelineColorBlendState : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RDPipelineColorBlendState }

    static var _method_set_enable_logic_op_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_enable_logic_op_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_logic_op_3610841058: GDExtensionMethodBindPtr! = nil
    static var _method_get_logic_op_988254690: GDExtensionMethodBindPtr! = nil
    static var _method_set_blend_constant_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_blend_constant_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_attachments_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_get_attachments_3995934104: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_RDPipelineColorBlendState = StringName(from: "RDPipelineColorBlendState")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_enable_logic_op_2586408642_name = StringName(from: "set_enable_logic_op")
        self._method_set_enable_logic_op_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineColorBlendState._native_ptr(), _method_set_enable_logic_op_2586408642_name._native_ptr(), 2586408642)
        assert(RDPipelineColorBlendState._method_set_enable_logic_op_2586408642 != nil)
        let _method_get_enable_logic_op_36873697_name = StringName(from: "get_enable_logic_op")
        self._method_get_enable_logic_op_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineColorBlendState._native_ptr(), _method_get_enable_logic_op_36873697_name._native_ptr(), 36873697)
        assert(RDPipelineColorBlendState._method_get_enable_logic_op_36873697 != nil)
        let _method_set_logic_op_3610841058_name = StringName(from: "set_logic_op")
        self._method_set_logic_op_3610841058 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineColorBlendState._native_ptr(), _method_set_logic_op_3610841058_name._native_ptr(), 3610841058)
        assert(RDPipelineColorBlendState._method_set_logic_op_3610841058 != nil)
        let _method_get_logic_op_988254690_name = StringName(from: "get_logic_op")
        self._method_get_logic_op_988254690 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineColorBlendState._native_ptr(), _method_get_logic_op_988254690_name._native_ptr(), 988254690)
        assert(RDPipelineColorBlendState._method_get_logic_op_988254690 != nil)
        let _method_set_blend_constant_2920490490_name = StringName(from: "set_blend_constant")
        self._method_set_blend_constant_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineColorBlendState._native_ptr(), _method_set_blend_constant_2920490490_name._native_ptr(), 2920490490)
        assert(RDPipelineColorBlendState._method_set_blend_constant_2920490490 != nil)
        let _method_get_blend_constant_3444240500_name = StringName(from: "get_blend_constant")
        self._method_get_blend_constant_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineColorBlendState._native_ptr(), _method_get_blend_constant_3444240500_name._native_ptr(), 3444240500)
        assert(RDPipelineColorBlendState._method_get_blend_constant_3444240500 != nil)
        let _method_set_attachments_381264803_name = StringName(from: "set_attachments")
        self._method_set_attachments_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineColorBlendState._native_ptr(), _method_set_attachments_381264803_name._native_ptr(), 381264803)
        assert(RDPipelineColorBlendState._method_set_attachments_381264803 != nil)
        let _method_get_attachments_3995934104_name = StringName(from: "get_attachments")
        self._method_get_attachments_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDPipelineColorBlendState._native_ptr(), _method_get_attachments_3995934104_name._native_ptr(), 3995934104)
        assert(RDPipelineColorBlendState._method_get_attachments_3995934104 != nil)
    }

    public func set_enable_logic_op(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enable_logic_op_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_enable_logic_op() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_enable_logic_op_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_logic_op(p_member: RenderingDevice.LogicOperation)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_logic_op_3610841058,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_logic_op() -> RenderingDevice.LogicOperation {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_logic_op_988254690,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.LogicOperation(godot: __resPtr.pointee)
    }
    public func set_blend_constant(p_member: Color)  {
        let p_member_native = p_member._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_blend_constant_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_blend_constant() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_blend_constant_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_attachments(attachments: [RDPipelineColorBlendStateAttachment])  {
        let attachments_native = attachments._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(attachments_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_attachments_381264803,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_attachments() -> [RDPipelineColorBlendStateAttachment] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_attachments_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [RDPipelineColorBlendStateAttachment](godot: __resPtr.pointee)
    }
}