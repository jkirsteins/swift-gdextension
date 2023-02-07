import godot_native

fileprivate var __godot_name_RDTextureView: StringName! = nil

/// 
/// 
/// 
public class RDTextureView : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RDTextureView }

    static var _method_set_format_override_565531219: GDExtensionMethodBindPtr! = nil
    static var _method_get_format_override_2235804183: GDExtensionMethodBindPtr! = nil
    static var _method_set_swizzle_r_3833362581: GDExtensionMethodBindPtr! = nil
    static var _method_get_swizzle_r_4150792614: GDExtensionMethodBindPtr! = nil
    static var _method_set_swizzle_g_3833362581: GDExtensionMethodBindPtr! = nil
    static var _method_get_swizzle_g_4150792614: GDExtensionMethodBindPtr! = nil
    static var _method_set_swizzle_b_3833362581: GDExtensionMethodBindPtr! = nil
    static var _method_get_swizzle_b_4150792614: GDExtensionMethodBindPtr! = nil
    static var _method_set_swizzle_a_3833362581: GDExtensionMethodBindPtr! = nil
    static var _method_get_swizzle_a_4150792614: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_RDTextureView = StringName(from: "RDTextureView")

        let _method_set_format_override_565531219_name = StringName(from: "set_format_override")
        self._method_set_format_override_565531219 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_format_override_565531219_name._native_ptr(), 565531219)
        assert(RDTextureView._method_set_format_override_565531219 != nil)
        let _method_get_format_override_2235804183_name = StringName(from: "get_format_override")
        self._method_get_format_override_2235804183 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_format_override_2235804183_name._native_ptr(), 2235804183)
        assert(RDTextureView._method_get_format_override_2235804183 != nil)
        let _method_set_swizzle_r_3833362581_name = StringName(from: "set_swizzle_r")
        self._method_set_swizzle_r_3833362581 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_swizzle_r_3833362581_name._native_ptr(), 3833362581)
        assert(RDTextureView._method_set_swizzle_r_3833362581 != nil)
        let _method_get_swizzle_r_4150792614_name = StringName(from: "get_swizzle_r")
        self._method_get_swizzle_r_4150792614 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_swizzle_r_4150792614_name._native_ptr(), 4150792614)
        assert(RDTextureView._method_get_swizzle_r_4150792614 != nil)
        let _method_set_swizzle_g_3833362581_name = StringName(from: "set_swizzle_g")
        self._method_set_swizzle_g_3833362581 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_swizzle_g_3833362581_name._native_ptr(), 3833362581)
        assert(RDTextureView._method_set_swizzle_g_3833362581 != nil)
        let _method_get_swizzle_g_4150792614_name = StringName(from: "get_swizzle_g")
        self._method_get_swizzle_g_4150792614 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_swizzle_g_4150792614_name._native_ptr(), 4150792614)
        assert(RDTextureView._method_get_swizzle_g_4150792614 != nil)
        let _method_set_swizzle_b_3833362581_name = StringName(from: "set_swizzle_b")
        self._method_set_swizzle_b_3833362581 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_swizzle_b_3833362581_name._native_ptr(), 3833362581)
        assert(RDTextureView._method_set_swizzle_b_3833362581 != nil)
        let _method_get_swizzle_b_4150792614_name = StringName(from: "get_swizzle_b")
        self._method_get_swizzle_b_4150792614 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_swizzle_b_4150792614_name._native_ptr(), 4150792614)
        assert(RDTextureView._method_get_swizzle_b_4150792614 != nil)
        let _method_set_swizzle_a_3833362581_name = StringName(from: "set_swizzle_a")
        self._method_set_swizzle_a_3833362581 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_swizzle_a_3833362581_name._native_ptr(), 3833362581)
        assert(RDTextureView._method_set_swizzle_a_3833362581 != nil)
        let _method_get_swizzle_a_4150792614_name = StringName(from: "get_swizzle_a")
        self._method_get_swizzle_a_4150792614 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_swizzle_a_4150792614_name._native_ptr(), 4150792614)
        assert(RDTextureView._method_get_swizzle_a_4150792614 != nil)
    }

    public func set_format_override(p_member: RenderingDevice.DataFormat)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_format_override_565531219,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_format_override_2235804183,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.DataFormat(from: __resPtr.pointee)
    }
    public func set_swizzle_r(p_member: RenderingDevice.TextureSwizzle)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_swizzle_r_3833362581,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_swizzle_r_4150792614,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.TextureSwizzle(from: __resPtr.pointee)
    }
    public func set_swizzle_g(p_member: RenderingDevice.TextureSwizzle)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_swizzle_g_3833362581,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_swizzle_g_4150792614,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.TextureSwizzle(from: __resPtr.pointee)
    }
    public func set_swizzle_b(p_member: RenderingDevice.TextureSwizzle)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_swizzle_b_3833362581,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_swizzle_b_4150792614,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.TextureSwizzle(from: __resPtr.pointee)
    }
    public func set_swizzle_a(p_member: RenderingDevice.TextureSwizzle)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_swizzle_a_3833362581,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_swizzle_a_4150792614,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.TextureSwizzle(from: __resPtr.pointee)
    }
}