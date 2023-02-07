import godot_native

fileprivate var __godot_name_VisualShaderNodeParticleRandomness: StringName! = nil

/// Visual shader node for randomizing particle values.
/// 
/// Randomness node will output pseudo-random values of the given type based on the specified minimum and maximum values.
public class VisualShaderNodeParticleRandomness : VisualShaderNode {

    public enum OpType : Int32 {
        case OP_TYPE_SCALAR = 0
        case OP_TYPE_VECTOR_2D = 1
        case OP_TYPE_VECTOR_3D = 2
        case OP_TYPE_VECTOR_4D = 3
        case OP_TYPE_MAX = 4
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeParticleRandomness }

    static var _method_set_op_type_2060089061: GDExtensionMethodBindPtr! = nil
    static var _method_get_op_type_3597061078: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeParticleRandomness = StringName(from: "VisualShaderNodeParticleRandomness")

        let _method_set_op_type_2060089061_name = StringName(from: "set_op_type")
        self._method_set_op_type_2060089061 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_op_type_2060089061_name._native_ptr(), 2060089061)
        assert(VisualShaderNodeParticleRandomness._method_set_op_type_2060089061 != nil)
        let _method_get_op_type_3597061078_name = StringName(from: "get_op_type")
        self._method_get_op_type_3597061078 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_op_type_3597061078_name._native_ptr(), 3597061078)
        assert(VisualShaderNodeParticleRandomness._method_get_op_type_3597061078 != nil)
    }

    public func set_op_type(`type`: VisualShaderNodeParticleRandomness.OpType)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_op_type_2060089061,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_op_type() -> VisualShaderNodeParticleRandomness.OpType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_op_type_3597061078,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeParticleRandomness.OpType(from: __resPtr.pointee)
    }
}