import godot_native

fileprivate var __godot_name_EditorScriptPicker: StringName! = nil

/// Godot editor's control for selecting the [code]script[/code] property of a [Node].
/// 
/// Similar to [EditorResourcePicker] this [Control] node is used in the editor's Inspector dock, but only to edit the [code]script[/code] property of a [Node]. Default options for creating new resources of all possible subtypes are replaced with dedicated buttons that open the "Attach Node Script" dialog. Can be used with [EditorInspectorPlugin] to recreate the same behavior.
///  
/// [b]Note:[/b] You must set the [member script_owner] for the custom context menu items to work.
open class EditorScriptPicker : EditorResourcePicker {

    

    public override class var __godot_name: StringName { __godot_name_EditorScriptPicker }

    static var _method_set_script_owner_1078189570: StringName! = nil
    static var _method_get_script_owner_3160264692: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_EditorScriptPicker == nil)
        __godot_name_EditorScriptPicker = StringName(from: "EditorScriptPicker")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_script_owner_1078189570 = StringName(from: "set_script_owner")
        assert(self._method_set_script_owner_1078189570 != nil)
        self._method_get_script_owner_3160264692 = StringName(from: "get_script_owner")
        assert(self._method_get_script_owner_3160264692 != nil)
    }

    public func set_script_owner(owner_node: Node)  {
        let owner_node_native = owner_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(owner_node_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_script_owner_1078189570._native_ptr(),
                    1078189570)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_script_owner() -> Node {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_script_owner_3160264692._native_ptr(),
                    3160264692)
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