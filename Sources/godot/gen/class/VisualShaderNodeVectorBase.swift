import godot_native

fileprivate var __godot_name_VisualShaderNodeVectorBase: StringName! = nil

/// A base type for the nodes that perform vector operations within the visual shader graph.
/// 
/// This is an abstract class. See the derived types for descriptions of the possible operations.
open class VisualShaderNodeVectorBase : VisualShaderNode {

    public enum OpType : Int32 {
        case OP_TYPE_VECTOR_2D = 0
        case OP_TYPE_VECTOR_3D = 1
        case OP_TYPE_VECTOR_4D = 2
        case OP_TYPE_MAX = 3
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeVectorBase }

    static var _method_set_op_type_1692596998: GDExtensionMethodBindPtr! = nil
    static var _method_get_op_type_2568738462: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeVectorBase = StringName(from: "VisualShaderNodeVectorBase")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_op_type_1692596998_name = StringName(from: "set_op_type")
        self._method_set_op_type_1692596998 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeVectorBase._native_ptr(), _method_set_op_type_1692596998_name._native_ptr(), 1692596998)
        assert(VisualShaderNodeVectorBase._method_set_op_type_1692596998 != nil)
        let _method_get_op_type_2568738462_name = StringName(from: "get_op_type")
        self._method_get_op_type_2568738462 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeVectorBase._native_ptr(), _method_get_op_type_2568738462_name._native_ptr(), 2568738462)
        assert(VisualShaderNodeVectorBase._method_get_op_type_2568738462 != nil)
    }

    public func set_op_type(`type`: VisualShaderNodeVectorBase.OpType)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_op_type_1692596998,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_op_type() -> VisualShaderNodeVectorBase.OpType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_op_type_2568738462,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeVectorBase.OpType(godot: __resPtr.pointee)
    }
}