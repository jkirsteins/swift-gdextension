import godot_native

fileprivate var __godot_name_VisualShaderNodeExpression: StringName! = nil

/// A custom visual shader graph expression written in Godot Shading Language.
/// 
/// Custom Godot Shading Language expression, with a custom number of input and output ports.
///  
/// The provided code is directly injected into the graph's matching shader function ([code]vertex[/code], [code]fragment[/code], or [code]light[/code]), so it cannot be used to declare functions, varyings, uniforms, or global constants. See [VisualShaderNodeGlobalExpression] for such global definitions.
public class VisualShaderNodeExpression : VisualShaderNodeGroupBase {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeExpression }

    static var _method_set_expression_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_expression_201670096: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeExpression = StringName(from: "VisualShaderNodeExpression")

        let _method_set_expression_83702148_name = StringName(from: "set_expression")
        self._method_set_expression_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_expression_83702148_name._native_ptr(), 83702148)
        assert(VisualShaderNodeExpression._method_set_expression_83702148 != nil)
        let _method_get_expression_201670096_name = StringName(from: "get_expression")
        self._method_get_expression_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_expression_201670096_name._native_ptr(), 201670096)
        assert(VisualShaderNodeExpression._method_get_expression_201670096 != nil)
    }

    public func set_expression(expression: String)  {
        withUnsafePointer(to: expression) { expression_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(expression_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_expression_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_expression() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_expression_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
}