import godot_native

fileprivate var __godot_name_VisualShaderNodeColorOp: StringName! = nil

/// A [Color] operator to be used within the visual shader graph.
/// 
/// Applies [member operator] to two color inputs.
open class VisualShaderNodeColorOp : VisualShaderNode {

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

    static var _method_set_operator_4260370673: StringName! = nil
    static var _method_get_operator_1950956529: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeColorOp == nil)
        __godot_name_VisualShaderNodeColorOp = StringName(from: "VisualShaderNodeColorOp")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_operator_4260370673 = StringName(from: "set_operator")
        assert(self._method_set_operator_4260370673 != nil)
        self._method_get_operator_1950956529 = StringName(from: "get_operator")
        assert(self._method_get_operator_1950956529 != nil)
    }

    public func set_operator(op: VisualShaderNodeColorOp.Operator)  {
        withUnsafePointer(to: op.rawValue) { op_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(op_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_operator_4260370673._native_ptr(),
                    4260370673)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_operator_1950956529._native_ptr(),
                    1950956529)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeColorOp.Operator(godot: __resPtr.pointee)
    }
}