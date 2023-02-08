import godot_native

fileprivate var __godot_name_VisualShaderNodeTexture: StringName! = nil

/// Performs a 2D texture lookup within the visual shader graph.
/// 
/// Performs a lookup operation on the provided texture, with support for multiple texture sources to choose from.
open class VisualShaderNodeTexture : VisualShaderNode {

    public enum Source : Int32 {
        case SOURCE_TEXTURE = 0
        case SOURCE_SCREEN = 1
        case SOURCE_2D_TEXTURE = 2
        case SOURCE_2D_NORMAL = 3
        case SOURCE_DEPTH = 4
        case SOURCE_PORT = 5
        case SOURCE_3D_NORMAL = 6
        case SOURCE_ROUGHNESS = 7
        case SOURCE_MAX = 8
    }
    public enum TextureType : Int32 {
        case TYPE_DATA = 0
        case TYPE_COLOR = 1
        case TYPE_NORMAL_MAP = 2
        case TYPE_MAX = 3
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTexture }

    static var _method_set_source_905262939: GDExtensionMethodBindPtr! = nil
    static var _method_get_source_2896297444: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_type_986314081: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_type_3290430153: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeTexture = StringName(from: "VisualShaderNodeTexture")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_source_905262939_name = StringName(from: "set_source")
        self._method_set_source_905262939 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeTexture._native_ptr(), _method_set_source_905262939_name._native_ptr(), 905262939)
        assert(VisualShaderNodeTexture._method_set_source_905262939 != nil)
        let _method_get_source_2896297444_name = StringName(from: "get_source")
        self._method_get_source_2896297444 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeTexture._native_ptr(), _method_get_source_2896297444_name._native_ptr(), 2896297444)
        assert(VisualShaderNodeTexture._method_get_source_2896297444 != nil)
        let _method_set_texture_4051416890_name = StringName(from: "set_texture")
        self._method_set_texture_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeTexture._native_ptr(), _method_set_texture_4051416890_name._native_ptr(), 4051416890)
        assert(VisualShaderNodeTexture._method_set_texture_4051416890 != nil)
        let _method_get_texture_3635182373_name = StringName(from: "get_texture")
        self._method_get_texture_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeTexture._native_ptr(), _method_get_texture_3635182373_name._native_ptr(), 3635182373)
        assert(VisualShaderNodeTexture._method_get_texture_3635182373 != nil)
        let _method_set_texture_type_986314081_name = StringName(from: "set_texture_type")
        self._method_set_texture_type_986314081 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeTexture._native_ptr(), _method_set_texture_type_986314081_name._native_ptr(), 986314081)
        assert(VisualShaderNodeTexture._method_set_texture_type_986314081 != nil)
        let _method_get_texture_type_3290430153_name = StringName(from: "get_texture_type")
        self._method_get_texture_type_3290430153 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeTexture._native_ptr(), _method_get_texture_type_3290430153_name._native_ptr(), 3290430153)
        assert(VisualShaderNodeTexture._method_get_texture_type_3290430153 != nil)
    }

    public func set_source(value: VisualShaderNodeTexture.Source)  {
        withUnsafePointer(to: value.rawValue) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_source_905262939,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_source() -> VisualShaderNodeTexture.Source {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_source_2896297444,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeTexture.Source(godot: __resPtr.pointee)
    }
    public func set_texture(value: Texture2D)  {
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_4051416890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_texture() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func set_texture_type(value: VisualShaderNodeTexture.TextureType)  {
        withUnsafePointer(to: value.rawValue) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_type_986314081,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_texture_type() -> VisualShaderNodeTexture.TextureType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_type_3290430153,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeTexture.TextureType(godot: __resPtr.pointee)
    }
}