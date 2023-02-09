import godot_native

fileprivate var __godot_name_VisualShaderNodeParticleRandomness: StringName! = nil

/// Visual shader node for randomizing particle values.
/// 
/// Randomness node will output pseudo-random values of the given type based on the specified minimum and maximum values.
open class VisualShaderNodeParticleRandomness : VisualShaderNode {

    public enum OpType : Int32 {
        case OP_TYPE_SCALAR = 0
        case OP_TYPE_VECTOR_2D = 1
        case OP_TYPE_VECTOR_3D = 2
        case OP_TYPE_VECTOR_4D = 3
        case OP_TYPE_MAX = 4
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeParticleRandomness }

    static var _method_set_op_type_2060089061: StringName! = nil
    static var _method_get_op_type_3597061078: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeParticleRandomness == nil)
        __godot_name_VisualShaderNodeParticleRandomness = StringName(from: "VisualShaderNodeParticleRandomness")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_op_type_2060089061 = StringName(from: "set_op_type")
        assert(self._method_set_op_type_2060089061 != nil)
        self._method_get_op_type_3597061078 = StringName(from: "get_op_type")
        assert(self._method_get_op_type_3597061078 != nil)
    }

    public func set_op_type(`type`: VisualShaderNodeParticleRandomness.OpType)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_op_type_2060089061._native_ptr(),
                    2060089061)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_op_type_3597061078._native_ptr(),
                    3597061078)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeParticleRandomness.OpType(godot: __resPtr.pointee)
    }
}