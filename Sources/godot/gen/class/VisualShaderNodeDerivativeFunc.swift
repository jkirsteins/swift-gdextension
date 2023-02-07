import godot_native

fileprivate var __godot_name_VisualShaderNodeDerivativeFunc: StringName! = nil

/// Calculates a derivative within the visual shader graph.
/// 
/// This node is only available in [code]Fragment[/code] and [code]Light[/code] visual shaders.
public class VisualShaderNodeDerivativeFunc : VisualShaderNode {

    public enum OpType : Int32 {
        case OP_TYPE_SCALAR = 0
        case OP_TYPE_VECTOR_2D = 1
        case OP_TYPE_VECTOR_3D = 2
        case OP_TYPE_VECTOR_4D = 3
        case OP_TYPE_MAX = 4
    }
    public enum Function : Int32 {
        case FUNC_SUM = 0
        case FUNC_X = 1
        case FUNC_Y = 2
        case FUNC_MAX = 3
    }
    public enum Precision : Int32 {
        case PRECISION_NONE = 0
        case PRECISION_COARSE = 1
        case PRECISION_FINE = 2
        case PRECISION_MAX = 3
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeDerivativeFunc }

    static var _method_set_op_type_377800221: GDExtensionMethodBindPtr! = nil
    static var _method_get_op_type_3997800514: GDExtensionMethodBindPtr! = nil
    static var _method_set_function_1944704156: GDExtensionMethodBindPtr! = nil
    static var _method_get_function_2389093396: GDExtensionMethodBindPtr! = nil
    static var _method_set_precision_797270566: GDExtensionMethodBindPtr! = nil
    static var _method_get_precision_3822547323: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeDerivativeFunc = StringName(from: "VisualShaderNodeDerivativeFunc")

        let _method_set_op_type_377800221_name = StringName(from: "set_op_type")
        self._method_set_op_type_377800221 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_op_type_377800221_name._native_ptr(), 377800221)
        assert(VisualShaderNodeDerivativeFunc._method_set_op_type_377800221 != nil)
        let _method_get_op_type_3997800514_name = StringName(from: "get_op_type")
        self._method_get_op_type_3997800514 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_op_type_3997800514_name._native_ptr(), 3997800514)
        assert(VisualShaderNodeDerivativeFunc._method_get_op_type_3997800514 != nil)
        let _method_set_function_1944704156_name = StringName(from: "set_function")
        self._method_set_function_1944704156 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_function_1944704156_name._native_ptr(), 1944704156)
        assert(VisualShaderNodeDerivativeFunc._method_set_function_1944704156 != nil)
        let _method_get_function_2389093396_name = StringName(from: "get_function")
        self._method_get_function_2389093396 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_function_2389093396_name._native_ptr(), 2389093396)
        assert(VisualShaderNodeDerivativeFunc._method_get_function_2389093396 != nil)
        let _method_set_precision_797270566_name = StringName(from: "set_precision")
        self._method_set_precision_797270566 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_precision_797270566_name._native_ptr(), 797270566)
        assert(VisualShaderNodeDerivativeFunc._method_set_precision_797270566 != nil)
        let _method_get_precision_3822547323_name = StringName(from: "get_precision")
        self._method_get_precision_3822547323 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_precision_3822547323_name._native_ptr(), 3822547323)
        assert(VisualShaderNodeDerivativeFunc._method_get_precision_3822547323 != nil)
    }

    public func set_op_type(`type`: VisualShaderNodeDerivativeFunc.OpType)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_op_type_377800221,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_op_type() -> VisualShaderNodeDerivativeFunc.OpType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_op_type_3997800514,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeDerivativeFunc.OpType(from: __resPtr.pointee)
    }
    public func set_function(`func`: VisualShaderNodeDerivativeFunc.Function)  {
        withUnsafePointer(to: `func`.rawValue) { func_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(func_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_function_1944704156,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_function() -> VisualShaderNodeDerivativeFunc.Function {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_function_2389093396,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeDerivativeFunc.Function(from: __resPtr.pointee)
    }
    public func set_precision(precision: VisualShaderNodeDerivativeFunc.Precision)  {
        withUnsafePointer(to: precision.rawValue) { precision_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(precision_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_precision_797270566,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_precision() -> VisualShaderNodeDerivativeFunc.Precision {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_precision_3822547323,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeDerivativeFunc.Precision(from: __resPtr.pointee)
    }
}