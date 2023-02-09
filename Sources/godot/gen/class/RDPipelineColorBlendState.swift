import godot_native

fileprivate var __godot_name_RDPipelineColorBlendState: StringName! = nil

/// 
/// 
/// 
open class RDPipelineColorBlendState : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RDPipelineColorBlendState }

    static var _method_set_enable_logic_op_2586408642: StringName! = nil
    static var _method_get_enable_logic_op_36873697: StringName! = nil
    static var _method_set_logic_op_3610841058: StringName! = nil
    static var _method_get_logic_op_988254690: StringName! = nil
    static var _method_set_blend_constant_2920490490: StringName! = nil
    static var _method_get_blend_constant_3444240500: StringName! = nil
    static var _method_set_attachments_381264803: StringName! = nil
    static var _method_get_attachments_3995934104: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_RDPipelineColorBlendState == nil)
        __godot_name_RDPipelineColorBlendState = StringName(from: "RDPipelineColorBlendState")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_enable_logic_op_2586408642 = StringName(from: "set_enable_logic_op")
        assert(self._method_set_enable_logic_op_2586408642 != nil)
        self._method_get_enable_logic_op_36873697 = StringName(from: "get_enable_logic_op")
        assert(self._method_get_enable_logic_op_36873697 != nil)
        self._method_set_logic_op_3610841058 = StringName(from: "set_logic_op")
        assert(self._method_set_logic_op_3610841058 != nil)
        self._method_get_logic_op_988254690 = StringName(from: "get_logic_op")
        assert(self._method_get_logic_op_988254690 != nil)
        self._method_set_blend_constant_2920490490 = StringName(from: "set_blend_constant")
        assert(self._method_set_blend_constant_2920490490 != nil)
        self._method_get_blend_constant_3444240500 = StringName(from: "get_blend_constant")
        assert(self._method_get_blend_constant_3444240500 != nil)
        self._method_set_attachments_381264803 = StringName(from: "set_attachments")
        assert(self._method_set_attachments_381264803 != nil)
        self._method_get_attachments_3995934104 = StringName(from: "get_attachments")
        assert(self._method_get_attachments_3995934104 != nil)
    }

    public func set_enable_logic_op(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_enable_logic_op_2586408642._native_ptr(),
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
    public func get_enable_logic_op() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_enable_logic_op_36873697._native_ptr(),
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
    public func set_logic_op(p_member: RenderingDevice.LogicOperation)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_logic_op_3610841058._native_ptr(),
                    3610841058)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_logic_op_988254690._native_ptr(),
                    988254690)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_blend_constant_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_blend_constant_3444240500._native_ptr(),
                    3444240500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_attachments_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_attachments_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [RDPipelineColorBlendStateAttachment](godot: __resPtr.pointee)
    }
}