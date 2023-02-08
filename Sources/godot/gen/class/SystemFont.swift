import godot_native

fileprivate var __godot_name_SystemFont: StringName! = nil

/// Font loaded from a system font.
///  
/// [b]Note:[/b] This class is implemented on iOS, Linux, macOS and Windows, on other platforms it will fallback to default theme font.
/// 
/// [SystemFont] loads a font from a system font with the first matching name from [member font_names].
///  
/// It will attempt to match font style, but it's not guaranteed.
///  
/// The returned font might be part of a font collection or be a variable font with OpenType "weight", "width" and/or "italic" features set.
///  
/// You can create [FontVariation] of the system font for fine control over its features.
open class SystemFont : Font {

    

    public override class var __godot_name: StringName { __godot_name_SystemFont }

    static var _method_set_antialiasing_1669900: GDExtensionMethodBindPtr! = nil
    static var _method_get_antialiasing_4262718649: GDExtensionMethodBindPtr! = nil
    static var _method_set_generate_mipmaps_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_generate_mipmaps_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_allow_system_fallback_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_allow_system_fallback_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_force_autohinter_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_force_autohinter_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_hinting_1827459492: GDExtensionMethodBindPtr! = nil
    static var _method_get_hinting_3683214614: GDExtensionMethodBindPtr! = nil
    static var _method_set_subpixel_positioning_4225742182: GDExtensionMethodBindPtr! = nil
    static var _method_get_subpixel_positioning_1069238588: GDExtensionMethodBindPtr! = nil
    static var _method_set_multichannel_signed_distance_field_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_multichannel_signed_distance_field_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_msdf_pixel_range_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_msdf_pixel_range_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_msdf_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_msdf_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_oversampling_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_oversampling_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_font_names_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_set_font_names_4015028928: GDExtensionMethodBindPtr! = nil
    static var _method_get_font_italic_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_font_italic_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_font_weight_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_font_stretch_1286410249: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_SystemFont = StringName(from: "SystemFont")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_antialiasing_1669900_name = StringName(from: "set_antialiasing")
        self._method_set_antialiasing_1669900 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_set_antialiasing_1669900_name._native_ptr(), 1669900)
        assert(SystemFont._method_set_antialiasing_1669900 != nil)
        let _method_get_antialiasing_4262718649_name = StringName(from: "get_antialiasing")
        self._method_get_antialiasing_4262718649 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_get_antialiasing_4262718649_name._native_ptr(), 4262718649)
        assert(SystemFont._method_get_antialiasing_4262718649 != nil)
        let _method_set_generate_mipmaps_2586408642_name = StringName(from: "set_generate_mipmaps")
        self._method_set_generate_mipmaps_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_set_generate_mipmaps_2586408642_name._native_ptr(), 2586408642)
        assert(SystemFont._method_set_generate_mipmaps_2586408642 != nil)
        let _method_get_generate_mipmaps_36873697_name = StringName(from: "get_generate_mipmaps")
        self._method_get_generate_mipmaps_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_get_generate_mipmaps_36873697_name._native_ptr(), 36873697)
        assert(SystemFont._method_get_generate_mipmaps_36873697 != nil)
        let _method_set_allow_system_fallback_2586408642_name = StringName(from: "set_allow_system_fallback")
        self._method_set_allow_system_fallback_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_set_allow_system_fallback_2586408642_name._native_ptr(), 2586408642)
        assert(SystemFont._method_set_allow_system_fallback_2586408642 != nil)
        let _method_is_allow_system_fallback_36873697_name = StringName(from: "is_allow_system_fallback")
        self._method_is_allow_system_fallback_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_is_allow_system_fallback_36873697_name._native_ptr(), 36873697)
        assert(SystemFont._method_is_allow_system_fallback_36873697 != nil)
        let _method_set_force_autohinter_2586408642_name = StringName(from: "set_force_autohinter")
        self._method_set_force_autohinter_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_set_force_autohinter_2586408642_name._native_ptr(), 2586408642)
        assert(SystemFont._method_set_force_autohinter_2586408642 != nil)
        let _method_is_force_autohinter_36873697_name = StringName(from: "is_force_autohinter")
        self._method_is_force_autohinter_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_is_force_autohinter_36873697_name._native_ptr(), 36873697)
        assert(SystemFont._method_is_force_autohinter_36873697 != nil)
        let _method_set_hinting_1827459492_name = StringName(from: "set_hinting")
        self._method_set_hinting_1827459492 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_set_hinting_1827459492_name._native_ptr(), 1827459492)
        assert(SystemFont._method_set_hinting_1827459492 != nil)
        let _method_get_hinting_3683214614_name = StringName(from: "get_hinting")
        self._method_get_hinting_3683214614 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_get_hinting_3683214614_name._native_ptr(), 3683214614)
        assert(SystemFont._method_get_hinting_3683214614 != nil)
        let _method_set_subpixel_positioning_4225742182_name = StringName(from: "set_subpixel_positioning")
        self._method_set_subpixel_positioning_4225742182 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_set_subpixel_positioning_4225742182_name._native_ptr(), 4225742182)
        assert(SystemFont._method_set_subpixel_positioning_4225742182 != nil)
        let _method_get_subpixel_positioning_1069238588_name = StringName(from: "get_subpixel_positioning")
        self._method_get_subpixel_positioning_1069238588 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_get_subpixel_positioning_1069238588_name._native_ptr(), 1069238588)
        assert(SystemFont._method_get_subpixel_positioning_1069238588 != nil)
        let _method_set_multichannel_signed_distance_field_2586408642_name = StringName(from: "set_multichannel_signed_distance_field")
        self._method_set_multichannel_signed_distance_field_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_set_multichannel_signed_distance_field_2586408642_name._native_ptr(), 2586408642)
        assert(SystemFont._method_set_multichannel_signed_distance_field_2586408642 != nil)
        let _method_is_multichannel_signed_distance_field_36873697_name = StringName(from: "is_multichannel_signed_distance_field")
        self._method_is_multichannel_signed_distance_field_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_is_multichannel_signed_distance_field_36873697_name._native_ptr(), 36873697)
        assert(SystemFont._method_is_multichannel_signed_distance_field_36873697 != nil)
        let _method_set_msdf_pixel_range_1286410249_name = StringName(from: "set_msdf_pixel_range")
        self._method_set_msdf_pixel_range_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_set_msdf_pixel_range_1286410249_name._native_ptr(), 1286410249)
        assert(SystemFont._method_set_msdf_pixel_range_1286410249 != nil)
        let _method_get_msdf_pixel_range_3905245786_name = StringName(from: "get_msdf_pixel_range")
        self._method_get_msdf_pixel_range_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_get_msdf_pixel_range_3905245786_name._native_ptr(), 3905245786)
        assert(SystemFont._method_get_msdf_pixel_range_3905245786 != nil)
        let _method_set_msdf_size_1286410249_name = StringName(from: "set_msdf_size")
        self._method_set_msdf_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_set_msdf_size_1286410249_name._native_ptr(), 1286410249)
        assert(SystemFont._method_set_msdf_size_1286410249 != nil)
        let _method_get_msdf_size_3905245786_name = StringName(from: "get_msdf_size")
        self._method_get_msdf_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_get_msdf_size_3905245786_name._native_ptr(), 3905245786)
        assert(SystemFont._method_get_msdf_size_3905245786 != nil)
        let _method_set_oversampling_373806689_name = StringName(from: "set_oversampling")
        self._method_set_oversampling_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_set_oversampling_373806689_name._native_ptr(), 373806689)
        assert(SystemFont._method_set_oversampling_373806689 != nil)
        let _method_get_oversampling_1740695150_name = StringName(from: "get_oversampling")
        self._method_get_oversampling_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_get_oversampling_1740695150_name._native_ptr(), 1740695150)
        assert(SystemFont._method_get_oversampling_1740695150 != nil)
        let _method_get_font_names_1139954409_name = StringName(from: "get_font_names")
        self._method_get_font_names_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_get_font_names_1139954409_name._native_ptr(), 1139954409)
        assert(SystemFont._method_get_font_names_1139954409 != nil)
        let _method_set_font_names_4015028928_name = StringName(from: "set_font_names")
        self._method_set_font_names_4015028928 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_set_font_names_4015028928_name._native_ptr(), 4015028928)
        assert(SystemFont._method_set_font_names_4015028928 != nil)
        let _method_get_font_italic_36873697_name = StringName(from: "get_font_italic")
        self._method_get_font_italic_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_get_font_italic_36873697_name._native_ptr(), 36873697)
        assert(SystemFont._method_get_font_italic_36873697 != nil)
        let _method_set_font_italic_2586408642_name = StringName(from: "set_font_italic")
        self._method_set_font_italic_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_set_font_italic_2586408642_name._native_ptr(), 2586408642)
        assert(SystemFont._method_set_font_italic_2586408642 != nil)
        let _method_set_font_weight_1286410249_name = StringName(from: "set_font_weight")
        self._method_set_font_weight_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_set_font_weight_1286410249_name._native_ptr(), 1286410249)
        assert(SystemFont._method_set_font_weight_1286410249 != nil)
        let _method_set_font_stretch_1286410249_name = StringName(from: "set_font_stretch")
        self._method_set_font_stretch_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_SystemFont._native_ptr(), _method_set_font_stretch_1286410249_name._native_ptr(), 1286410249)
        assert(SystemFont._method_set_font_stretch_1286410249 != nil)
    }

    public func set_antialiasing(antialiasing: TextServer.FontAntialiasing)  {
        withUnsafePointer(to: antialiasing.rawValue) { antialiasing_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(antialiasing_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_antialiasing_1669900,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_antialiasing() -> TextServer.FontAntialiasing {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_antialiasing_4262718649,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.FontAntialiasing(godot: __resPtr.pointee)
    }
    public func set_generate_mipmaps(generate_mipmaps: UInt8)  {
        withUnsafePointer(to: generate_mipmaps) { generate_mipmaps_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(generate_mipmaps_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_generate_mipmaps_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_generate_mipmaps() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_generate_mipmaps_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_allow_system_fallback(allow_system_fallback: UInt8)  {
        withUnsafePointer(to: allow_system_fallback) { allow_system_fallback_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(allow_system_fallback_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_allow_system_fallback_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_allow_system_fallback() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_allow_system_fallback_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_force_autohinter(force_autohinter: UInt8)  {
        withUnsafePointer(to: force_autohinter) { force_autohinter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_autohinter_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_force_autohinter_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_force_autohinter() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_force_autohinter_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_hinting(hinting: TextServer.Hinting)  {
        withUnsafePointer(to: hinting.rawValue) { hinting_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hinting_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_hinting_1827459492,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_hinting() -> TextServer.Hinting {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_hinting_3683214614,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.Hinting(godot: __resPtr.pointee)
    }
    public func set_subpixel_positioning(subpixel_positioning: TextServer.SubpixelPositioning)  {
        withUnsafePointer(to: subpixel_positioning.rawValue) { subpixel_positioning_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(subpixel_positioning_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_subpixel_positioning_4225742182,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_subpixel_positioning() -> TextServer.SubpixelPositioning {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_subpixel_positioning_1069238588,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.SubpixelPositioning(godot: __resPtr.pointee)
    }
    public func set_multichannel_signed_distance_field(msdf: UInt8)  {
        withUnsafePointer(to: msdf) { msdf_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(msdf_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_multichannel_signed_distance_field_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_multichannel_signed_distance_field() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_multichannel_signed_distance_field_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_msdf_pixel_range(msdf_pixel_range: Int64)  {
        withUnsafePointer(to: msdf_pixel_range) { msdf_pixel_range_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(msdf_pixel_range_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_msdf_pixel_range_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_msdf_pixel_range() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_msdf_pixel_range_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_msdf_size(msdf_size: Int64)  {
        withUnsafePointer(to: msdf_size) { msdf_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(msdf_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_msdf_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_msdf_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_msdf_size_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_oversampling(oversampling: Float64)  {
        withUnsafePointer(to: oversampling) { oversampling_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(oversampling_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_oversampling_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_oversampling() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_oversampling_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_font_names() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_font_names_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func set_font_names(names: PackedStringArray)  {
        let names_native = names._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(names_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_font_names_4015028928,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_font_italic() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_font_italic_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_font_italic(italic: UInt8)  {
        withUnsafePointer(to: italic) { italic_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(italic_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_font_italic_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_font_weight(weight: Int64)  {
        withUnsafePointer(to: weight) { weight_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(weight_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_font_weight_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_font_stretch(stretch: Int64)  {
        withUnsafePointer(to: stretch) { stretch_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stretch_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_font_stretch_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}