import godot_native

fileprivate var __godot_name_RDFramebufferPass: StringName! = nil

/// Framebuffer pass attachment description.
/// 
/// This class contains the list of attachment descriptions for a framebuffer pass. Each points with an index to a previously supplied list of texture attachments.
///  
/// Multipass framebuffers can optimize some configurations in mobile, on desktop they provide little to no advantage.
open class RDFramebufferPass : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RDFramebufferPass }

    static var _method_set_color_attachments_3614634198: StringName! = nil
    static var _method_get_color_attachments_1930428628: StringName! = nil
    static var _method_set_input_attachments_3614634198: StringName! = nil
    static var _method_get_input_attachments_1930428628: StringName! = nil
    static var _method_set_resolve_attachments_3614634198: StringName! = nil
    static var _method_get_resolve_attachments_1930428628: StringName! = nil
    static var _method_set_preserve_attachments_3614634198: StringName! = nil
    static var _method_get_preserve_attachments_1930428628: StringName! = nil
    static var _method_set_depth_attachment_1286410249: StringName! = nil
    static var _method_get_depth_attachment_3905245786: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_RDFramebufferPass == nil)
        __godot_name_RDFramebufferPass = StringName(from: "RDFramebufferPass")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_color_attachments_3614634198 = StringName(from: "set_color_attachments")
        assert(self._method_set_color_attachments_3614634198 != nil)
        self._method_get_color_attachments_1930428628 = StringName(from: "get_color_attachments")
        assert(self._method_get_color_attachments_1930428628 != nil)
        self._method_set_input_attachments_3614634198 = StringName(from: "set_input_attachments")
        assert(self._method_set_input_attachments_3614634198 != nil)
        self._method_get_input_attachments_1930428628 = StringName(from: "get_input_attachments")
        assert(self._method_get_input_attachments_1930428628 != nil)
        self._method_set_resolve_attachments_3614634198 = StringName(from: "set_resolve_attachments")
        assert(self._method_set_resolve_attachments_3614634198 != nil)
        self._method_get_resolve_attachments_1930428628 = StringName(from: "get_resolve_attachments")
        assert(self._method_get_resolve_attachments_1930428628 != nil)
        self._method_set_preserve_attachments_3614634198 = StringName(from: "set_preserve_attachments")
        assert(self._method_set_preserve_attachments_3614634198 != nil)
        self._method_get_preserve_attachments_1930428628 = StringName(from: "get_preserve_attachments")
        assert(self._method_get_preserve_attachments_1930428628 != nil)
        self._method_set_depth_attachment_1286410249 = StringName(from: "set_depth_attachment")
        assert(self._method_set_depth_attachment_1286410249 != nil)
        self._method_get_depth_attachment_3905245786 = StringName(from: "get_depth_attachment")
        assert(self._method_get_depth_attachment_3905245786 != nil)
    }

    public func set_color_attachments(p_member: PackedInt32Array)  {
        let p_member_native = p_member._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_color_attachments_3614634198._native_ptr(),
                    3614634198)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_color_attachments() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_color_attachments_1930428628._native_ptr(),
                    1930428628)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
    }
    public func set_input_attachments(p_member: PackedInt32Array)  {
        let p_member_native = p_member._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_input_attachments_3614634198._native_ptr(),
                    3614634198)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_input_attachments() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_input_attachments_1930428628._native_ptr(),
                    1930428628)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
    }
    public func set_resolve_attachments(p_member: PackedInt32Array)  {
        let p_member_native = p_member._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_resolve_attachments_3614634198._native_ptr(),
                    3614634198)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_resolve_attachments() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_resolve_attachments_1930428628._native_ptr(),
                    1930428628)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
    }
    public func set_preserve_attachments(p_member: PackedInt32Array)  {
        let p_member_native = p_member._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_preserve_attachments_3614634198._native_ptr(),
                    3614634198)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_preserve_attachments() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_preserve_attachments_1930428628._native_ptr(),
                    1930428628)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
    }
    public func set_depth_attachment(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_depth_attachment_1286410249._native_ptr(),
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
    public func get_depth_attachment() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_depth_attachment_3905245786._native_ptr(),
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