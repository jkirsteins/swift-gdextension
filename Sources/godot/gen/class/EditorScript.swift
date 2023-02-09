import godot_native

fileprivate var __godot_name_EditorScript: StringName! = nil

/// Base script that can be used to add extension functions to the editor.
/// 
/// Scripts extending this class and implementing its [method _run] method can be executed from the Script Editor's [b]File > Run[/b] menu option (or by pressing [kbd]Ctrl + Shift + X[/kbd]) while the editor is running. This is useful for adding custom in-editor functionality to Godot. For more complex additions, consider using [EditorPlugin]s instead.
///  
/// [b]Note:[/b] Extending scripts need to have [code]tool[/code] mode enabled.
///  
/// [b]Example script:[/b]
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// @tool
///  
/// extends EditorScript
///  
///  
/// func _run():
///  
///     print("Hello from the Godot Editor!")
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// using Godot;
///  
///  
/// [Tool]
///  
/// public partial class HelloEditor : EditorScript
///  
/// {
///  
///     public override void _Run()
///  
///     {
///  
///         GD.Print("Hello from the Godot Editor!");
///  
///     }
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// [b]Note:[/b] The script is run in the Editor context, which means the output is visible in the console window started with the Editor (stdout) instead of the usual Godot [b]Output[/b] dock.
///  
/// [b]Note:[/b] EditorScript is [RefCounted], meaning it is destroyed when nothing references it. This can cause errors during asynchronous operations if there are no references to the script.
open class EditorScript : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_EditorScript }

    static var _method__run_0: StringName! = nil
    static var _method_add_root_node_1078189570: StringName! = nil
    static var _method_get_scene_1818953479: StringName! = nil
    static var _method_get_editor_interface_4223731786: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_EditorScript == nil)
        __godot_name_EditorScript = StringName(from: "EditorScript")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_add_root_node_1078189570 = StringName(from: "add_root_node")
        assert(self._method_add_root_node_1078189570 != nil)
        self._method_get_scene_1818953479 = StringName(from: "get_scene")
        assert(self._method_get_scene_1818953479 != nil)
        self._method_get_editor_interface_4223731786 = StringName(from: "get_editor_interface")
        assert(self._method_get_editor_interface_4223731786 != nil)
    }

    public func _run()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func add_root_node(node: Node)  {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_root_node_1078189570._native_ptr(),
                    1078189570)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_scene() -> Node {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_scene_1818953479._native_ptr(),
                    1818953479)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(godot: __resPtr.pointee)
    }
    public func get_editor_interface() -> EditorInterface {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_editor_interface_4223731786._native_ptr(),
                    4223731786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorInterface(godot: __resPtr.pointee)
    }
}