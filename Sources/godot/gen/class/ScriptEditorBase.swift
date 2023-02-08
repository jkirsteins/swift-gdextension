import godot_native

fileprivate var __godot_name_ScriptEditorBase: StringName! = nil

/// Base editor for editing scripts in the [ScriptEditor].
/// 
/// Base editor for editing scripts in the [ScriptEditor], this does not include documentation items.
open class ScriptEditorBase : VBoxContainer {

    

    public override class var __godot_name: StringName { __godot_name_ScriptEditorBase }

    static var _method_get_base_editor_2783021301: GDExtensionMethodBindPtr! = nil
    static var _method_add_syntax_highlighter_1092774468: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        __godot_name_ScriptEditorBase = StringName(from: "ScriptEditorBase")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_base_editor_2783021301_name = StringName(from: "get_base_editor")
        self._method_get_base_editor_2783021301 = self.interface.pointee.classdb_get_method_bind(__godot_name_ScriptEditorBase._native_ptr(), _method_get_base_editor_2783021301_name._native_ptr(), 2783021301)
        assert(ScriptEditorBase._method_get_base_editor_2783021301 != nil)
        let _method_add_syntax_highlighter_1092774468_name = StringName(from: "add_syntax_highlighter")
        self._method_add_syntax_highlighter_1092774468 = self.interface.pointee.classdb_get_method_bind(__godot_name_ScriptEditorBase._native_ptr(), _method_add_syntax_highlighter_1092774468_name._native_ptr(), 1092774468)
        assert(ScriptEditorBase._method_add_syntax_highlighter_1092774468 != nil)
    }

    public func get_base_editor() -> Control {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_base_editor_2783021301,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control(godot: __resPtr.pointee)
    }
    public func add_syntax_highlighter(highlighter: EditorSyntaxHighlighter)  {
        let highlighter_native = highlighter._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(highlighter_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_syntax_highlighter_1092774468,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}