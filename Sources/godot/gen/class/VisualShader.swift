import godot_native

fileprivate var __godot_name_VisualShader: StringName! = nil

/// A custom shader program with a visual editor.
/// 
/// This class allows you to define a custom shader program that can be used for various materials to render objects.
///  
/// The visual shader editor creates the shader.
open class VisualShader : Shader {

    public enum `Typ` : Int32 {
        case TYPE_VERTEX = 0
        case TYPE_FRAGMENT = 1
        case TYPE_LIGHT = 2
        case TYPE_START = 3
        case TYPE_PROCESS = 4
        case TYPE_COLLIDE = 5
        case TYPE_START_CUSTOM = 6
        case TYPE_PROCESS_CUSTOM = 7
        case TYPE_SKY = 8
        case TYPE_FOG = 9
        case TYPE_MAX = 10
    }
    public enum VaryingMode : Int32 {
        case VARYING_MODE_VERTEX_TO_FRAG_LIGHT = 0
        case VARYING_MODE_FRAG_TO_LIGHT = 1
        case VARYING_MODE_MAX = 2
    }
    public enum VaryingType : Int32 {
        case VARYING_TYPE_FLOAT = 0
        case VARYING_TYPE_INT = 1
        case VARYING_TYPE_UINT = 2
        case VARYING_TYPE_VECTOR_2D = 3
        case VARYING_TYPE_VECTOR_3D = 4
        case VARYING_TYPE_VECTOR_4D = 5
        case VARYING_TYPE_BOOLEAN = 6
        case VARYING_TYPE_TRANSFORM = 7
        case VARYING_TYPE_MAX = 8
    }

    public override class var __godot_name: StringName { __godot_name_VisualShader }

    static var _method_set_mode_3978014962: StringName! = nil
    static var _method_add_node_1560769431: StringName! = nil
    static var _method_get_node_3784670312: StringName! = nil
    static var _method_set_node_position_2726660721: StringName! = nil
    static var _method_get_node_position_2175036082: StringName! = nil
    static var _method_get_node_list_2370592410: StringName! = nil
    static var _method_get_valid_node_id_629467342: StringName! = nil
    static var _method_remove_node_844050912: StringName! = nil
    static var _method_replace_node_3144735253: StringName! = nil
    static var _method_is_node_connection_3922381898: StringName! = nil
    static var _method_can_connect_nodes_3922381898: StringName! = nil
    static var _method_connect_nodes_3081049573: StringName! = nil
    static var _method_disconnect_nodes_2268060358: StringName! = nil
    static var _method_connect_nodes_forced_2268060358: StringName! = nil
    static var _method_get_node_connections_1441964831: StringName! = nil
    static var _method_set_graph_offset_743155724: StringName! = nil
    static var _method_get_graph_offset_3341600327: StringName! = nil
    static var _method_add_varying_2084110726: StringName! = nil
    static var _method_remove_varying_83702148: StringName! = nil
    static var _method_has_varying_3927539163: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShader == nil)
        __godot_name_VisualShader = StringName(from: "VisualShader")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_mode_3978014962 = StringName(from: "set_mode")
        assert(self._method_set_mode_3978014962 != nil)
        self._method_add_node_1560769431 = StringName(from: "add_node")
        assert(self._method_add_node_1560769431 != nil)
        self._method_get_node_3784670312 = StringName(from: "get_node")
        assert(self._method_get_node_3784670312 != nil)
        self._method_set_node_position_2726660721 = StringName(from: "set_node_position")
        assert(self._method_set_node_position_2726660721 != nil)
        self._method_get_node_position_2175036082 = StringName(from: "get_node_position")
        assert(self._method_get_node_position_2175036082 != nil)
        self._method_get_node_list_2370592410 = StringName(from: "get_node_list")
        assert(self._method_get_node_list_2370592410 != nil)
        self._method_get_valid_node_id_629467342 = StringName(from: "get_valid_node_id")
        assert(self._method_get_valid_node_id_629467342 != nil)
        self._method_remove_node_844050912 = StringName(from: "remove_node")
        assert(self._method_remove_node_844050912 != nil)
        self._method_replace_node_3144735253 = StringName(from: "replace_node")
        assert(self._method_replace_node_3144735253 != nil)
        self._method_is_node_connection_3922381898 = StringName(from: "is_node_connection")
        assert(self._method_is_node_connection_3922381898 != nil)
        self._method_can_connect_nodes_3922381898 = StringName(from: "can_connect_nodes")
        assert(self._method_can_connect_nodes_3922381898 != nil)
        self._method_connect_nodes_3081049573 = StringName(from: "connect_nodes")
        assert(self._method_connect_nodes_3081049573 != nil)
        self._method_disconnect_nodes_2268060358 = StringName(from: "disconnect_nodes")
        assert(self._method_disconnect_nodes_2268060358 != nil)
        self._method_connect_nodes_forced_2268060358 = StringName(from: "connect_nodes_forced")
        assert(self._method_connect_nodes_forced_2268060358 != nil)
        self._method_get_node_connections_1441964831 = StringName(from: "get_node_connections")
        assert(self._method_get_node_connections_1441964831 != nil)
        self._method_set_graph_offset_743155724 = StringName(from: "set_graph_offset")
        assert(self._method_set_graph_offset_743155724 != nil)
        self._method_get_graph_offset_3341600327 = StringName(from: "get_graph_offset")
        assert(self._method_get_graph_offset_3341600327 != nil)
        self._method_add_varying_2084110726 = StringName(from: "add_varying")
        assert(self._method_add_varying_2084110726 != nil)
        self._method_remove_varying_83702148 = StringName(from: "remove_varying")
        assert(self._method_remove_varying_83702148 != nil)
        self._method_has_varying_3927539163 = StringName(from: "has_varying")
        assert(self._method_has_varying_3927539163 != nil)
    }

    public func set_mode(mode: Shader.Mode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_mode_3978014962._native_ptr(),
                    3978014962)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_node(`type`: VisualShader.`Typ`, node: VisualShaderNode, position: Vector2, id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let position_native = position._native_ptr()
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native), .init(node_native), .init(position_native), .init(id_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_node_1560769431._native_ptr(),
                    1560769431)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_node(`type`: VisualShader.`Typ`, id: Int64) -> VisualShaderNode {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native), .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_node_3784670312._native_ptr(),
                    3784670312)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNode(godot: __resPtr.pointee)
        }
        }
    }
    public func set_node_position(`type`: VisualShader.`Typ`, id: Int64, position: Vector2)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native), .init(id_native), .init(position_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_node_position_2726660721._native_ptr(),
                    2726660721)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_node_position(`type`: VisualShader.`Typ`, id: Int64) -> Vector2 {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native), .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_node_position_2175036082._native_ptr(),
                    2175036082)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
        }
    }
    public func get_node_list(`type`: VisualShader.`Typ`) -> PackedInt32Array {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_node_list_2370592410._native_ptr(),
                    2370592410)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
        }
    }
    public func get_valid_node_id(`type`: VisualShader.`Typ`) -> Int64 {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_valid_node_id_629467342._native_ptr(),
                    629467342)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func remove_node(`type`: VisualShader.`Typ`, id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native), .init(id_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_node_844050912._native_ptr(),
                    844050912)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func replace_node(`type`: VisualShader.`Typ`, id: Int64, new_class: StringName)  {
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let new_class_native = new_class._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native), .init(id_native), .init(new_class_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_replace_node_3144735253._native_ptr(),
                    3144735253)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func is_node_connection(`type`: VisualShader.`Typ`, from_node: Int64, from_port: Int64, to_node: Int64, to_port: Int64) -> UInt8 {
        withUnsafePointer(to: to_port) { to_port_native in
        withUnsafePointer(to: to_node) { to_node_native in
        withUnsafePointer(to: from_port) { from_port_native in
        withUnsafePointer(to: from_node) { from_node_native in
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native), .init(from_node_native), .init(from_port_native), .init(to_node_native), .init(to_port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_node_connection_3922381898._native_ptr(),
                    3922381898)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
        }
        }
        }
        }
    }
    public func can_connect_nodes(`type`: VisualShader.`Typ`, from_node: Int64, from_port: Int64, to_node: Int64, to_port: Int64) -> UInt8 {
        withUnsafePointer(to: to_port) { to_port_native in
        withUnsafePointer(to: to_node) { to_node_native in
        withUnsafePointer(to: from_port) { from_port_native in
        withUnsafePointer(to: from_node) { from_node_native in
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native), .init(from_node_native), .init(from_port_native), .init(to_node_native), .init(to_port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_can_connect_nodes_3922381898._native_ptr(),
                    3922381898)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
        }
        }
        }
        }
    }
    public func connect_nodes(`type`: VisualShader.`Typ`, from_node: Int64, from_port: Int64, to_node: Int64, to_port: Int64) -> Error {
        withUnsafePointer(to: to_port) { to_port_native in
        withUnsafePointer(to: to_node) { to_node_native in
        withUnsafePointer(to: from_port) { from_port_native in
        withUnsafePointer(to: from_node) { from_node_native in
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native), .init(from_node_native), .init(from_port_native), .init(to_node_native), .init(to_port_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_connect_nodes_3081049573._native_ptr(),
                    3081049573)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
        }
        }
        }
    }
    public func disconnect_nodes(`type`: VisualShader.`Typ`, from_node: Int64, from_port: Int64, to_node: Int64, to_port: Int64)  {
        withUnsafePointer(to: to_port) { to_port_native in
        withUnsafePointer(to: to_node) { to_node_native in
        withUnsafePointer(to: from_port) { from_port_native in
        withUnsafePointer(to: from_node) { from_node_native in
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native), .init(from_node_native), .init(from_port_native), .init(to_node_native), .init(to_port_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_disconnect_nodes_2268060358._native_ptr(),
                    2268060358)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
        }
    }
    public func connect_nodes_forced(`type`: VisualShader.`Typ`, from_node: Int64, from_port: Int64, to_node: Int64, to_port: Int64)  {
        withUnsafePointer(to: to_port) { to_port_native in
        withUnsafePointer(to: to_node) { to_node_native in
        withUnsafePointer(to: from_port) { from_port_native in
        withUnsafePointer(to: from_node) { from_node_native in
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native), .init(from_node_native), .init(from_port_native), .init(to_node_native), .init(to_port_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_connect_nodes_forced_2268060358._native_ptr(),
                    2268060358)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
        }
    }
    public func get_node_connections(`type`: VisualShader.`Typ`) -> [Dictionary] {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_node_connections_1441964831._native_ptr(),
                    1441964831)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](godot: __resPtr.pointee)
        }
    }
    public func set_graph_offset(offset: Vector2)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_graph_offset_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_graph_offset() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_graph_offset_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func add_varying(name: godot.String, mode: VisualShader.VaryingMode, `type`: VisualShader.VaryingType)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(mode_native), .init(type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_varying_2084110726._native_ptr(),
                    2084110726)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func remove_varying(name: godot.String)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_varying_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func has_varying(name: godot.String) -> UInt8 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_varying_3927539163._native_ptr(),
                    3927539163)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}