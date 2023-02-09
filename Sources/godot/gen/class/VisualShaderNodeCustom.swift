import godot_native

fileprivate var __godot_name_VisualShaderNodeCustom: StringName! = nil

/// Virtual class to define custom [VisualShaderNode]s for use in the Visual Shader Editor.
/// 
/// By inheriting this class you can create a custom [VisualShader] script addon which will be automatically added to the Visual Shader Editor. The [VisualShaderNode]'s behavior is defined by overriding the provided virtual methods.
///  
/// In order for the node to be registered as an editor addon, you must use the [code]@tool[/code] annotation and provide a [code]class_name[/code] for your custom script. For example:
///  
/// [codeblock]
///  
/// @tool
///  
/// extends VisualShaderNodeCustom
///  
/// class_name VisualShaderNodeNoise
///  
/// [/codeblock]
open class VisualShaderNodeCustom : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeCustom }

    static var _method__get_name_0: StringName! = nil
    static var _method__get_description_0: StringName! = nil
    static var _method__get_category_0: StringName! = nil
    static var _method__get_return_icon_type_0: StringName! = nil
    static var _method__get_input_port_count_0: StringName! = nil
    static var _method__get_input_port_type_0: StringName! = nil
    static var _method__get_input_port_name_0: StringName! = nil
    static var _method__get_output_port_count_0: StringName! = nil
    static var _method__get_output_port_type_0: StringName! = nil
    static var _method__get_output_port_name_0: StringName! = nil
    static var _method__get_code_0: StringName! = nil
    static var _method__get_func_code_0: StringName! = nil
    static var _method__get_global_code_0: StringName! = nil
    static var _method__is_highend_0: StringName! = nil
    static var _method__is_available_0: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeCustom == nil)
        __godot_name_VisualShaderNodeCustom = StringName(from: "VisualShaderNodeCustom")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    public func _get_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return godot.String(godot: __resPtr.pointee)
    }
    public func _get_description() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return godot.String(godot: __resPtr.pointee)
    }
    public func _get_category() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return godot.String(godot: __resPtr.pointee)
    }
    public func _get_return_icon_type() -> VisualShaderNode.PortType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return VisualShaderNode.PortType(godot: __resPtr.pointee)
    }
    public func _get_input_port_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return Int64(godot: __resPtr.pointee)
    }
    public func _get_input_port_type(port: Int64) -> VisualShaderNode.PortType {
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return VisualShaderNode.PortType(godot: __resPtr.pointee)
        }
    }
    public func _get_input_port_name(port: Int64) -> godot.String {
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func _get_output_port_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return Int64(godot: __resPtr.pointee)
    }
    public func _get_output_port_type(port: Int64) -> VisualShaderNode.PortType {
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return VisualShaderNode.PortType(godot: __resPtr.pointee)
        }
    }
    public func _get_output_port_name(port: Int64) -> godot.String {
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func _get_code(input_vars: [godot.String], output_vars: [godot.String], mode: Shader.Mode, `type`: VisualShader.`Typ`) -> godot.String {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let output_vars_native = output_vars._native_ptr()
        let input_vars_native = input_vars._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(input_vars_native), .init(output_vars_native), .init(mode_native), .init(type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return godot.String(godot: __resPtr.pointee)
        }
        }
    }
    public func _get_func_code(mode: Shader.Mode, `type`: VisualShader.`Typ`) -> godot.String {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native), .init(type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return godot.String(godot: __resPtr.pointee)
        }
        }
    }
    public func _get_global_code(mode: Shader.Mode) -> godot.String {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func _is_highend() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _is_available(mode: Shader.Mode, `type`: VisualShader.`Typ`) -> UInt8 {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native), .init(type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
        }
        }
    }
}