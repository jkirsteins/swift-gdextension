import godot_native

fileprivate var __godot_name_RDTextureView: StringName! = nil

/// 
/// 
/// 
open class RDTextureView : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RDTextureView }

    static var _method_set_format_override_565531219: StringName! = nil
    static var _method_get_format_override_2235804183: StringName! = nil
    static var _method_set_swizzle_r_3833362581: StringName! = nil
    static var _method_get_swizzle_r_4150792614: StringName! = nil
    static var _method_set_swizzle_g_3833362581: StringName! = nil
    static var _method_get_swizzle_g_4150792614: StringName! = nil
    static var _method_set_swizzle_b_3833362581: StringName! = nil
    static var _method_get_swizzle_b_4150792614: StringName! = nil
    static var _method_set_swizzle_a_3833362581: StringName! = nil
    static var _method_get_swizzle_a_4150792614: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_RDTextureView == nil)
        __godot_name_RDTextureView = StringName(from: "RDTextureView")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_format_override_565531219 = StringName(from: "set_format_override")
        assert(self._method_set_format_override_565531219 != nil)
        self._method_get_format_override_2235804183 = StringName(from: "get_format_override")
        assert(self._method_get_format_override_2235804183 != nil)
        self._method_set_swizzle_r_3833362581 = StringName(from: "set_swizzle_r")
        assert(self._method_set_swizzle_r_3833362581 != nil)
        self._method_get_swizzle_r_4150792614 = StringName(from: "get_swizzle_r")
        assert(self._method_get_swizzle_r_4150792614 != nil)
        self._method_set_swizzle_g_3833362581 = StringName(from: "set_swizzle_g")
        assert(self._method_set_swizzle_g_3833362581 != nil)
        self._method_get_swizzle_g_4150792614 = StringName(from: "get_swizzle_g")
        assert(self._method_get_swizzle_g_4150792614 != nil)
        self._method_set_swizzle_b_3833362581 = StringName(from: "set_swizzle_b")
        assert(self._method_set_swizzle_b_3833362581 != nil)
        self._method_get_swizzle_b_4150792614 = StringName(from: "get_swizzle_b")
        assert(self._method_get_swizzle_b_4150792614 != nil)
        self._method_set_swizzle_a_3833362581 = StringName(from: "set_swizzle_a")
        assert(self._method_set_swizzle_a_3833362581 != nil)
        self._method_get_swizzle_a_4150792614 = StringName(from: "get_swizzle_a")
        assert(self._method_get_swizzle_a_4150792614 != nil)
    }

    public func set_format_override(p_member: RenderingDevice.DataFormat)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_format_override_565531219._native_ptr(),
                    565531219)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_format_override() -> RenderingDevice.DataFormat {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_format_override_2235804183._native_ptr(),
                    2235804183)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.DataFormat(godot: __resPtr.pointee)
    }
    public func set_swizzle_r(p_member: RenderingDevice.TextureSwizzle)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_swizzle_r_3833362581._native_ptr(),
                    3833362581)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_swizzle_r() -> RenderingDevice.TextureSwizzle {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_swizzle_r_4150792614._native_ptr(),
                    4150792614)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.TextureSwizzle(godot: __resPtr.pointee)
    }
    public func set_swizzle_g(p_member: RenderingDevice.TextureSwizzle)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_swizzle_g_3833362581._native_ptr(),
                    3833362581)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_swizzle_g() -> RenderingDevice.TextureSwizzle {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_swizzle_g_4150792614._native_ptr(),
                    4150792614)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.TextureSwizzle(godot: __resPtr.pointee)
    }
    public func set_swizzle_b(p_member: RenderingDevice.TextureSwizzle)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_swizzle_b_3833362581._native_ptr(),
                    3833362581)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_swizzle_b() -> RenderingDevice.TextureSwizzle {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_swizzle_b_4150792614._native_ptr(),
                    4150792614)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.TextureSwizzle(godot: __resPtr.pointee)
    }
    public func set_swizzle_a(p_member: RenderingDevice.TextureSwizzle)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_swizzle_a_3833362581._native_ptr(),
                    3833362581)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_swizzle_a() -> RenderingDevice.TextureSwizzle {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_swizzle_a_4150792614._native_ptr(),
                    4150792614)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.TextureSwizzle(godot: __resPtr.pointee)
    }
}