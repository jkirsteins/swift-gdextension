import godot_native

fileprivate var __godot_name_VisualShaderNodeDerivativeFunc: StringName! = nil

/// Calculates a derivative within the visual shader graph.
/// 
/// This node is only available in [code]Fragment[/code] and [code]Light[/code] visual shaders.
open class VisualShaderNodeDerivativeFunc : VisualShaderNode {

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

    static var _method_set_op_type_377800221: StringName! = nil
    static var _method_get_op_type_3997800514: StringName! = nil
    static var _method_set_function_1944704156: StringName! = nil
    static var _method_get_function_2389093396: StringName! = nil
    static var _method_set_precision_797270566: StringName! = nil
    static var _method_get_precision_3822547323: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeDerivativeFunc == nil)
        __godot_name_VisualShaderNodeDerivativeFunc = StringName(from: "VisualShaderNodeDerivativeFunc")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_op_type_377800221 = StringName(from: "set_op_type")
        assert(self._method_set_op_type_377800221 != nil)
        self._method_get_op_type_3997800514 = StringName(from: "get_op_type")
        assert(self._method_get_op_type_3997800514 != nil)
        self._method_set_function_1944704156 = StringName(from: "set_function")
        assert(self._method_set_function_1944704156 != nil)
        self._method_get_function_2389093396 = StringName(from: "get_function")
        assert(self._method_get_function_2389093396 != nil)
        self._method_set_precision_797270566 = StringName(from: "set_precision")
        assert(self._method_set_precision_797270566 != nil)
        self._method_get_precision_3822547323 = StringName(from: "get_precision")
        assert(self._method_get_precision_3822547323 != nil)
    }

    public func set_op_type(`type`: VisualShaderNodeDerivativeFunc.OpType)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_op_type_377800221._native_ptr(),
                    377800221)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_op_type_3997800514._native_ptr(),
                    3997800514)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeDerivativeFunc.OpType(godot: __resPtr.pointee)
    }
    public func set_function(`func`: VisualShaderNodeDerivativeFunc.Function)  {
        withUnsafePointer(to: `func`.rawValue) { func_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(func_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_function_1944704156._native_ptr(),
                    1944704156)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_function_2389093396._native_ptr(),
                    2389093396)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeDerivativeFunc.Function(godot: __resPtr.pointee)
    }
    public func set_precision(precision: VisualShaderNodeDerivativeFunc.Precision)  {
        withUnsafePointer(to: precision.rawValue) { precision_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(precision_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_precision_797270566._native_ptr(),
                    797270566)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_precision_3822547323._native_ptr(),
                    3822547323)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeDerivativeFunc.Precision(godot: __resPtr.pointee)
    }
}