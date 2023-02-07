import godot_native

fileprivate var __godot_name_EditorSelection: StringName! = nil

/// Manages the SceneTree selection in the editor.
/// 
/// This object manages the SceneTree selection in the editor.
///  
/// [b]Note:[/b] This class shouldn't be instantiated directly. Instead, access the singleton using [method EditorInterface.get_selection].
public class EditorSelection : Object {

    

    public override class var __godot_name: StringName { __godot_name_EditorSelection }

    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_add_node_1078189570: GDExtensionMethodBindPtr! = nil
    static var _method_remove_node_1078189570: GDExtensionMethodBindPtr! = nil
    static var _method_get_selected_nodes_2915620761: GDExtensionMethodBindPtr! = nil
    static var _method_get_transformable_selected_nodes_2915620761: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_EditorSelection = StringName(from: "EditorSelection")

        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(EditorSelection._method_clear_3218959716 != nil)
        let _method_add_node_1078189570_name = StringName(from: "add_node")
        self._method_add_node_1078189570 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_node_1078189570_name._native_ptr(), 1078189570)
        assert(EditorSelection._method_add_node_1078189570 != nil)
        let _method_remove_node_1078189570_name = StringName(from: "remove_node")
        self._method_remove_node_1078189570 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_node_1078189570_name._native_ptr(), 1078189570)
        assert(EditorSelection._method_remove_node_1078189570 != nil)
        let _method_get_selected_nodes_2915620761_name = StringName(from: "get_selected_nodes")
        self._method_get_selected_nodes_2915620761 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_selected_nodes_2915620761_name._native_ptr(), 2915620761)
        assert(EditorSelection._method_get_selected_nodes_2915620761 != nil)
        let _method_get_transformable_selected_nodes_2915620761_name = StringName(from: "get_transformable_selected_nodes")
        self._method_get_transformable_selected_nodes_2915620761 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_transformable_selected_nodes_2915620761_name._native_ptr(), 2915620761)
        assert(EditorSelection._method_get_transformable_selected_nodes_2915620761 != nil)
    }

    public func clear()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_node(node: Node)  {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_node_1078189570,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_node(node: Node)  {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_node_1078189570,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_selected_nodes() -> [Node] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selected_nodes_2915620761,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Node](from: __resPtr.pointee)
    }
    public func get_transformable_selected_nodes() -> [Node] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_transformable_selected_nodes_2915620761,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Node](from: __resPtr.pointee)
    }
}