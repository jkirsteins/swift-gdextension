import godot_native

fileprivate var __godot_name_EditorSyntaxHighlighter: StringName! = nil

/// Base Syntax highlighter resource for the [ScriptEditor].
/// 
/// Base syntax highlighter resource all editor syntax highlighters extend from, it is used in the [ScriptEditor].
///  
/// Add a syntax highlighter to an individual script by calling [method ScriptEditorBase.add_syntax_highlighter]. To apply to all scripts on open, call [method ScriptEditor.register_syntax_highlighter]
open class EditorSyntaxHighlighter : SyntaxHighlighter {

    

    public override class var __godot_name: StringName { __godot_name_EditorSyntaxHighlighter }

    static var _method__get_name_0: StringName! = nil
    static var _method__get_supported_languages_0: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_EditorSyntaxHighlighter == nil)
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
            fatalError("Not implemented: virtual default results")
            return godot.String(godot: __resPtr.pointee)
    }
    public func _get_supported_languages() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return PackedStringArray(godot: __resPtr.pointee)
    }
}