import godot_native

fileprivate var __godot_name_VisualShaderNodeExpression: StringName! = nil

/// A custom visual shader graph expression written in Godot Shading Language.
/// 
/// Custom Godot Shading Language expression, with a custom number of input and output ports.
///  
/// The provided code is directly injected into the graph's matching shader function ([code]vertex[/code], [code]fragment[/code], or [code]light[/code]), so it cannot be used to declare functions, varyings, uniforms, or global constants. See [VisualShaderNodeGlobalExpression] for such global definitions.
open class VisualShaderNodeExpression : VisualShaderNodeGroupBase {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeExpression }

    static var _method_set_expression_83702148: StringName! = nil
    static var _method_get_expression_201670096: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeExpression == nil)
        __godot_name_VisualShaderNodeExpression = StringName(from: "VisualShaderNodeExpression")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_expression_83702148 = StringName(from: "set_expression")
        assert(self._method_set_expression_83702148 != nil)
        self._method_get_expression_201670096 = StringName(from: "get_expression")
        assert(self._method_get_expression_201670096 != nil)
    }

    public func set_expression(expression: godot.String)  {
        let expression_native = expression._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(expression_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_expression_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_expression() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_expression_201670096._native_ptr(),
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