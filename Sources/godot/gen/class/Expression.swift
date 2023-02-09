import godot_native

fileprivate var __godot_name_Expression: StringName! = nil

/// A class that stores an expression you can execute.
/// 
/// An expression can be made of any arithmetic operation, built-in math function call, method call of a passed instance, or built-in type construction call.
///  
/// An example expression text using the built-in math functions could be [code]sqrt(pow(3, 2) + pow(4, 2))[/code].
///  
/// In the following example we use a [LineEdit] node to write our expression and show the result.
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var expression = Expression.new()
///  
///  
/// func _ready():
///  
///     $LineEdit.text_submitted.connect(self._on_text_submitted)
///  
///  
/// func _on_text_submitted(command):
///  
///     var error = expression.parse(command)
///  
///     if error != OK:
///  
///         print(expression.get_error_text())
///  
///         return
///  
///     var result = expression.execute()
///  
///     if not expression.has_execute_failed():
///  
///         $LineEdit.text = str(result)
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// private Expression _expression = new Expression();
///  
///  
/// public override void _Ready()
///  
/// {
///  
///     GetNode<LineEdit>("LineEdit").TextSubmitted += OnTextEntered;
///  
/// }
///  
///  
/// private void OnTextEntered(string command)
///  
/// {
///  
///     Error error = _expression.Parse(command);
///  
///     if (error != Error.Ok)
///  
///     {
///  
///         GD.Print(_expression.GetErrorText());
///  
///         return;
///  
///     }
///  
///     Variant result = _expression.Execute();
///  
///     if (!_expression.HasExecuteFailed())
///  
///     {
///  
///         GetNode<LineEdit>("LineEdit").Text = result.ToString();
///  
///     }
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
open class Expression : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_Expression }

    static var _method_parse_3658149758: StringName! = nil
    static var _method_execute_3712471238: StringName! = nil
    static var _method_has_execute_failed_36873697: StringName! = nil
    static var _method_get_error_text_201670096: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Expression == nil)
        __godot_name_Expression = StringName(from: "Expression")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_parse_3658149758 = StringName(from: "parse")
        assert(self._method_parse_3658149758 != nil)
        self._method_execute_3712471238 = StringName(from: "execute")
        assert(self._method_execute_3712471238 != nil)
        self._method_has_execute_failed_36873697 = StringName(from: "has_execute_failed")
        assert(self._method_has_execute_failed_36873697 != nil)
        self._method_get_error_text_201670096 = StringName(from: "get_error_text")
        assert(self._method_get_error_text_201670096 != nil)
    }

    public func parse(expression: godot.String, input_names: PackedStringArray) -> Error {
        let input_names_native = input_names._native_ptr()
        let expression_native = expression._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(expression_native), .init(input_names_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_parse_3658149758._native_ptr(),
                    3658149758)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func execute(inputs: Array, base_instance: Object, show_error: UInt8, const_calls_only: UInt8) -> Variant {
        withUnsafePointer(to: const_calls_only) { const_calls_only_native in
        withUnsafePointer(to: show_error) { show_error_native in
        let base_instance_native = base_instance._native_ptr()
        let inputs_native = inputs._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(inputs_native), .init(base_instance_native), .init(show_error_native), .init(const_calls_only_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_execute_3712471238._native_ptr(),
                    3712471238)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
        }
        }
    }
    public func has_execute_failed() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_execute_failed_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_error_text() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_error_text_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
}