import godot_native

fileprivate var __godot_name_VisualShaderNodeColorOp: StringName! = nil

/// A [Color] operator to be used within the visual shader graph.
/// 
/// Applies [member operator] to two color inputs.
public class VisualShaderNodeColorOp : VisualShaderNode {

    public enum Operator : Int32 {
        case OP_SCREEN = 0
        case OP_DIFFERENCE = 1
        case OP_DARKEN = 2
        case OP_LIGHTEN = 3
        case OP_OVERLAY = 4
        case OP_DODGE = 5
        case OP_BURN = 6
        case OP_SOFT_LIGHT = 7
        case OP_HARD_LIGHT = 8
        case OP_MAX = 9
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeColorOp }

    static var _method_set_operator_4260370673: GDExtensionMethodBindPtr! = nil
    static var _method_get_operator_1950956529: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeColorOp = StringName(from: "VisualShaderNodeColorOp")

        let _method_set_operator_4260370673_name = StringName(from: "set_operator")
        self._method_set_operator_4260370673 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_operator_4260370673_name._native_ptr(), 4260370673)
        assert(VisualShaderNodeColorOp._method_set_operator_4260370673 != nil)
        let _method_get_operator_1950956529_name = StringName(from: "get_operator")
        self._method_get_operator_1950956529 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_operator_1950956529_name._native_ptr(), 1950956529)
        assert(VisualShaderNodeColorOp._method_get_operator_1950956529 != nil)
    }

    public func set_operator(op: VisualShaderNodeColorOp.Operator)  {
        withUnsafePointer(to: op.rawValue) { op_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(op_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_operator_4260370673,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_operator() -> VisualShaderNodeColorOp.Operator {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_operator_1950956529,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeColorOp.Operator(from: __resPtr.pointee)
    }
}