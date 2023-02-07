import godot_native

fileprivate var __godot_name_ScriptEditor: StringName! = nil

/// Godot editor's script editor.
/// 
/// [b]Note:[/b] This class shouldn't be instantiated directly. Instead, access the singleton using [method EditorInterface.get_script_editor].
public class ScriptEditor : PanelContainer {

    

    public override class var __godot_name: StringName { __godot_name_ScriptEditor }

    static var _method_get_current_editor_1906266726: GDExtensionMethodBindPtr! = nil
    static var _method_get_open_script_editors_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_register_syntax_highlighter_1092774468: GDExtensionMethodBindPtr! = nil
    static var _method_unregister_syntax_highlighter_1092774468: GDExtensionMethodBindPtr! = nil
    static var _method_goto_line_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_script_2146468882: GDExtensionMethodBindPtr! = nil
    static var _method_get_open_scripts_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_open_script_create_dialog_3186203200: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_ScriptEditor = StringName(from: "ScriptEditor")

        let _method_get_current_editor_1906266726_name = StringName(from: "get_current_editor")
        self._method_get_current_editor_1906266726 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_current_editor_1906266726_name._native_ptr(), 1906266726)
        assert(ScriptEditor._method_get_current_editor_1906266726 != nil)
        let _method_get_open_script_editors_3995934104_name = StringName(from: "get_open_script_editors")
        self._method_get_open_script_editors_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_open_script_editors_3995934104_name._native_ptr(), 3995934104)
        assert(ScriptEditor._method_get_open_script_editors_3995934104 != nil)
        let _method_register_syntax_highlighter_1092774468_name = StringName(from: "register_syntax_highlighter")
        self._method_register_syntax_highlighter_1092774468 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_register_syntax_highlighter_1092774468_name._native_ptr(), 1092774468)
        assert(ScriptEditor._method_register_syntax_highlighter_1092774468 != nil)
        let _method_unregister_syntax_highlighter_1092774468_name = StringName(from: "unregister_syntax_highlighter")
        self._method_unregister_syntax_highlighter_1092774468 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_unregister_syntax_highlighter_1092774468_name._native_ptr(), 1092774468)
        assert(ScriptEditor._method_unregister_syntax_highlighter_1092774468 != nil)
        let _method_goto_line_1286410249_name = StringName(from: "goto_line")
        self._method_goto_line_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_goto_line_1286410249_name._native_ptr(), 1286410249)
        assert(ScriptEditor._method_goto_line_1286410249 != nil)
        let _method_get_current_script_2146468882_name = StringName(from: "get_current_script")
        self._method_get_current_script_2146468882 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_current_script_2146468882_name._native_ptr(), 2146468882)
        assert(ScriptEditor._method_get_current_script_2146468882 != nil)
        let _method_get_open_scripts_3995934104_name = StringName(from: "get_open_scripts")
        self._method_get_open_scripts_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_open_scripts_3995934104_name._native_ptr(), 3995934104)
        assert(ScriptEditor._method_get_open_scripts_3995934104 != nil)
        let _method_open_script_create_dialog_3186203200_name = StringName(from: "open_script_create_dialog")
        self._method_open_script_create_dialog_3186203200 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_open_script_create_dialog_3186203200_name._native_ptr(), 3186203200)
        assert(ScriptEditor._method_open_script_create_dialog_3186203200 != nil)
    }

    public func get_current_editor() -> ScriptEditorBase {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_editor_1906266726,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ScriptEditorBase(from: __resPtr.pointee)
    }
    public func get_open_script_editors() -> [ScriptEditorBase] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_open_script_editors_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [ScriptEditorBase](from: __resPtr.pointee)
    }
    public func register_syntax_highlighter(syntax_highlighter: EditorSyntaxHighlighter)  {
        let syntax_highlighter_native = syntax_highlighter._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(syntax_highlighter_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_register_syntax_highlighter_1092774468,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_unregister_syntax_highlighter_1092774468,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_goto_line_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_script_2146468882,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Script(from: __resPtr.pointee)
    }
    public func get_open_scripts() -> [Script] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_open_scripts_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Script](from: __resPtr.pointee)
    }
    public func open_script_create_dialog(base_name: String, base_path: String)  {
        withUnsafePointer(to: base_path) { base_path_native in
        withUnsafePointer(to: base_name) { base_name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(base_name_native), .init(base_path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_open_script_create_dialog_3186203200,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
}