import godot_native

fileprivate var __godot_name_SyntaxHighlighter: StringName! = nil

/// Base Syntax highlighter resource for [TextEdit].
/// 
/// Base syntax highlighter resource all syntax highlighters extend from, provides syntax highlighting data to [TextEdit].
///  
/// The associated [TextEdit] node will call into the [SyntaxHighlighter] on a as needed basis.
///  
/// [b]Note:[/b] Each Syntax highlighter instance should not be shared across multiple [TextEdit] nodes.
open class SyntaxHighlighter : Resource {

    

    public override class var __godot_name: StringName { __godot_name_SyntaxHighlighter }

    static var _method__get_line_syntax_highlighting_0: GDExtensionMethodBindPtr! = nil
    static var _method__clear_highlighting_cache_0: GDExtensionMethodBindPtr! = nil
    static var _method__update_cache_0: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_syntax_highlighting_3554694381: GDExtensionMethodBindPtr! = nil
    static var _method_update_cache_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_clear_highlighting_cache_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_edit_2185802765: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_SyntaxHighlighter = StringName(from: "SyntaxHighlighter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_line_syntax_highlighting_3554694381_name = StringName(from: "get_line_syntax_highlighting")
        self._method_get_line_syntax_highlighting_3554694381 = self.interface.pointee.classdb_get_method_bind(__godot_name_SyntaxHighlighter._native_ptr(), _method_get_line_syntax_highlighting_3554694381_name._native_ptr(), 3554694381)
        assert(SyntaxHighlighter._method_get_line_syntax_highlighting_3554694381 != nil)
        let _method_update_cache_3218959716_name = StringName(from: "update_cache")
        self._method_update_cache_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_SyntaxHighlighter._native_ptr(), _method_update_cache_3218959716_name._native_ptr(), 3218959716)
        assert(SyntaxHighlighter._method_update_cache_3218959716 != nil)
        let _method_clear_highlighting_cache_3218959716_name = StringName(from: "clear_highlighting_cache")
        self._method_clear_highlighting_cache_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_SyntaxHighlighter._native_ptr(), _method_clear_highlighting_cache_3218959716_name._native_ptr(), 3218959716)
        assert(SyntaxHighlighter._method_clear_highlighting_cache_3218959716 != nil)
        let _method_get_text_edit_2185802765_name = StringName(from: "get_text_edit")
        self._method_get_text_edit_2185802765 = self.interface.pointee.classdb_get_method_bind(__godot_name_SyntaxHighlighter._native_ptr(), _method_get_text_edit_2185802765_name._native_ptr(), 2185802765)
        assert(SyntaxHighlighter._method_get_text_edit_2185802765 != nil)
    }

    public func _get_line_syntax_highlighting(line: Int64) -> Dictionary {
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_line_syntax_highlighting_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
        }
    }
    public func _clear_highlighting_cache()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__clear_highlighting_cache_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _update_cache()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__update_cache_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_line_syntax_highlighting(line: Int64) -> Dictionary {
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_syntax_highlighting_3554694381,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
        }
    }
    public func update_cache()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_update_cache_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear_highlighting_cache()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_highlighting_cache_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_text_edit() -> TextEdit {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_text_edit_2185802765,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextEdit(godot: __resPtr.pointee)
    }
}