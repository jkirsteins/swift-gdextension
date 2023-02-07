import godot_native

fileprivate var __godot_name_VisualShaderNodeSwitch: StringName! = nil

/// A selector function for use within the visual shader graph.
/// 
/// Returns an associated value of the [code]op_type[/code] type if the provided boolean value is [code]true[/code] or [code]false[/code].
public class VisualShaderNodeSwitch : VisualShaderNode {

    public enum OpType : Int32 {
        case OP_TYPE_FLOAT = 0
        case OP_TYPE_INT = 1
        case OP_TYPE_UINT = 2
        case OP_TYPE_VECTOR_2D = 3
        case OP_TYPE_VECTOR_3D = 4
        case OP_TYPE_VECTOR_4D = 5
        case OP_TYPE_BOOLEAN = 6
        case OP_TYPE_TRANSFORM = 7
        case OP_TYPE_MAX = 8
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeSwitch }

    static var _method_set_op_type_510471861: GDExtensionMethodBindPtr! = nil
    static var _method_get_op_type_2517845071: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeSwitch = StringName(from: "VisualShaderNodeSwitch")

        let _method_set_op_type_510471861_name = StringName(from: "set_op_type")
        self._method_set_op_type_510471861 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_op_type_510471861_name._native_ptr(), 510471861)
        assert(VisualShaderNodeSwitch._method_set_op_type_510471861 != nil)
        let _method_get_op_type_2517845071_name = StringName(from: "get_op_type")
        self._method_get_op_type_2517845071 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_op_type_2517845071_name._native_ptr(), 2517845071)
        assert(VisualShaderNodeSwitch._method_get_op_type_2517845071 != nil)
    }

    public func set_op_type(`type`: VisualShaderNodeSwitch.OpType)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_op_type_510471861,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_op_type() -> VisualShaderNodeSwitch.OpType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_op_type_2517845071,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeSwitch.OpType(from: __resPtr.pointee)
    }
}