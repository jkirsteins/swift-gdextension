import godot_native

fileprivate var __godot_name_VisualShaderNode: StringName! = nil

/// Base class for nodes in a visual shader graph.
/// 
/// Visual shader graphs consist of various nodes. Each node in the graph is a separate object and they are represented as a rectangular boxes with title and a set of properties. Each node has also connection ports that allow to connect it to another nodes and control the flow of the shader.
public class VisualShaderNode : Resource {

    public enum PortType : Int32 {
        case PORT_TYPE_SCALAR = 0
        case PORT_TYPE_SCALAR_INT = 1
        case PORT_TYPE_SCALAR_UINT = 2
        case PORT_TYPE_VECTOR_2D = 3
        case PORT_TYPE_VECTOR_3D = 4
        case PORT_TYPE_VECTOR_4D = 5
        case PORT_TYPE_BOOLEAN = 6
        case PORT_TYPE_TRANSFORM = 7
        case PORT_TYPE_SAMPLER = 8
        case PORT_TYPE_MAX = 9
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNode }

    static var _method_set_output_port_for_preview_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_output_port_for_preview_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_input_port_default_value_150923387: GDExtensionMethodBindPtr! = nil
    static var _method_get_input_port_default_value_4227898402: GDExtensionMethodBindPtr! = nil
    static var _method_remove_input_port_default_value_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_clear_default_input_values_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_default_input_values_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_get_default_input_values_3995934104: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNode = StringName(from: "VisualShaderNode")

        let _method_set_output_port_for_preview_1286410249_name = StringName(from: "set_output_port_for_preview")
        self._method_set_output_port_for_preview_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_output_port_for_preview_1286410249_name._native_ptr(), 1286410249)
        assert(VisualShaderNode._method_set_output_port_for_preview_1286410249 != nil)
        let _method_get_output_port_for_preview_3905245786_name = StringName(from: "get_output_port_for_preview")
        self._method_get_output_port_for_preview_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_output_port_for_preview_3905245786_name._native_ptr(), 3905245786)
        assert(VisualShaderNode._method_get_output_port_for_preview_3905245786 != nil)
        let _method_set_input_port_default_value_150923387_name = StringName(from: "set_input_port_default_value")
        self._method_set_input_port_default_value_150923387 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_input_port_default_value_150923387_name._native_ptr(), 150923387)
        assert(VisualShaderNode._method_set_input_port_default_value_150923387 != nil)
        let _method_get_input_port_default_value_4227898402_name = StringName(from: "get_input_port_default_value")
        self._method_get_input_port_default_value_4227898402 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_input_port_default_value_4227898402_name._native_ptr(), 4227898402)
        assert(VisualShaderNode._method_get_input_port_default_value_4227898402 != nil)
        let _method_remove_input_port_default_value_1286410249_name = StringName(from: "remove_input_port_default_value")
        self._method_remove_input_port_default_value_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_input_port_default_value_1286410249_name._native_ptr(), 1286410249)
        assert(VisualShaderNode._method_remove_input_port_default_value_1286410249 != nil)
        let _method_clear_default_input_values_3218959716_name = StringName(from: "clear_default_input_values")
        self._method_clear_default_input_values_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_default_input_values_3218959716_name._native_ptr(), 3218959716)
        assert(VisualShaderNode._method_clear_default_input_values_3218959716 != nil)
        let _method_set_default_input_values_381264803_name = StringName(from: "set_default_input_values")
        self._method_set_default_input_values_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_default_input_values_381264803_name._native_ptr(), 381264803)
        assert(VisualShaderNode._method_set_default_input_values_381264803 != nil)
        let _method_get_default_input_values_3995934104_name = StringName(from: "get_default_input_values")
        self._method_get_default_input_values_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_default_input_values_3995934104_name._native_ptr(), 3995934104)
        assert(VisualShaderNode._method_get_default_input_values_3995934104 != nil)
    }

    public func set_output_port_for_preview(port: Int64)  {
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_output_port_for_preview_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_output_port_for_preview() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_output_port_for_preview_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_input_port_default_value(port: Int64, value: Variant, prev_value: Variant)  {
        withUnsafePointer(to: port) { port_native in
        let prev_value_native = prev_value._native_ptr()
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native), .init(value_native), .init(prev_value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_input_port_default_value_150923387,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_input_port_default_value(port: Int64) -> Variant {
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_input_port_default_value_4227898402,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
        }
    }
    public func remove_input_port_default_value(port: Int64)  {
        withUnsafePointer(to: port) { port_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(port_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_input_port_default_value_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func clear_default_input_values()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_default_input_values_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_default_input_values(values: Array)  {
        let values_native = values._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(values_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_default_input_values_381264803,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_default_input_values() -> Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_default_input_values_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(from: __resPtr.pointee)
    }
}