import godot_native

fileprivate var __godot_name_AnimationNodeStateMachine: StringName! = nil

/// State machine for control of animations.
/// 
/// Contains multiple nodes representing animation states, connected in a graph. Node transitions can be configured to happen automatically or via code, using a shortest-path algorithm. Retrieve the [AnimationNodeStateMachinePlayback] object from the [AnimationTree] node to control it programmatically.
///  
/// [b]Example:[/b]
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var state_machine = $AnimationTree.get("parameters/playback")
///  
/// state_machine.travel("some_state")
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// var stateMachine = GetNode<AnimationTree>("AnimationTree").Get("parameters/playback") as AnimationNodeStateMachinePlayback;
///  
/// stateMachine.Travel("some_state");
///  
/// [/csharp]
///  
/// [/codeblocks]
public class AnimationNodeStateMachine : AnimationRootNode {

    

    public override class var __godot_name: StringName { __godot_name_AnimationNodeStateMachine }

    static var _method_add_node_2055804584: GDExtensionMethodBindPtr! = nil
    static var _method_replace_node_2559412862: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_625644256: GDExtensionMethodBindPtr! = nil
    static var _method_remove_node_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_rename_node_3740211285: GDExtensionMethodBindPtr! = nil
    static var _method_has_node_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_name_739213945: GDExtensionMethodBindPtr! = nil
    static var _method_set_node_position_1999414630: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_position_3100822709: GDExtensionMethodBindPtr! = nil
    static var _method_has_transition_471820014: GDExtensionMethodBindPtr! = nil
    static var _method_add_transition_795486887: GDExtensionMethodBindPtr! = nil
    static var _method_get_transition_4192381260: GDExtensionMethodBindPtr! = nil
    static var _method_get_transition_from_659327637: GDExtensionMethodBindPtr! = nil
    static var _method_get_transition_to_659327637: GDExtensionMethodBindPtr! = nil
    static var _method_get_transition_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_remove_transition_by_index_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_remove_transition_3740211285: GDExtensionMethodBindPtr! = nil
    static var _method_set_graph_offset_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_graph_offset_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_allow_transition_to_self_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_allow_transition_to_self_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AnimationNodeStateMachine = StringName(from: "AnimationNodeStateMachine")

        let _method_add_node_2055804584_name = StringName(from: "add_node")
        self._method_add_node_2055804584 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_node_2055804584_name._native_ptr(), 2055804584)
        assert(AnimationNodeStateMachine._method_add_node_2055804584 != nil)
        let _method_replace_node_2559412862_name = StringName(from: "replace_node")
        self._method_replace_node_2559412862 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_replace_node_2559412862_name._native_ptr(), 2559412862)
        assert(AnimationNodeStateMachine._method_replace_node_2559412862 != nil)
        let _method_get_node_625644256_name = StringName(from: "get_node")
        self._method_get_node_625644256 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_node_625644256_name._native_ptr(), 625644256)
        assert(AnimationNodeStateMachine._method_get_node_625644256 != nil)
        let _method_remove_node_3304788590_name = StringName(from: "remove_node")
        self._method_remove_node_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_node_3304788590_name._native_ptr(), 3304788590)
        assert(AnimationNodeStateMachine._method_remove_node_3304788590 != nil)
        let _method_rename_node_3740211285_name = StringName(from: "rename_node")
        self._method_rename_node_3740211285 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rename_node_3740211285_name._native_ptr(), 3740211285)
        assert(AnimationNodeStateMachine._method_rename_node_3740211285 != nil)
        let _method_has_node_2619796661_name = StringName(from: "has_node")
        self._method_has_node_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_node_2619796661_name._native_ptr(), 2619796661)
        assert(AnimationNodeStateMachine._method_has_node_2619796661 != nil)
        let _method_get_node_name_739213945_name = StringName(from: "get_node_name")
        self._method_get_node_name_739213945 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_node_name_739213945_name._native_ptr(), 739213945)
        assert(AnimationNodeStateMachine._method_get_node_name_739213945 != nil)
        let _method_set_node_position_1999414630_name = StringName(from: "set_node_position")
        self._method_set_node_position_1999414630 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_node_position_1999414630_name._native_ptr(), 1999414630)
        assert(AnimationNodeStateMachine._method_set_node_position_1999414630 != nil)
        let _method_get_node_position_3100822709_name = StringName(from: "get_node_position")
        self._method_get_node_position_3100822709 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_node_position_3100822709_name._native_ptr(), 3100822709)
        assert(AnimationNodeStateMachine._method_get_node_position_3100822709 != nil)
        let _method_has_transition_471820014_name = StringName(from: "has_transition")
        self._method_has_transition_471820014 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_transition_471820014_name._native_ptr(), 471820014)
        assert(AnimationNodeStateMachine._method_has_transition_471820014 != nil)
        let _method_add_transition_795486887_name = StringName(from: "add_transition")
        self._method_add_transition_795486887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_transition_795486887_name._native_ptr(), 795486887)
        assert(AnimationNodeStateMachine._method_add_transition_795486887 != nil)
        let _method_get_transition_4192381260_name = StringName(from: "get_transition")
        self._method_get_transition_4192381260 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_transition_4192381260_name._native_ptr(), 4192381260)
        assert(AnimationNodeStateMachine._method_get_transition_4192381260 != nil)
        let _method_get_transition_from_659327637_name = StringName(from: "get_transition_from")
        self._method_get_transition_from_659327637 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_transition_from_659327637_name._native_ptr(), 659327637)
        assert(AnimationNodeStateMachine._method_get_transition_from_659327637 != nil)
        let _method_get_transition_to_659327637_name = StringName(from: "get_transition_to")
        self._method_get_transition_to_659327637 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_transition_to_659327637_name._native_ptr(), 659327637)
        assert(AnimationNodeStateMachine._method_get_transition_to_659327637 != nil)
        let _method_get_transition_count_3905245786_name = StringName(from: "get_transition_count")
        self._method_get_transition_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_transition_count_3905245786_name._native_ptr(), 3905245786)
        assert(AnimationNodeStateMachine._method_get_transition_count_3905245786 != nil)
        let _method_remove_transition_by_index_1286410249_name = StringName(from: "remove_transition_by_index")
        self._method_remove_transition_by_index_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_transition_by_index_1286410249_name._native_ptr(), 1286410249)
        assert(AnimationNodeStateMachine._method_remove_transition_by_index_1286410249 != nil)
        let _method_remove_transition_3740211285_name = StringName(from: "remove_transition")
        self._method_remove_transition_3740211285 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_transition_3740211285_name._native_ptr(), 3740211285)
        assert(AnimationNodeStateMachine._method_remove_transition_3740211285 != nil)
        let _method_set_graph_offset_743155724_name = StringName(from: "set_graph_offset")
        self._method_set_graph_offset_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_graph_offset_743155724_name._native_ptr(), 743155724)
        assert(AnimationNodeStateMachine._method_set_graph_offset_743155724 != nil)
        let _method_get_graph_offset_3341600327_name = StringName(from: "get_graph_offset")
        self._method_get_graph_offset_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_graph_offset_3341600327_name._native_ptr(), 3341600327)
        assert(AnimationNodeStateMachine._method_get_graph_offset_3341600327 != nil)
        let _method_set_allow_transition_to_self_2586408642_name = StringName(from: "set_allow_transition_to_self")
        self._method_set_allow_transition_to_self_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_allow_transition_to_self_2586408642_name._native_ptr(), 2586408642)
        assert(AnimationNodeStateMachine._method_set_allow_transition_to_self_2586408642 != nil)
        let _method_is_allow_transition_to_self_36873697_name = StringName(from: "is_allow_transition_to_self")
        self._method_is_allow_transition_to_self_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_allow_transition_to_self_36873697_name._native_ptr(), 36873697)
        assert(AnimationNodeStateMachine._method_is_allow_transition_to_self_36873697 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_node_2055804584,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func replace_node(name: StringName, node: AnimationNode)  {
        let node_native = node._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(node_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_replace_node_2559412862,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_625644256,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AnimationNode(from: __resPtr.pointee)
    }
    public func remove_node(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_node_3304788590,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rename_node_3740211285,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_node_2619796661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_node_name(node: AnimationNode) -> StringName {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_name_739213945,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_node_position_1999414630,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_position_3100822709,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func has_transition(from: StringName, to: StringName) -> UInt8 {
        let to_native = to._native_ptr()
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_transition_471820014,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func add_transition(from: StringName, to: StringName, transition: AnimationNodeStateMachineTransition)  {
        let transition_native = transition._native_ptr()
        let to_native = to._native_ptr()
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native), .init(transition_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_transition_795486887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_transition(idx: Int64) -> AnimationNodeStateMachineTransition {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_transition_4192381260,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AnimationNodeStateMachineTransition(from: __resPtr.pointee)
        }
    }
    public func get_transition_from(idx: Int64) -> StringName {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_transition_from_659327637,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
        }
    }
    public func get_transition_to(idx: Int64) -> StringName {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_transition_to_659327637,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
        }
    }
    public func get_transition_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_transition_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func remove_transition_by_index(idx: Int64)  {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_transition_by_index_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_transition(from: StringName, to: StringName)  {
        let to_native = to._native_ptr()
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_transition_3740211285,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_graph_offset(offset: Vector2)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_graph_offset_743155724,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_graph_offset_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_allow_transition_to_self(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_allow_transition_to_self_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_allow_transition_to_self() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_allow_transition_to_self_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}