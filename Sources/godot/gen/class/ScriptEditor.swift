import godot_native

fileprivate var __godot_name_ScriptEditor: StringName! = nil

/// Godot editor's script editor.
/// 
/// [b]Note:[/b] This class shouldn't be instantiated directly. Instead, access the singleton using [method EditorInterface.get_script_editor].
open class ScriptEditor : PanelContainer {

    

    public override class var __godot_name: StringName { __godot_name_ScriptEditor }

    static var _method_get_current_editor_1906266726: StringName! = nil
    static var _method_get_open_script_editors_3995934104: StringName! = nil
    static var _method_register_syntax_highlighter_1092774468: StringName! = nil
    static var _method_unregister_syntax_highlighter_1092774468: StringName! = nil
    static var _method_goto_line_1286410249: StringName! = nil
    static var _method_get_current_script_2146468882: StringName! = nil
    static var _method_get_open_scripts_3995934104: StringName! = nil
    static var _method_open_script_create_dialog_3186203200: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_ScriptEditor == nil)
        __godot_name_ScriptEditor = StringName(from: "ScriptEditor")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_current_editor_1906266726 = StringName(from: "get_current_editor")
        assert(self._method_get_current_editor_1906266726 != nil)
        self._method_get_open_script_editors_3995934104 = StringName(from: "get_open_script_editors")
        assert(self._method_get_open_script_editors_3995934104 != nil)
        self._method_register_syntax_highlighter_1092774468 = StringName(from: "register_syntax_highlighter")
        assert(self._method_register_syntax_highlighter_1092774468 != nil)
        self._method_unregister_syntax_highlighter_1092774468 = StringName(from: "unregister_syntax_highlighter")
        assert(self._method_unregister_syntax_highlighter_1092774468 != nil)
        self._method_goto_line_1286410249 = StringName(from: "goto_line")
        assert(self._method_goto_line_1286410249 != nil)
        self._method_get_current_script_2146468882 = StringName(from: "get_current_script")
        assert(self._method_get_current_script_2146468882 != nil)
        self._method_get_open_scripts_3995934104 = StringName(from: "get_open_scripts")
        assert(self._method_get_open_scripts_3995934104 != nil)
        self._method_open_script_create_dialog_3186203200 = StringName(from: "open_script_create_dialog")
        assert(self._method_open_script_create_dialog_3186203200 != nil)
    }

    public func get_current_editor() -> ScriptEditorBase {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_current_editor_1906266726._native_ptr(),
                    1906266726)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ScriptEditorBase(godot: __resPtr.pointee)
    }
    public func get_open_script_editors() -> [ScriptEditorBase] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_open_script_editors_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [ScriptEditorBase](godot: __resPtr.pointee)
    }
    public func register_syntax_highlighter(syntax_highlighter: EditorSyntaxHighlighter)  {
        let syntax_highlighter_native = syntax_highlighter._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(syntax_highlighter_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_register_syntax_highlighter_1092774468._native_ptr(),
                    1092774468)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func unregister_syntax_highlighter(syntax_highlighter: EditorSyntaxHighlighter)  {
        let syntax_highlighter_native = syntax_highlighter._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(syntax_highlighter_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_unregister_syntax_highlighter_1092774468._native_ptr(),
                    1092774468)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func goto_line(line_number: Int64)  {
        withUnsafePointer(to: line_number) { line_number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_number_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_goto_line_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_current_script() -> Script {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_current_script_2146468882._native_ptr(),
                    2146468882)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Script(godot: __resPtr.pointee)
    }
    public func get_open_scripts() -> [Script] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_open_scripts_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Script](godot: __resPtr.pointee)
    }
    public func open_script_create_dialog(base_name: godot.String, base_path: godot.String)  {
        let base_path_native = base_path._native_ptr()
        let base_name_native = base_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(base_name_native), .init(base_path_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_open_script_create_dialog_3186203200._native_ptr(),
                    3186203200)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}