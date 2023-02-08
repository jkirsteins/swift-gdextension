import godot_native

fileprivate var __godot_name_RDAttachmentFormat: StringName! = nil

/// 
/// 
/// 
open class RDAttachmentFormat : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RDAttachmentFormat }

    static var _method_set_format_565531219: GDExtensionMethodBindPtr! = nil
    static var _method_get_format_2235804183: GDExtensionMethodBindPtr! = nil
    static var _method_set_samples_3774171498: GDExtensionMethodBindPtr! = nil
    static var _method_get_samples_407791724: GDExtensionMethodBindPtr! = nil
    static var _method_set_usage_flags_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_usage_flags_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_RDAttachmentFormat = StringName(from: "RDAttachmentFormat")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_format_565531219_name = StringName(from: "set_format")
        self._method_set_format_565531219 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDAttachmentFormat._native_ptr(), _method_set_format_565531219_name._native_ptr(), 565531219)
        assert(RDAttachmentFormat._method_set_format_565531219 != nil)
        let _method_get_format_2235804183_name = StringName(from: "get_format")
        self._method_get_format_2235804183 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDAttachmentFormat._native_ptr(), _method_get_format_2235804183_name._native_ptr(), 2235804183)
        assert(RDAttachmentFormat._method_get_format_2235804183 != nil)
        let _method_set_samples_3774171498_name = StringName(from: "set_samples")
        self._method_set_samples_3774171498 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDAttachmentFormat._native_ptr(), _method_set_samples_3774171498_name._native_ptr(), 3774171498)
        assert(RDAttachmentFormat._method_set_samples_3774171498 != nil)
        let _method_get_samples_407791724_name = StringName(from: "get_samples")
        self._method_get_samples_407791724 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDAttachmentFormat._native_ptr(), _method_get_samples_407791724_name._native_ptr(), 407791724)
        assert(RDAttachmentFormat._method_get_samples_407791724 != nil)
        let _method_set_usage_flags_1286410249_name = StringName(from: "set_usage_flags")
        self._method_set_usage_flags_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDAttachmentFormat._native_ptr(), _method_set_usage_flags_1286410249_name._native_ptr(), 1286410249)
        assert(RDAttachmentFormat._method_set_usage_flags_1286410249 != nil)
        let _method_get_usage_flags_3905245786_name = StringName(from: "get_usage_flags")
        self._method_get_usage_flags_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDAttachmentFormat._native_ptr(), _method_get_usage_flags_3905245786_name._native_ptr(), 3905245786)
        assert(RDAttachmentFormat._method_get_usage_flags_3905245786 != nil)
    }

    public func set_format(p_member: RenderingDevice.DataFormat)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_format_565531219,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_format() -> RenderingDevice.DataFormat {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_format_2235804183,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.DataFormat(godot: __resPtr.pointee)
    }
    public func set_samples(p_member: RenderingDevice.TextureSamples)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_samples_3774171498,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_samples() -> RenderingDevice.TextureSamples {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_samples_407791724,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.TextureSamples(godot: __resPtr.pointee)
    }
    public func set_usage_flags(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_usage_flags_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_usage_flags() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_usage_flags_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}