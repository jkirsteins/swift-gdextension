import godot_native

fileprivate var __godot_name_AnimationNodeBlendTree: StringName! = nil

/// [AnimationTree] node resource that contains many blend type nodes.
/// 
/// This node may contain a sub-tree of any other blend type nodes, such as [AnimationNodeTransition], [AnimationNodeBlend2], [AnimationNodeBlend3], [AnimationNodeOneShot], etc. This is one of the most commonly used roots.
///  
/// An [AnimationNodeOutput] node named [code]output[/code] is created by default.
open class AnimationNodeBlendTree : AnimationRootNode {

    

    public override class var __godot_name: StringName { __godot_name_AnimationNodeBlendTree }

    static var _method_add_node_2055804584: StringName! = nil
    static var _method_get_node_625644256: StringName! = nil
    static var _method_remove_node_3304788590: StringName! = nil
    static var _method_rename_node_3740211285: StringName! = nil
    static var _method_has_node_2619796661: StringName! = nil
    static var _method_connect_node_2168001410: StringName! = nil
    static var _method_disconnect_node_2415702435: StringName! = nil
    static var _method_set_node_position_1999414630: StringName! = nil
    static var _method_get_node_position_3100822709: StringName! = nil
    static var _method_set_graph_offset_743155724: StringName! = nil
    static var _method_get_graph_offset_3341600327: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AnimationNodeBlendTree == nil)
        __godot_name_AnimationNodeBlendTree = StringName(from: "AnimationNodeBlendTree")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_add_node_2055804584 = StringName(from: "add_node")
        assert(self._method_add_node_2055804584 != nil)
        self._method_get_node_625644256 = StringName(from: "get_node")
        assert(self._method_get_node_625644256 != nil)
        self._method_remove_node_3304788590 = StringName(from: "remove_node")
        assert(self._method_remove_node_3304788590 != nil)
        self._method_rename_node_3740211285 = StringName(from: "rename_node")
        assert(self._method_rename_node_3740211285 != nil)
        self._method_has_node_2619796661 = StringName(from: "has_node")
        assert(self._method_has_node_2619796661 != nil)
        self._method_connect_node_2168001410 = StringName(from: "connect_node")
        assert(self._method_connect_node_2168001410 != nil)
        self._method_disconnect_node_2415702435 = StringName(from: "disconnect_node")
        assert(self._method_disconnect_node_2415702435 != nil)
        self._method_set_node_position_1999414630 = StringName(from: "set_node_position")
        assert(self._method_set_node_position_1999414630 != nil)
        self._method_get_node_position_3100822709 = StringName(from: "get_node_position")
        assert(self._method_get_node_position_3100822709 != nil)
        self._method_set_graph_offset_743155724 = StringName(from: "set_graph_offset")
        assert(self._method_set_graph_offset_743155724 != nil)
        self._method_get_graph_offset_3341600327 = StringName(from: "get_graph_offset")
        assert(self._method_get_graph_offset_3341600327 != nil)
    }

    public func add_node(name: StringName, node: AnimationNode, position: Vector2)  {
        let position_native = position._native_ptr()
        let node_native = node._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(node_native), .init(position_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_node_2055804584._native_ptr(),
                    2055804584)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_node(name: StringName) -> AnimationNode {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_node_625644256._native_ptr(),
                    625644256)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AnimationNode(godot: __resPtr.pointee)
    }
    public func remove_node(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_node_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func rename_node(name: StringName, new_name: StringName)  {
        let new_name_native = new_name._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(new_name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_rename_node_3740211285._native_ptr(),
                    3740211285)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func has_node(name: StringName) -> UInt8 {
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
                    Self._method_has_node_2619796661._native_ptr(),
                    2619796661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func connect_node(input_node: StringName, input_index: Int64, output_node: StringName)  {
        withUnsafePointer(to: input_index) { input_index_native in
        let output_node_native = output_node._native_ptr()
        let input_node_native = input_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(input_node_native), .init(input_index_native), .init(output_node_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_connect_node_2168001410._native_ptr(),
                    2168001410)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func disconnect_node(input_node: StringName, input_index: Int64)  {
        withUnsafePointer(to: input_index) { input_index_native in
        let input_node_native = input_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(input_node_native), .init(input_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_disconnect_node_2415702435._native_ptr(),
                    2415702435)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_node_position(name: StringName, position: Vector2)  {
        let position_native = position._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(position_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_node_position_1999414630._native_ptr(),
                    1999414630)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_node_position(name: StringName) -> Vector2 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_node_position_3100822709._native_ptr(),
                    3100822709)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
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
}