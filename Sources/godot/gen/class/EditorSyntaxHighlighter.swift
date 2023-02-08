import godot_native

fileprivate var __godot_name_EditorSyntaxHighlighter: StringName! = nil

/// Base Syntax highlighter resource for the [ScriptEditor].
/// 
/// Base syntax highlighter resource all editor syntax highlighters extend from, it is used in the [ScriptEditor].
///  
/// Add a syntax highlighter to an individual script by calling [method ScriptEditorBase.add_syntax_highlighter]. To apply to all scripts on open, call [method ScriptEditor.register_syntax_highlighter]
open class EditorSyntaxHighlighter : SyntaxHighlighter {

    

    public override class var __godot_name: StringName { __godot_name_EditorSyntaxHighlighter }

    static var _method__get_name_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_supported_languages_0: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        __godot_name_EditorSyntaxHighlighter = StringName(from: "EditorSyntaxHighlighter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    public func _get_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func _get_supported_languages() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_supported_languages_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
}