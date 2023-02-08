import godot_native

fileprivate var __godot_name_RDTextureFormat: StringName! = nil

/// 
/// 
/// 
open class RDTextureFormat : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RDTextureFormat }

    static var _method_set_format_565531219: GDExtensionMethodBindPtr! = nil
    static var _method_get_format_2235804183: GDExtensionMethodBindPtr! = nil
    static var _method_set_width_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_width_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_height_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_height_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_depth_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_depth_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_array_layers_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_array_layers_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_mipmaps_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_mipmaps_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_type_652343381: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_type_4036357416: GDExtensionMethodBindPtr! = nil
    static var _method_set_samples_3774171498: GDExtensionMethodBindPtr! = nil
    static var _method_get_samples_407791724: GDExtensionMethodBindPtr! = nil
    static var _method_set_usage_bits_245642367: GDExtensionMethodBindPtr! = nil
    static var _method_get_usage_bits_1313398998: GDExtensionMethodBindPtr! = nil
    static var _method_add_shareable_format_565531219: GDExtensionMethodBindPtr! = nil
    static var _method_remove_shareable_format_565531219: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_RDTextureFormat = StringName(from: "RDTextureFormat")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_format_565531219_name = StringName(from: "set_format")
        self._method_set_format_565531219 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDTextureFormat._native_ptr(), _method_set_format_565531219_name._native_ptr(), 565531219)
        assert(RDTextureFormat._method_set_format_565531219 != nil)
        let _method_get_format_2235804183_name = StringName(from: "get_format")
        self._method_get_format_2235804183 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDTextureFormat._native_ptr(), _method_get_format_2235804183_name._native_ptr(), 2235804183)
        assert(RDTextureFormat._method_get_format_2235804183 != nil)
        let _method_set_width_1286410249_name = StringName(from: "set_width")
        self._method_set_width_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDTextureFormat._native_ptr(), _method_set_width_1286410249_name._native_ptr(), 1286410249)
        assert(RDTextureFormat._method_set_width_1286410249 != nil)
        let _method_get_width_3905245786_name = StringName(from: "get_width")
        self._method_get_width_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDTextureFormat._native_ptr(), _method_get_width_3905245786_name._native_ptr(), 3905245786)
        assert(RDTextureFormat._method_get_width_3905245786 != nil)
        let _method_set_height_1286410249_name = StringName(from: "set_height")
        self._method_set_height_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDTextureFormat._native_ptr(), _method_set_height_1286410249_name._native_ptr(), 1286410249)
        assert(RDTextureFormat._method_set_height_1286410249 != nil)
        let _method_get_height_3905245786_name = StringName(from: "get_height")
        self._method_get_height_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDTextureFormat._native_ptr(), _method_get_height_3905245786_name._native_ptr(), 3905245786)
        assert(RDTextureFormat._method_get_height_3905245786 != nil)
        let _method_set_depth_1286410249_name = StringName(from: "set_depth")
        self._method_set_depth_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDTextureFormat._native_ptr(), _method_set_depth_1286410249_name._native_ptr(), 1286410249)
        assert(RDTextureFormat._method_set_depth_1286410249 != nil)
        let _method_get_depth_3905245786_name = StringName(from: "get_depth")
        self._method_get_depth_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDTextureFormat._native_ptr(), _method_get_depth_3905245786_name._native_ptr(), 3905245786)
        assert(RDTextureFormat._method_get_depth_3905245786 != nil)
        let _method_set_array_layers_1286410249_name = StringName(from: "set_array_layers")
        self._method_set_array_layers_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDTextureFormat._native_ptr(), _method_set_array_layers_1286410249_name._native_ptr(), 1286410249)
        assert(RDTextureFormat._method_set_array_layers_1286410249 != nil)
        let _method_get_array_layers_3905245786_name = StringName(from: "get_array_layers")
        self._method_get_array_layers_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDTextureFormat._native_ptr(), _method_get_array_layers_3905245786_name._native_ptr(), 3905245786)
        assert(RDTextureFormat._method_get_array_layers_3905245786 != nil)
        let _method_set_mipmaps_1286410249_name = StringName(from: "set_mipmaps")
        self._method_set_mipmaps_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDTextureFormat._native_ptr(), _method_set_mipmaps_1286410249_name._native_ptr(), 1286410249)
        assert(RDTextureFormat._method_set_mipmaps_1286410249 != nil)
        let _method_get_mipmaps_3905245786_name = StringName(from: "get_mipmaps")
        self._method_get_mipmaps_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDTextureFormat._native_ptr(), _method_get_mipmaps_3905245786_name._native_ptr(), 3905245786)
        assert(RDTextureFormat._method_get_mipmaps_3905245786 != nil)
        let _method_set_texture_type_652343381_name = StringName(from: "set_texture_type")
        self._method_set_texture_type_652343381 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDTextureFormat._native_ptr(), _method_set_texture_type_652343381_name._native_ptr(), 652343381)
        assert(RDTextureFormat._method_set_texture_type_652343381 != nil)
        let _method_get_texture_type_4036357416_name = StringName(from: "get_texture_type")
        self._method_get_texture_type_4036357416 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDTextureFormat._native_ptr(), _method_get_texture_type_4036357416_name._native_ptr(), 4036357416)
        assert(RDTextureFormat._method_get_texture_type_4036357416 != nil)
        let _method_set_samples_3774171498_name = StringName(from: "set_samples")
        self._method_set_samples_3774171498 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDTextureFormat._native_ptr(), _method_set_samples_3774171498_name._native_ptr(), 3774171498)
        assert(RDTextureFormat._method_set_samples_3774171498 != nil)
        let _method_get_samples_407791724_name = StringName(from: "get_samples")
        self._method_get_samples_407791724 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDTextureFormat._native_ptr(), _method_get_samples_407791724_name._native_ptr(), 407791724)
        assert(RDTextureFormat._method_get_samples_407791724 != nil)
        let _method_set_usage_bits_245642367_name = StringName(from: "set_usage_bits")
        self._method_set_usage_bits_245642367 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDTextureFormat._native_ptr(), _method_set_usage_bits_245642367_name._native_ptr(), 245642367)
        assert(RDTextureFormat._method_set_usage_bits_245642367 != nil)
        let _method_get_usage_bits_1313398998_name = StringName(from: "get_usage_bits")
        self._method_get_usage_bits_1313398998 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDTextureFormat._native_ptr(), _method_get_usage_bits_1313398998_name._native_ptr(), 1313398998)
        assert(RDTextureFormat._method_get_usage_bits_1313398998 != nil)
        let _method_add_shareable_format_565531219_name = StringName(from: "add_shareable_format")
        self._method_add_shareable_format_565531219 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDTextureFormat._native_ptr(), _method_add_shareable_format_565531219_name._native_ptr(), 565531219)
        assert(RDTextureFormat._method_add_shareable_format_565531219 != nil)
        let _method_remove_shareable_format_565531219_name = StringName(from: "remove_shareable_format")
        self._method_remove_shareable_format_565531219 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDTextureFormat._native_ptr(), _method_remove_shareable_format_565531219_name._native_ptr(), 565531219)
        assert(RDTextureFormat._method_remove_shareable_format_565531219 != nil)
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
    public func set_width(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_width_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_width() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_width_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_height(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_height_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_height() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_height_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_depth(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_depth_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_depth() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_depth_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_array_layers(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_array_layers_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_array_layers() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_array_layers_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_mipmaps(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mipmaps_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_mipmaps() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mipmaps_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_texture_type(p_member: RenderingDevice.TextureType)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_type_652343381,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_texture_type() -> RenderingDevice.TextureType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_type_4036357416,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.TextureType(godot: __resPtr.pointee)
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
    public func set_usage_bits(p_member: RenderingDevice.TextureUsageBits)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_usage_bits_245642367,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_usage_bits() -> RenderingDevice.TextureUsageBits {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_usage_bits_1313398998,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.TextureUsageBits(godot: __resPtr.pointee)
    }
    public func add_shareable_format(format: RenderingDevice.DataFormat)  {
        withUnsafePointer(to: format.rawValue) { format_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(format_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_shareable_format_565531219,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_shareable_format(format: RenderingDevice.DataFormat)  {
        withUnsafePointer(to: format.rawValue) { format_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(format_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_shareable_format_565531219,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}