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

    static var _method__get_line_syntax_highlighting_0: StringName! = nil
    static var _method__clear_highlighting_cache_0: StringName! = nil
    static var _method__update_cache_0: StringName! = nil
    static var _method_get_line_syntax_highlighting_3554694381: StringName! = nil
    static var _method_update_cache_3218959716: StringName! = nil
    static var _method_clear_highlighting_cache_3218959716: StringName! = nil
    static var _method_get_text_edit_2185802765: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_SyntaxHighlighter == nil)
        __godot_name_SyntaxHighlighter = StringName(from: "SyntaxHighlighter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_line_syntax_highlighting_3554694381 = StringName(from: "get_line_syntax_highlighting")
        assert(self._method_get_line_syntax_highlighting_3554694381 != nil)
        self._method_update_cache_3218959716 = StringName(from: "update_cache")
        assert(self._method_update_cache_3218959716 != nil)
        self._method_clear_highlighting_cache_3218959716 = StringName(from: "clear_highlighting_cache")
        assert(self._method_clear_highlighting_cache_3218959716 != nil)
        self._method_get_text_edit_2185802765 = StringName(from: "get_text_edit")
        assert(self._method_get_text_edit_2185802765 != nil)
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
            fatalError("Not implemented: virtual default results")
            return Dictionary(godot: __resPtr.pointee)
        }
    }
    public func _clear_highlighting_cache()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _update_cache()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_line_syntax_highlighting_3554694381._native_ptr(),
                    3554694381)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_update_cache_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_highlighting_cache_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_text_edit_2185802765._native_ptr(),
                    2185802765)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextEdit(godot: __resPtr.pointee)
    }
}