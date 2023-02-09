import godot_native

fileprivate var __godot_name_EditorCommandPalette: StringName! = nil

/// Godot editor's command palette.
/// 
/// Object that holds all the available Commands and their shortcuts text. These Commands can be accessed through [b]Editor > Command Palette[/b] menu.
///  
/// Command key names use slash delimiters to distinguish sections, for example: [code]"example/command1"[/code] then [code]example[/code] will be the section name.
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var command_palette = get_editor_interface().get_command_palette()
///  
/// # external_command is a function that will be called with the command is executed.
///  
/// var command_callable = Callable(self, "external_command").bind(arguments)
///  
/// command_palette.add_command("command", "test/command",command_callable)
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// EditorCommandPalette commandPalette = GetEditorInterface().GetCommandPalette();
///  
/// // ExternalCommand is a function that will be called with the command is executed.
///  
/// Callable commandCallable = new Callable(this, MethodName.ExternalCommand);
///  
/// commandPalette.AddCommand("command", "test/command", commandCallable)
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// [b]Note:[/b] This class shouldn't be instantiated directly. Instead, access the singleton using [method EditorInterface.get_command_palette].
open class EditorCommandPalette : ConfirmationDialog {

    

    public override class var __godot_name: StringName { __godot_name_EditorCommandPalette }

    static var _method_add_command_3664614892: StringName! = nil
    static var _method_remove_command_83702148: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_EditorCommandPalette == nil)
        __godot_name_EditorCommandPalette = StringName(from: "EditorCommandPalette")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_add_command_3664614892 = StringName(from: "add_command")
        assert(self._method_add_command_3664614892 != nil)
        self._method_remove_command_83702148 = StringName(from: "remove_command")
        assert(self._method_remove_command_83702148 != nil)
    }

    public func add_command(command_name: godot.String, key_name: godot.String, binded_callable: Callable, shortcut_text: godot.String)  {
        let shortcut_text_native = shortcut_text._native_ptr()
        let binded_callable_native = binded_callable._native_ptr()
        let key_name_native = key_name._native_ptr()
        let command_name_native = command_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(command_name_native), .init(key_name_native), .init(binded_callable_native), .init(shortcut_text_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_command_3664614892._native_ptr(),
                    3664614892)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_command(key_name: godot.String)  {
        let key_name_native = key_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(key_name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_command_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}