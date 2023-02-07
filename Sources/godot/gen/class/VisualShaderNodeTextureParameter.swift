import godot_native

fileprivate var __godot_name_VisualShaderNodeTextureParameter: StringName! = nil

/// Performs a uniform texture lookup within the visual shader graph.
/// 
/// Performs a lookup operation on the texture provided as a uniform for the shader.
public class VisualShaderNodeTextureParameter : VisualShaderNodeParameter {

    public enum TextureType : Int32 {
        case TYPE_DATA = 0
        case TYPE_COLOR = 1
        case TYPE_NORMAL_MAP = 2
        case TYPE_ANISOTROPY = 3
        case TYPE_MAX = 4
    }
    public enum ColorDefault : Int32 {
        case COLOR_DEFAULT_WHITE = 0
        case COLOR_DEFAULT_BLACK = 1
        case COLOR_DEFAULT_TRANSPARENT = 2
        case COLOR_DEFAULT_MAX = 3
    }
    public enum TextureFilter : Int32 {
        case FILTER_DEFAULT = 0
        case FILTER_NEAREST = 1
        case FILTER_LINEAR = 2
        case FILTER_NEAREST_MIPMAP = 3
        case FILTER_LINEAR_MIPMAP = 4
        case FILTER_NEAREST_MIPMAP_ANISOTROPIC = 5
        case FILTER_LINEAR_MIPMAP_ANISOTROPIC = 6
        case FILTER_MAX = 7
    }
    public enum TextureRepeat : Int32 {
        case REPEAT_DEFAULT = 0
        case REPEAT_ENABLED = 1
        case REPEAT_DISABLED = 2
        case REPEAT_MAX = 3
    }
    public enum TextureSource : Int32 {
        case SOURCE_NONE = 0
        case SOURCE_SCREEN = 1
        case SOURCE_DEPTH = 2
        case SOURCE_NORMAL_ROUGHNESS = 3
        case SOURCE_MAX = 4
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTextureParameter }

    static var _method_set_texture_type_2227296876: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_type_367922070: GDExtensionMethodBindPtr! = nil
    static var _method_set_color_default_4217624432: GDExtensionMethodBindPtr! = nil
    static var _method_get_color_default_3837060134: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_filter_2147684752: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_filter_4184490817: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_repeat_2036143070: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_repeat_1690132794: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_source_1212687372: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_source_2039092262: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeTextureParameter = StringName(from: "VisualShaderNodeTextureParameter")

        let _method_set_texture_type_2227296876_name = StringName(from: "set_texture_type")
        self._method_set_texture_type_2227296876 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_type_2227296876_name._native_ptr(), 2227296876)
        assert(VisualShaderNodeTextureParameter._method_set_texture_type_2227296876 != nil)
        let _method_get_texture_type_367922070_name = StringName(from: "get_texture_type")
        self._method_get_texture_type_367922070 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_type_367922070_name._native_ptr(), 367922070)
        assert(VisualShaderNodeTextureParameter._method_get_texture_type_367922070 != nil)
        let _method_set_color_default_4217624432_name = StringName(from: "set_color_default")
        self._method_set_color_default_4217624432 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_color_default_4217624432_name._native_ptr(), 4217624432)
        assert(VisualShaderNodeTextureParameter._method_set_color_default_4217624432 != nil)
        let _method_get_color_default_3837060134_name = StringName(from: "get_color_default")
        self._method_get_color_default_3837060134 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_color_default_3837060134_name._native_ptr(), 3837060134)
        assert(VisualShaderNodeTextureParameter._method_get_color_default_3837060134 != nil)
        let _method_set_texture_filter_2147684752_name = StringName(from: "set_texture_filter")
        self._method_set_texture_filter_2147684752 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_filter_2147684752_name._native_ptr(), 2147684752)
        assert(VisualShaderNodeTextureParameter._method_set_texture_filter_2147684752 != nil)
        let _method_get_texture_filter_4184490817_name = StringName(from: "get_texture_filter")
        self._method_get_texture_filter_4184490817 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_filter_4184490817_name._native_ptr(), 4184490817)
        assert(VisualShaderNodeTextureParameter._method_get_texture_filter_4184490817 != nil)
        let _method_set_texture_repeat_2036143070_name = StringName(from: "set_texture_repeat")
        self._method_set_texture_repeat_2036143070 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_repeat_2036143070_name._native_ptr(), 2036143070)
        assert(VisualShaderNodeTextureParameter._method_set_texture_repeat_2036143070 != nil)
        let _method_get_texture_repeat_1690132794_name = StringName(from: "get_texture_repeat")
        self._method_get_texture_repeat_1690132794 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_repeat_1690132794_name._native_ptr(), 1690132794)
        assert(VisualShaderNodeTextureParameter._method_get_texture_repeat_1690132794 != nil)
        let _method_set_texture_source_1212687372_name = StringName(from: "set_texture_source")
        self._method_set_texture_source_1212687372 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_source_1212687372_name._native_ptr(), 1212687372)
        assert(VisualShaderNodeTextureParameter._method_set_texture_source_1212687372 != nil)
        let _method_get_texture_source_2039092262_name = StringName(from: "get_texture_source")
        self._method_get_texture_source_2039092262 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_source_2039092262_name._native_ptr(), 2039092262)
        assert(VisualShaderNodeTextureParameter._method_get_texture_source_2039092262 != nil)
    }

    public func set_texture_type(`type`: VisualShaderNodeTextureParameter.TextureType)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_type_2227296876,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_texture_type() -> VisualShaderNodeTextureParameter.TextureType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_type_367922070,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeTextureParameter.TextureType(from: __resPtr.pointee)
    }
    public func set_color_default(color: VisualShaderNodeTextureParameter.ColorDefault)  {
        withUnsafePointer(to: color.rawValue) { color_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_color_default_4217624432,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_color_default() -> VisualShaderNodeTextureParameter.ColorDefault {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_color_default_3837060134,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeTextureParameter.ColorDefault(from: __resPtr.pointee)
    }
    public func set_texture_filter(filter: VisualShaderNodeTextureParameter.TextureFilter)  {
        withUnsafePointer(to: filter.rawValue) { filter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filter_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_filter_2147684752,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_texture_filter() -> VisualShaderNodeTextureParameter.TextureFilter {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_filter_4184490817,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeTextureParameter.TextureFilter(from: __resPtr.pointee)
    }
    public func set_texture_repeat(`repeat`: VisualShaderNodeTextureParameter.TextureRepeat)  {
        withUnsafePointer(to: `repeat`.rawValue) { repeat_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(repeat_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_repeat_2036143070,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_texture_repeat() -> VisualShaderNodeTextureParameter.TextureRepeat {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_repeat_1690132794,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeTextureParameter.TextureRepeat(from: __resPtr.pointee)
    }
    public func set_texture_source(source: VisualShaderNodeTextureParameter.TextureSource)  {
        withUnsafePointer(to: source.rawValue) { source_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_source_1212687372,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_texture_source() -> VisualShaderNodeTextureParameter.TextureSource {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_source_2039092262,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeTextureParameter.TextureSource(from: __resPtr.pointee)
    }
}