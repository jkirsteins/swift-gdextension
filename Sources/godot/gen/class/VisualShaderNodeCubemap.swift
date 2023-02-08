import godot_native

fileprivate var __godot_name_VisualShaderNodeCubemap: StringName! = nil

/// A [Cubemap] sampling node to be used within the visual shader graph.
/// 
/// Translated to [code]texture(cubemap, vec3)[/code] in the shader language. Returns a color vector and alpha channel as scalar.
open class VisualShaderNodeCubemap : VisualShaderNode {

    public enum Source : Int32 {
        case SOURCE_TEXTURE = 0
        case SOURCE_PORT = 1
        case SOURCE_MAX = 2
    }
    public enum TextureType : Int32 {
        case TYPE_DATA = 0
        case TYPE_COLOR = 1
        case TYPE_NORMAL_MAP = 2
        case TYPE_MAX = 3
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeCubemap }

    static var _method_set_source_1625400621: GDExtensionMethodBindPtr! = nil
    static var _method_get_source_2222048781: GDExtensionMethodBindPtr! = nil
    static var _method_set_cube_map_2219800736: GDExtensionMethodBindPtr! = nil
    static var _method_get_cube_map_1772111058: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_type_1899718876: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_type_3356498888: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeCubemap = StringName(from: "VisualShaderNodeCubemap")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_source_1625400621_name = StringName(from: "set_source")
        self._method_set_source_1625400621 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeCubemap._native_ptr(), _method_set_source_1625400621_name._native_ptr(), 1625400621)
        assert(VisualShaderNodeCubemap._method_set_source_1625400621 != nil)
        let _method_get_source_2222048781_name = StringName(from: "get_source")
        self._method_get_source_2222048781 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeCubemap._native_ptr(), _method_get_source_2222048781_name._native_ptr(), 2222048781)
        assert(VisualShaderNodeCubemap._method_get_source_2222048781 != nil)
        let _method_set_cube_map_2219800736_name = StringName(from: "set_cube_map")
        self._method_set_cube_map_2219800736 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeCubemap._native_ptr(), _method_set_cube_map_2219800736_name._native_ptr(), 2219800736)
        assert(VisualShaderNodeCubemap._method_set_cube_map_2219800736 != nil)
        let _method_get_cube_map_1772111058_name = StringName(from: "get_cube_map")
        self._method_get_cube_map_1772111058 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeCubemap._native_ptr(), _method_get_cube_map_1772111058_name._native_ptr(), 1772111058)
        assert(VisualShaderNodeCubemap._method_get_cube_map_1772111058 != nil)
        let _method_set_texture_type_1899718876_name = StringName(from: "set_texture_type")
        self._method_set_texture_type_1899718876 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeCubemap._native_ptr(), _method_set_texture_type_1899718876_name._native_ptr(), 1899718876)
        assert(VisualShaderNodeCubemap._method_set_texture_type_1899718876 != nil)
        let _method_get_texture_type_3356498888_name = StringName(from: "get_texture_type")
        self._method_get_texture_type_3356498888 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeCubemap._native_ptr(), _method_get_texture_type_3356498888_name._native_ptr(), 3356498888)
        assert(VisualShaderNodeCubemap._method_get_texture_type_3356498888 != nil)
    }

    public func set_source(value: VisualShaderNodeCubemap.Source)  {
        withUnsafePointer(to: value.rawValue) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_source_1625400621,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_source() -> VisualShaderNodeCubemap.Source {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_source_2222048781,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeCubemap.Source(godot: __resPtr.pointee)
    }
    public func set_cube_map(value: Cubemap)  {
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cube_map_2219800736,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_cube_map() -> Cubemap {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cube_map_1772111058,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Cubemap(godot: __resPtr.pointee)
    }
    public func set_texture_type(value: VisualShaderNodeCubemap.TextureType)  {
        withUnsafePointer(to: value.rawValue) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_type_1899718876,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_texture_type() -> VisualShaderNodeCubemap.TextureType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_type_3356498888,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeCubemap.TextureType(godot: __resPtr.pointee)
    }
}