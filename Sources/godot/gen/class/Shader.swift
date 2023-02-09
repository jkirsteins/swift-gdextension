import godot_native

fileprivate var __godot_name_Shader: StringName! = nil

/// A custom shader program.
/// 
/// This class allows you to define a custom shader program that can be used by a [ShaderMaterial]. Shaders allow you to write your own custom behavior for rendering objects or updating particle information. For a detailed explanation and usage, please see the tutorials linked below.
open class Shader : Resource {

    public enum Mode : Int32 {
        case MODE_SPATIAL = 0
        case MODE_CANVAS_ITEM = 1
        case MODE_PARTICLES = 2
        case MODE_SKY = 3
        case MODE_FOG = 4
    }

    public override class var __godot_name: StringName { __godot_name_Shader }

    static var _method_get_mode_3392948163: StringName! = nil
    static var _method_set_code_83702148: StringName! = nil
    static var _method_get_code_201670096: StringName! = nil
    static var _method_set_default_texture_parameter_1628453603: StringName! = nil
    static var _method_get_default_texture_parameter_3823812009: StringName! = nil
    static var _method_get_shader_uniform_list_1230511656: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Shader == nil)
        __godot_name_Shader = StringName(from: "Shader")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_mode_3392948163 = StringName(from: "get_mode")
        assert(self._method_get_mode_3392948163 != nil)
        self._method_set_code_83702148 = StringName(from: "set_code")
        assert(self._method_set_code_83702148 != nil)
        self._method_get_code_201670096 = StringName(from: "get_code")
        assert(self._method_get_code_201670096 != nil)
        self._method_set_default_texture_parameter_1628453603 = StringName(from: "set_default_texture_parameter")
        assert(self._method_set_default_texture_parameter_1628453603 != nil)
        self._method_get_default_texture_parameter_3823812009 = StringName(from: "get_default_texture_parameter")
        assert(self._method_get_default_texture_parameter_3823812009 != nil)
        self._method_get_shader_uniform_list_1230511656 = StringName(from: "get_shader_uniform_list")
        assert(self._method_get_shader_uniform_list_1230511656 != nil)
    }

    public func get_mode() -> Shader.Mode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_mode_3392948163._native_ptr(),
                    3392948163)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Shader.Mode(godot: __resPtr.pointee)
    }
    public func set_code(code: godot.String)  {
        let code_native = code._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(code_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_code_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_code() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_code_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_default_texture_parameter(name: StringName, texture: Texture2D, index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let texture_native = texture._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(texture_native), .init(index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_default_texture_parameter_1628453603._native_ptr(),
                    1628453603)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_default_texture_parameter(name: StringName, index: Int64) -> Texture2D {
        withUnsafePointer(to: index) { index_native in
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_default_texture_parameter_3823812009._native_ptr(),
                    3823812009)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
        }
    }
    public func get_shader_uniform_list(get_groups: UInt8) -> Array {
        withUnsafePointer(to: get_groups) { get_groups_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(get_groups_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_shader_uniform_list_1230511656._native_ptr(),
                    1230511656)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
        }
    }
}