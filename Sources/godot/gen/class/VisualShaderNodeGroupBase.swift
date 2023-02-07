import godot_native

fileprivate var __godot_name_VisualShaderNodeGroupBase: StringName! = nil

/// Base class for a family of nodes with variable number of input and output ports within the visual shader graph.
/// 
/// Currently, has no direct usage, use the derived classes instead.
public class VisualShaderNodeGroupBase : VisualShaderNodeResizableBase {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeGroupBase }

    static var _method_set_inputs_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_inputs_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_outputs_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_outputs_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_is_valid_port_name_3927539163: GDExtensionMethodBindPtr! = nil
    static var _method_add_input_port_2285447957: GDExtensionMethodBindPtr! = nil
    static var _method_remove_input_port_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_input_port_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_has_input_port_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_clear_input_ports_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_add_output_port_2285447957: GDExtensionMethodBindPtr! = nil
    static var _method_remove_output_port_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_output_port_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_has_output_port_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_clear_output_ports_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_input_port_name_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_set_input_port_type_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_set_output_port_name_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_set_output_port_type_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_get_free_input_port_id_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_free_output_port_id_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeGroupBase = StringName(from: "VisualShaderNodeGroupBase")

        let _method_set_inputs_83702148_name = StringName(from: "set_inputs")
        self._method_set_inputs_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_inputs_83702148_name._native_ptr(), 83702148)
        assert(VisualShaderNodeGroupBase._method_set_inputs_83702148 != nil)
        let _method_get_inputs_201670096_name = StringName(from: "get_inputs")
        self._method_get_inputs_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_inputs_201670096_name._native_ptr(), 201670096)
        assert(VisualShaderNodeGroupBase._method_get_inputs_201670096 != nil)
        let _method_set_outputs_83702148_name = StringName(from: "set_outputs")
        self._method_set_outputs_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_outputs_83702148_name._native_ptr(), 83702148)
        assert(VisualShaderNodeGroupBase._method_set_outputs_83702148 != nil)
        let _method_get_outputs_201670096_name = StringName(from: "get_outputs")
        self._method_get_outputs_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_outputs_201670096_name._native_ptr(), 201670096)
        assert(VisualShaderNodeGroupBase._method_get_outputs_201670096 != nil)
        let _method_is_valid_port_name_3927539163_name = StringName(from: "is_valid_port_name")
        self._method_is_valid_port_name_3927539163 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_valid_port_name_3927539163_name._native_ptr(), 3927539163)
        assert(VisualShaderNodeGroupBase._method_is_valid_port_name_3927539163 != nil)
        let _method_add_input_port_2285447957_name = StringName(from: "add_input_port")
        self._method_add_input_port_2285447957 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_input_port_2285447957_name._native_ptr(), 2285447957)
        assert(VisualShaderNodeGroupBase._method_add_input_port_2285447957 != nil)
        let _method_remove_input_port_1286410249_name = StringName(from: "remove_input_port")
        self._method_remove_input_port_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_input_port_1286410249_name._native_ptr(), 1286410249)
        assert(VisualShaderNodeGroupBase._method_remove_input_port_1286410249 != nil)
        let _method_get_input_port_count_3905245786_name = StringName(from: "get_input_port_count")
        self._method_get_input_port_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_input_port_count_3905245786_name._native_ptr(), 3905245786)
        assert(VisualShaderNodeGroupBase._method_get_input_port_count_3905245786 != nil)
        let _method_has_input_port_1116898809_name = StringName(from: "has_input_port")
        self._method_has_input_port_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_input_port_1116898809_name._native_ptr(), 1116898809)
        assert(VisualShaderNodeGroupBase._method_has_input_port_1116898809 != nil)
        let _method_clear_input_ports_3218959716_name = StringName(from: "clear_input_ports")
        self._method_clear_input_ports_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_input_ports_3218959716_name._native_ptr(), 3218959716)
        assert(VisualShaderNodeGroupBase._method_clear_input_ports_3218959716 != nil)
        let _method_add_output_port_2285447957_name = StringName(from: "add_output_port")
        self._method_add_output_port_2285447957 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_output_port_2285447957_name._native_ptr(), 2285447957)
        assert(VisualShaderNodeGroupBase._method_add_output_port_2285447957 != nil)
        let _method_remove_output_port_1286410249_name = StringName(from: "remove_output_port")
        self._method_remove_output_port_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_output_port_1286410249_name._native_ptr(), 1286410249)
        assert(VisualShaderNodeGroupBase._method_remove_output_port_1286410249 != nil)
        let _method_get_output_port_count_3905245786_name = StringName(from: "get_output_port_count")
        self._method_get_output_port_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_output_port_count_3905245786_name._native_ptr(), 3905245786)
        assert(VisualShaderNodeGroupBase._method_get_output_port_count_3905245786 != nil)
        let _method_has_output_port_1116898809_name = StringName(from: "has_output_port")
        self._method_has_output_port_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_output_port_1116898809_name._native_ptr(), 1116898809)
        assert(VisualShaderNodeGroupBase._method_has_output_port_1116898809 != nil)
        let _method_clear_output_ports_3218959716_name = StringName(from: "clear_output_ports")
        self._method_clear_output_ports_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_output_ports_3218959716_name._native_ptr(), 3218959716)
        assert(VisualShaderNodeGroupBase._method_clear_output_ports_3218959716 != nil)
        let _method_set_input_port_name_501894301_name = StringName(from: "set_input_port_name")
        self._method_set_input_port_name_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_input_port_name_501894301_name._native_ptr(), 501894301)
        assert(VisualShaderNodeGroupBase._method_set_input_port_name_501894301 != nil)
        let _method_set_input_port_type_3937882851_name = StringName(from: "set_input_port_type")
        self._method_set_input_port_type_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_input_port_type_3937882851_name._native_ptr(), 3937882851)
        assert(VisualShaderNodeGroupBase._method_set_input_port_type_3937882851 != nil)
        let _method_set_output_port_name_501894301_name = StringName(from: "set_output_port_name")
        self._method_set_output_port_name_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_output_port_name_501894301_name._native_ptr(), 501894301)
        assert(VisualShaderNodeGroupBase._method_set_output_port_name_501894301 != nil)
        let _method_set_output_port_type_3937882851_name = StringName(from: "set_output_port_type")
        self._method_set_output_port_type_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_output_port_type_3937882851_name._native_ptr(), 3937882851)
        assert(VisualShaderNodeGroupBase._method_set_output_port_type_3937882851 != nil)
        let _method_get_free_input_port_id_3905245786_name = StringName(from: "get_free_input_port_id")
        self._method_get_free_input_port_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_free_input_port_id_3905245786_name._native_ptr(), 3905245786)
        assert(VisualShaderNodeGroupBase._method_get_free_input_port_id_3905245786 != nil)
        let _method_get_free_output_port_id_3905245786_name = StringName(from: "get_free_output_port_id")
        self._method_get_free_output_port_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_free_output_port_id_3905245786_name._native_ptr(), 3905245786)
        assert(VisualShaderNodeGroupBase._method_get_free_output_port_id_3905245786 != nil)
    }

    public func set_inputs(inputs: String)  {
        withUnsafePointer(to: inputs) { inputs_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(inputs_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_inputs_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_inputs() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_inputs_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_outputs(outputs: String)  {
        withUnsafePointer(to: outputs) { outputs_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(outputs_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_outputs_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_outputs() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_outputs_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func is_valid_port_name(name: String) -> UInt8 {
        withUnsafePointer(to: name) { name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_valid_port_name_3927539163,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func add_input_port(id: Int64, `type`: Int64, name: String)  {
        withUnsafePointer(to: name) { name_native in
        withUnsafePointer(to: `type`) { type_native in
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(type_native), .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_input_port_2285447957,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func remove_input_port(id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_input_port_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_input_port_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_input_port_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func has_input_port(id: Int64) -> UInt8 {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_input_port_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func clear_input_ports()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_input_ports_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_output_port(id: Int64, `type`: Int64, name: String)  {
        withUnsafePointer(to: name) { name_native in
        withUnsafePointer(to: `type`) { type_native in
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(type_native), .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_output_port_2285447957,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func remove_output_port(id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_output_port_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_output_port_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_output_port_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func has_output_port(id: Int64) -> UInt8 {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_output_port_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func clear_output_ports()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_output_ports_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_input_port_name(id: Int64, name: String)  {
        withUnsafePointer(to: name) { name_native in
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_input_port_name_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_input_port_type(id: Int64, `type`: Int64)  {
        withUnsafePointer(to: `type`) { type_native in
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_input_port_type_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_output_port_name(id: Int64, name: String)  {
        withUnsafePointer(to: name) { name_native in
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_output_port_name_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_output_port_type(id: Int64, `type`: Int64)  {
        withUnsafePointer(to: `type`) { type_native in
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_output_port_type_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_free_input_port_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_free_input_port_id_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_free_output_port_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_free_output_port_id_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
}