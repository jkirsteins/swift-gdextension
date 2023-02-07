import godot_native

fileprivate var __godot_name_ScriptLanguageExtension: StringName! = nil

/// 
/// 
/// 
public class ScriptLanguageExtension : ScriptLanguage {

    public enum LookupResultType : Int32 {
        case LOOKUP_RESULT_SCRIPT_LOCATION = 0
        case LOOKUP_RESULT_CLASS = 1
        case LOOKUP_RESULT_CLASS_CONSTANT = 2
        case LOOKUP_RESULT_CLASS_PROPERTY = 3
        case LOOKUP_RESULT_CLASS_METHOD = 4
        case LOOKUP_RESULT_CLASS_SIGNAL = 5
        case LOOKUP_RESULT_CLASS_ENUM = 6
        case LOOKUP_RESULT_CLASS_TBD_GLOBALSCOPE = 7
        case LOOKUP_RESULT_CLASS_ANNOTATION = 8
        case LOOKUP_RESULT_MAX = 9
    }
    public enum CodeCompletionLocation : Int32 {
        case LOCATION_LOCAL = 0
        case LOCATION_PARENT_MASK = 256
        case LOCATION_OTHER_USER_CODE = 512
        case LOCATION_OTHER = 1024
    }
    public enum CodeCompletionKind : Int32 {
        case CODE_COMPLETION_KIND_CLASS = 0
        case CODE_COMPLETION_KIND_FUNCTION = 1
        case CODE_COMPLETION_KIND_SIGNAL = 2
        case CODE_COMPLETION_KIND_VARIABLE = 3
        case CODE_COMPLETION_KIND_MEMBER = 4
        case CODE_COMPLETION_KIND_ENUM = 5
        case CODE_COMPLETION_KIND_CONSTANT = 6
        case CODE_COMPLETION_KIND_NODE_PATH = 7
        case CODE_COMPLETION_KIND_FILE_PATH = 8
        case CODE_COMPLETION_KIND_PLAIN_TEXT = 9
        case CODE_COMPLETION_KIND_MAX = 10
    }

    public override class var __godot_name: StringName { __godot_name_ScriptLanguageExtension }

    static var _method__get_name_0: GDExtensionMethodBindPtr! = nil
    static var _method__init_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_type_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_extension_0: GDExtensionMethodBindPtr! = nil
    static var _method__execute_file_0: GDExtensionMethodBindPtr! = nil
    static var _method__finish_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_reserved_words_0: GDExtensionMethodBindPtr! = nil
    static var _method__is_control_flow_keyword_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_comment_delimiters_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_string_delimiters_0: GDExtensionMethodBindPtr! = nil
    static var _method__make_template_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_built_in_templates_0: GDExtensionMethodBindPtr! = nil
    static var _method__is_using_templates_0: GDExtensionMethodBindPtr! = nil
    static var _method__validate_0: GDExtensionMethodBindPtr! = nil
    static var _method__validate_path_0: GDExtensionMethodBindPtr! = nil
    static var _method__create_script_0: GDExtensionMethodBindPtr! = nil
    static var _method__has_named_classes_0: GDExtensionMethodBindPtr! = nil
    static var _method__supports_builtin_mode_0: GDExtensionMethodBindPtr! = nil
    static var _method__supports_documentation_0: GDExtensionMethodBindPtr! = nil
    static var _method__can_inherit_from_file_0: GDExtensionMethodBindPtr! = nil
    static var _method__find_function_0: GDExtensionMethodBindPtr! = nil
    static var _method__make_function_0: GDExtensionMethodBindPtr! = nil
    static var _method__open_in_external_editor_0: GDExtensionMethodBindPtr! = nil
    static var _method__overrides_external_editor_0: GDExtensionMethodBindPtr! = nil
    static var _method__complete_code_0: GDExtensionMethodBindPtr! = nil
    static var _method__lookup_code_0: GDExtensionMethodBindPtr! = nil
    static var _method__auto_indent_code_0: GDExtensionMethodBindPtr! = nil
    static var _method__add_global_constant_0: GDExtensionMethodBindPtr! = nil
    static var _method__add_named_global_constant_0: GDExtensionMethodBindPtr! = nil
    static var _method__remove_named_global_constant_0: GDExtensionMethodBindPtr! = nil
    static var _method__thread_enter_0: GDExtensionMethodBindPtr! = nil
    static var _method__thread_exit_0: GDExtensionMethodBindPtr! = nil
    static var _method__debug_get_error_0: GDExtensionMethodBindPtr! = nil
    static var _method__debug_get_stack_level_count_0: GDExtensionMethodBindPtr! = nil
    static var _method__debug_get_stack_level_line_0: GDExtensionMethodBindPtr! = nil
    static var _method__debug_get_stack_level_function_0: GDExtensionMethodBindPtr! = nil
    static var _method__debug_get_stack_level_locals_0: GDExtensionMethodBindPtr! = nil
    static var _method__debug_get_stack_level_members_0: GDExtensionMethodBindPtr! = nil
    static var _method__debug_get_stack_level_instance_0: GDExtensionMethodBindPtr! = nil
    static var _method__debug_get_globals_0: GDExtensionMethodBindPtr! = nil
    static var _method__debug_parse_stack_level_expression_0: GDExtensionMethodBindPtr! = nil
    static var _method__debug_get_current_stack_info_0: GDExtensionMethodBindPtr! = nil
    static var _method__reload_all_scripts_0: GDExtensionMethodBindPtr! = nil
    static var _method__reload_tool_script_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_recognized_extensions_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_public_functions_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_public_constants_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_public_annotations_0: GDExtensionMethodBindPtr! = nil
    static var _method__profiling_start_0: GDExtensionMethodBindPtr! = nil
    static var _method__profiling_stop_0: GDExtensionMethodBindPtr! = nil
    static var _method__profiling_get_accumulated_data_0: GDExtensionMethodBindPtr! = nil
    static var _method__profiling_get_frame_data_0: GDExtensionMethodBindPtr! = nil
    static var _method__alloc_instance_binding_data_0: GDExtensionMethodBindPtr! = nil
    static var _method__free_instance_binding_data_0: GDExtensionMethodBindPtr! = nil
    static var _method__refcount_incremented_instance_binding_0: GDExtensionMethodBindPtr! = nil
    static var _method__refcount_decremented_instance_binding_0: GDExtensionMethodBindPtr! = nil
    static var _method__frame_0: GDExtensionMethodBindPtr! = nil
    static var _method__handles_global_class_type_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_global_class_name_0: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_ScriptLanguageExtension = StringName(from: "ScriptLanguageExtension")

        
    }

    public func _get_name() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func _init()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__init_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _get_type() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_type_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func _get_extension() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_extension_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func _execute_file(path: String) -> Error {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__execute_file_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func _finish()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__finish_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _get_reserved_words() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_reserved_words_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func _is_control_flow_keyword(keyword: String) -> UInt8 {
        withUnsafePointer(to: keyword) { keyword_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keyword_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__is_control_flow_keyword_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func _get_comment_delimiters() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_comment_delimiters_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func _get_string_delimiters() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_string_delimiters_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func _make_template(template: String, class_name: String, base_class_name: String) -> Script {
        withUnsafePointer(to: base_class_name) { base_class_name_native in
        withUnsafePointer(to: class_name) { class_name_native in
        withUnsafePointer(to: template) { template_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(template_native), .init(class_name_native), .init(base_class_name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__make_template_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Script(from: __resPtr.pointee)
        }
        }
        }
    }
    public func _get_built_in_templates(object: StringName) -> [Dictionary] {
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_built_in_templates_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
    }
    public func _is_using_templates() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__is_using_templates_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _validate(script: String, path: String, validate_functions: UInt8, validate_errors: UInt8, validate_warnings: UInt8, validate_safe_lines: UInt8) -> Dictionary {
        withUnsafePointer(to: validate_safe_lines) { validate_safe_lines_native in
        withUnsafePointer(to: validate_warnings) { validate_warnings_native in
        withUnsafePointer(to: validate_errors) { validate_errors_native in
        withUnsafePointer(to: validate_functions) { validate_functions_native in
        withUnsafePointer(to: path) { path_native in
        withUnsafePointer(to: script) { script_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(script_native), .init(path_native), .init(validate_functions_native), .init(validate_errors_native), .init(validate_warnings_native), .init(validate_safe_lines_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__validate_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
        }
        }
        }
        }
        }
        }
    }
    public func _validate_path(path: String) -> String {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__validate_path_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func _create_script() -> Object {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__create_script_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Object(from: __resPtr.pointee)
    }
    public func _has_named_classes() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__has_named_classes_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _supports_builtin_mode() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__supports_builtin_mode_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _supports_documentation() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__supports_documentation_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _can_inherit_from_file() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__can_inherit_from_file_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _find_function(class_name: String, function_name: String) -> Int64 {
        withUnsafePointer(to: function_name) { function_name_native in
        withUnsafePointer(to: class_name) { class_name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_name_native), .init(function_name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__find_function_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
    }
    public func _make_function(class_name: String, function_name: String, function_args: PackedStringArray) -> String {
        withUnsafePointer(to: function_name) { function_name_native in
        withUnsafePointer(to: class_name) { class_name_native in
        let function_args_native = function_args._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_name_native), .init(function_name_native), .init(function_args_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__make_function_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
        }
    }
    public func _open_in_external_editor(script: Script, line: Int64, column: Int64) -> Error {
        withUnsafePointer(to: column) { column_native in
        withUnsafePointer(to: line) { line_native in
        let script_native = script._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(script_native), .init(line_native), .init(column_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__open_in_external_editor_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
    }
    public func _overrides_external_editor() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__overrides_external_editor_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _complete_code(code: String, path: String, owner: Object) -> Dictionary {
        withUnsafePointer(to: path) { path_native in
        withUnsafePointer(to: code) { code_native in
        let owner_native = owner._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(code_native), .init(path_native), .init(owner_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__complete_code_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
        }
        }
    }
    public func _lookup_code(code: String, symbol: String, path: String, owner: Object) -> Dictionary {
        withUnsafePointer(to: path) { path_native in
        withUnsafePointer(to: symbol) { symbol_native in
        withUnsafePointer(to: code) { code_native in
        let owner_native = owner._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(code_native), .init(symbol_native), .init(path_native), .init(owner_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__lookup_code_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
        }
        }
        }
    }
    public func _auto_indent_code(code: String, from_line: Int64, to_line: Int64) -> String {
        withUnsafePointer(to: to_line) { to_line_native in
        withUnsafePointer(to: from_line) { from_line_native in
        withUnsafePointer(to: code) { code_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(code_native), .init(from_line_native), .init(to_line_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__auto_indent_code_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
        }
        }
    }
    public func _add_global_constant(name: StringName, value: Variant)  {
        let value_native = value._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__add_global_constant_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _add_named_global_constant(name: StringName, value: Variant)  {
        let value_native = value._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__add_named_global_constant_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _remove_named_global_constant(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__remove_named_global_constant_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _thread_enter()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__thread_enter_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _thread_exit()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__thread_exit_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _debug_get_error() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__debug_get_error_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func _debug_get_stack_level_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__debug_get_stack_level_count_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _debug_get_stack_level_line(level: Int64) -> Int64 {
        withUnsafePointer(to: level) { level_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(level_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__debug_get_stack_level_line_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func _debug_get_stack_level_function(level: Int64) -> String {
        withUnsafePointer(to: level) { level_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(level_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__debug_get_stack_level_function_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func _debug_get_stack_level_locals(level: Int64, max_subitems: Int64, max_depth: Int64) -> Dictionary {
        withUnsafePointer(to: max_depth) { max_depth_native in
        withUnsafePointer(to: max_subitems) { max_subitems_native in
        withUnsafePointer(to: level) { level_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(level_native), .init(max_subitems_native), .init(max_depth_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__debug_get_stack_level_locals_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
        }
        }
        }
    }
    public func _debug_get_stack_level_members(level: Int64, max_subitems: Int64, max_depth: Int64) -> Dictionary {
        withUnsafePointer(to: max_depth) { max_depth_native in
        withUnsafePointer(to: max_subitems) { max_subitems_native in
        withUnsafePointer(to: level) { level_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(level_native), .init(max_subitems_native), .init(max_depth_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__debug_get_stack_level_members_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
        }
        }
        }
    }
    public func _debug_get_stack_level_instance(level: Int64) -> UnsafeMutableRawPointer {
        withUnsafePointer(to: level) { level_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(level_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__debug_get_stack_level_instance_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UnsafeMutableRawPointer(from: __resPtr.pointee)
        }
    }
    public func _debug_get_globals(max_subitems: Int64, max_depth: Int64) -> Dictionary {
        withUnsafePointer(to: max_depth) { max_depth_native in
        withUnsafePointer(to: max_subitems) { max_subitems_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_subitems_native), .init(max_depth_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__debug_get_globals_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
        }
        }
    }
    public func _debug_parse_stack_level_expression(level: Int64, expression: String, max_subitems: Int64, max_depth: Int64) -> String {
        withUnsafePointer(to: max_depth) { max_depth_native in
        withUnsafePointer(to: max_subitems) { max_subitems_native in
        withUnsafePointer(to: expression) { expression_native in
        withUnsafePointer(to: level) { level_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(level_native), .init(expression_native), .init(max_subitems_native), .init(max_depth_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__debug_parse_stack_level_expression_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func _debug_get_current_stack_info() -> [Dictionary] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__debug_get_current_stack_info_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
    }
    public func _reload_all_scripts()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__reload_all_scripts_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _reload_tool_script(script: Script, soft_reload: UInt8)  {
        withUnsafePointer(to: soft_reload) { soft_reload_native in
        let script_native = script._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(script_native), .init(soft_reload_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__reload_tool_script_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _get_recognized_extensions() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_recognized_extensions_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func _get_public_functions() -> [Dictionary] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_public_functions_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
    }
    public func _get_public_constants() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_public_constants_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
    }
    public func _get_public_annotations() -> [Dictionary] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_public_annotations_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
    }
    public func _profiling_start()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__profiling_start_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _profiling_stop()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__profiling_stop_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _profiling_get_accumulated_data(info_array: UnsafePointer<ScriptLanguageExtensionProfilingInfo>, info_max: Int64) -> Int64 {
        withUnsafePointer(to: info_max) { info_max_native in
        withUnsafePointer(to: info_array) { info_array_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(info_array_native), .init(info_max_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__profiling_get_accumulated_data_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
    }
    public func _profiling_get_frame_data(info_array: UnsafePointer<ScriptLanguageExtensionProfilingInfo>, info_max: Int64) -> Int64 {
        withUnsafePointer(to: info_max) { info_max_native in
        withUnsafePointer(to: info_array) { info_array_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(info_array_native), .init(info_max_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__profiling_get_frame_data_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
    }
    public func _alloc_instance_binding_data(object: Object) -> UnsafeMutableRawPointer {
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__alloc_instance_binding_data_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UnsafeMutableRawPointer(from: __resPtr.pointee)
    }
    public func _free_instance_binding_data(data: UnsafeMutableRawPointer)  {
        withUnsafePointer(to: data) { data_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__free_instance_binding_data_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _refcount_incremented_instance_binding(object: Object)  {
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__refcount_incremented_instance_binding_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _refcount_decremented_instance_binding(object: Object) -> UInt8 {
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__refcount_decremented_instance_binding_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _frame()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__frame_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _handles_global_class_type(`type`: String) -> UInt8 {
        withUnsafePointer(to: `type`) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__handles_global_class_type_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func _get_global_class_name(path: String) -> Dictionary {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_global_class_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
        }
    }
}