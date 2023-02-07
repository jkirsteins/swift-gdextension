import godot_native

fileprivate var __godot_name_Shader: StringName! = nil

/// A custom shader program.
/// 
/// This class allows you to define a custom shader program that can be used by a [ShaderMaterial]. Shaders allow you to write your own custom behavior for rendering objects or updating particle information. For a detailed explanation and usage, please see the tutorials linked below.
public class Shader : Resource {

    public enum Mode : Int32 {
        case MODE_SPATIAL = 0
        case MODE_CANVAS_ITEM = 1
        case MODE_PARTICLES = 2
        case MODE_SKY = 3
        case MODE_FOG = 4
    }

    public override class var __godot_name: StringName { __godot_name_Shader }

    static var _method_get_mode_3392948163: GDExtensionMethodBindPtr! = nil
    static var _method_set_code_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_code_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_default_texture_parameter_1628453603: GDExtensionMethodBindPtr! = nil
    static var _method_get_default_texture_parameter_3823812009: GDExtensionMethodBindPtr! = nil
    static var _method_get_shader_uniform_list_1230511656: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Shader = StringName(from: "Shader")

        let _method_get_mode_3392948163_name = StringName(from: "get_mode")
        self._method_get_mode_3392948163 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_mode_3392948163_name._native_ptr(), 3392948163)
        assert(Shader._method_get_mode_3392948163 != nil)
        let _method_set_code_83702148_name = StringName(from: "set_code")
        self._method_set_code_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_code_83702148_name._native_ptr(), 83702148)
        assert(Shader._method_set_code_83702148 != nil)
        let _method_get_code_201670096_name = StringName(from: "get_code")
        self._method_get_code_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_code_201670096_name._native_ptr(), 201670096)
        assert(Shader._method_get_code_201670096 != nil)
        let _method_set_default_texture_parameter_1628453603_name = StringName(from: "set_default_texture_parameter")
        self._method_set_default_texture_parameter_1628453603 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_default_texture_parameter_1628453603_name._native_ptr(), 1628453603)
        assert(Shader._method_set_default_texture_parameter_1628453603 != nil)
        let _method_get_default_texture_parameter_3823812009_name = StringName(from: "get_default_texture_parameter")
        self._method_get_default_texture_parameter_3823812009 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_default_texture_parameter_3823812009_name._native_ptr(), 3823812009)
        assert(Shader._method_get_default_texture_parameter_3823812009 != nil)
        let _method_get_shader_uniform_list_1230511656_name = StringName(from: "get_shader_uniform_list")
        self._method_get_shader_uniform_list_1230511656 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shader_uniform_list_1230511656_name._native_ptr(), 1230511656)
        assert(Shader._method_get_shader_uniform_list_1230511656 != nil)
    }

    public func get_mode() -> Shader.Mode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mode_3392948163,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Shader.Mode(from: __resPtr.pointee)
    }
    public func set_code(code: String)  {
        withUnsafePointer(to: code) { code_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(code_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_code_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_code() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_code_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_default_texture_parameter_1628453603,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_default_texture_parameter_3823812009,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shader_uniform_list_1230511656,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(from: __resPtr.pointee)
        }
    }
}