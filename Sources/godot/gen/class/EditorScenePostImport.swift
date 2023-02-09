import godot_native

fileprivate var __godot_name_EditorScenePostImport: StringName! = nil

/// Post-processes scenes after import.
/// 
/// Imported scenes can be automatically modified right after import by setting their [b]Custom Script[/b] Import property to a [code]tool[/code] script that inherits from this class.
///  
/// The [method _post_import] callback receives the imported scene's root node and returns the modified version of the scene. Usage example:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// @tool # Needed so it runs in editor.
///  
/// extends EditorScenePostImport
///  
///  
/// # This sample changes all node names.
///  
/// # Called right after the scene is imported and gets the root node.
///  
/// func _post_import(scene):
///  
///     # Change all node names to "modified_[oldnodename]"
///  
///     iterate(scene)
///  
///     return scene # Remember to return the imported scene
///  
///  
/// func iterate(node):
///  
///     if node != null:
///  
///         node.name = "modified_" + node.name
///  
///         for child in node.get_children():
///  
///             iterate(child)
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// using Godot;
///  
///  
/// // This sample changes all node names.
///  
/// // Called right after the scene is imported and gets the root node.
///  
/// [Tool]
///  
/// public partial class NodeRenamer : EditorScenePostImport
///  
/// {
///  
///     public override GodotObject _PostImport(Node scene)
///  
///     {
///  
///         // Change all node names to "modified_[oldnodename]"
///  
///         Iterate(scene);
///  
///         return scene; // Remember to return the imported scene
///  
///     }
///  
///  
///     public void Iterate(Node node)
///  
///     {
///  
///         if (node != null)
///  
///         {
///  
///             node.Name = $"modified_{node.Name}";
///  
///             foreach (Node child in node.GetChildren())
///  
///             {
///  
///                 Iterate(child);
///  
///             }
///  
///         }
///  
///     }
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
open class EditorScenePostImport : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_EditorScenePostImport }

    static var _method__post_import_0: StringName! = nil
    static var _method_get_source_file_201670096: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_EditorScenePostImport == nil)
        __godot_name_EditorScenePostImport = StringName(from: "EditorScenePostImport")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_source_file_201670096 = StringName(from: "get_source_file")
        assert(self._method_get_source_file_201670096 != nil)
    }

    public func _post_import(scene: Node) -> Object {
        let scene_native = scene._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scene_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return Object(godot: __resPtr.pointee)
    }
    public func get_source_file() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_source_file_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
}