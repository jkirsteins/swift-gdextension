import godot_native

fileprivate var __godot_name_PackedScene: StringName! = nil

/// An abstraction of a serialized scene.
/// 
/// A simplified interface to a scene file. Provides access to operations and checks that can be performed on the scene resource itself.
///  
/// Can be used to save a node to a file. When saving, the node as well as all the nodes it owns get saved (see [member Node.owner] property).
///  
/// [b]Note:[/b] The node doesn't need to own itself.
///  
/// [b]Example of loading a saved scene:[/b]
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// # Use load() instead of preload() if the path isn't known at compile-time.
///  
/// var scene = preload("res://scene.tscn").instantiate()
///  
/// # Add the node as a child of the node the script is attached to.
///  
/// add_child(scene)
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// // C# has no preload, so you have to always use ResourceLoader.Load<PackedScene>().
///  
/// var scene = ResourceLoader.Load<PackedScene>("res://scene.tscn").Instantiate();
///  
/// // Add the node as a child of the node the script is attached to.
///  
/// AddChild(scene);
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// [b]Example of saving a node with different owners:[/b] The following example creates 3 objects: [Node2D] ([code]node[/code]), [RigidBody2D] ([code]body[/code]) and [CollisionObject2D] ([code]collision[/code]). [code]collision[/code] is a child of [code]body[/code] which is a child of [code]node[/code]. Only [code]body[/code] is owned by [code]node[/code] and [code]pack[/code] will therefore only save those two nodes, but not [code]collision[/code].
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// # Create the objects.
///  
/// var node = Node2D.new()
///  
/// var body = RigidBody2D.new()
///  
/// var collision = CollisionShape2D.new()
///  
///  
/// # Create the object hierarchy.
///  
/// body.add_child(collision)
///  
/// node.add_child(body)
///  
///  
/// # Change owner of `body`, but not of `collision`.
///  
/// body.owner = node
///  
/// var scene = PackedScene.new()
///  
///  
/// # Only `node` and `body` are now packed.
///  
/// var result = scene.pack(node)
///  
/// if result == OK:
///  
///     var error = ResourceSaver.save(scene, "res://path/name.tscn")  # Or "user://..."
///  
///     if error != OK:
///  
///         push_error("An error occurred while saving the scene to disk.")
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// // Create the objects.
///  
/// var node = new Node2D();
///  
/// var body = new RigidBody2D();
///  
/// var collision = new CollisionShape2D();
///  
///  
/// // Create the object hierarchy.
///  
/// body.AddChild(collision);
///  
/// node.AddChild(body);
///  
///  
/// // Change owner of `body`, but not of `collision`.
///  
/// body.Owner = node;
///  
/// var scene = new PackedScene();
///  
///  
/// // Only `node` and `body` are now packed.
///  
/// Error result = scene.Pack(node);
///  
/// if (result == Error.Ok)
///  
/// {
///  
///     Error error = ResourceSaver.Save(scene, "res://path/name.tscn"); // Or "user://..."
///  
///     if (error != Error.Ok)
///  
///     {
///  
///         GD.PushError("An error occurred while saving the scene to disk.");
///  
///     }
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
open class PackedScene : Resource {

    public enum GenEditState : Int32 {
        case GEN_EDIT_STATE_DISABLED = 0
        case GEN_EDIT_STATE_INSTANCE = 1
        case GEN_EDIT_STATE_MAIN = 2
        case GEN_EDIT_STATE_MAIN_INHERITED = 3
    }

    public override class var __godot_name: StringName { __godot_name_PackedScene }

    static var _method_pack_2584678054: StringName! = nil
    static var _method_instantiate_2628778455: StringName! = nil
    static var _method_can_instantiate_36873697: StringName! = nil
    static var _method_get_state_3479783971: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_PackedScene == nil)
        __godot_name_PackedScene = StringName(from: "PackedScene")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_pack_2584678054 = StringName(from: "pack")
        assert(self._method_pack_2584678054 != nil)
        self._method_instantiate_2628778455 = StringName(from: "instantiate")
        assert(self._method_instantiate_2628778455 != nil)
        self._method_can_instantiate_36873697 = StringName(from: "can_instantiate")
        assert(self._method_can_instantiate_36873697 != nil)
        self._method_get_state_3479783971 = StringName(from: "get_state")
        assert(self._method_get_state_3479783971 != nil)
    }

    public func pack(path: Node) -> Error {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_pack_2584678054._native_ptr(),
                    2584678054)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func instantiate(edit_state: PackedScene.GenEditState) -> Node {
        withUnsafePointer(to: edit_state.rawValue) { edit_state_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(edit_state_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_instantiate_2628778455._native_ptr(),
                    2628778455)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(godot: __resPtr.pointee)
        }
    }
    public func can_instantiate() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_can_instantiate_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_state() -> SceneState {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_state_3479783971._native_ptr(),
                    3479783971)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SceneState(godot: __resPtr.pointee)
    }
}