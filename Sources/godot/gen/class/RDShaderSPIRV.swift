import godot_native

fileprivate var __godot_name_RDShaderSPIRV: StringName! = nil

/// 
/// 
/// 
open class RDShaderSPIRV : Resource {

    

    public override class var __godot_name: StringName { __godot_name_RDShaderSPIRV }

    static var _method_set_stage_bytecode_3514097977: StringName! = nil
    static var _method_get_stage_bytecode_3816765404: StringName! = nil
    static var _method_set_stage_compile_error_620821314: StringName! = nil
    static var _method_get_stage_compile_error_3354920045: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_RDShaderSPIRV == nil)
        __godot_name_RDShaderSPIRV = StringName(from: "RDShaderSPIRV")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_stage_bytecode_3514097977 = StringName(from: "set_stage_bytecode")
        assert(self._method_set_stage_bytecode_3514097977 != nil)
        self._method_get_stage_bytecode_3816765404 = StringName(from: "get_stage_bytecode")
        assert(self._method_get_stage_bytecode_3816765404 != nil)
        self._method_set_stage_compile_error_620821314 = StringName(from: "set_stage_compile_error")
        assert(self._method_set_stage_compile_error_620821314 != nil)
        self._method_get_stage_compile_error_3354920045 = StringName(from: "get_stage_compile_error")
        assert(self._method_get_stage_compile_error_3354920045 != nil)
    }

    public func set_stage_bytecode(stage: RenderingDevice.ShaderStage, bytecode: PackedByteArray)  {
        withUnsafePointer(to: stage.rawValue) { stage_native in
        let bytecode_native = bytecode._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stage_native), .init(bytecode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_stage_bytecode_3514097977._native_ptr(),
                    3514097977)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_stage_bytecode(stage: RenderingDevice.ShaderStage) -> PackedByteArray {
        withUnsafePointer(to: stage.rawValue) { stage_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stage_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_stage_bytecode_3816765404._native_ptr(),
                    3816765404)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
        }
    }
    public func set_stage_compile_error(stage: RenderingDevice.ShaderStage, compile_error: godot.String)  {
        withUnsafePointer(to: stage.rawValue) { stage_native in
        let compile_error_native = compile_error._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stage_native), .init(compile_error_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_stage_compile_error_620821314._native_ptr(),
                    620821314)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_stage_compile_error(stage: RenderingDevice.ShaderStage) -> godot.String {
        withUnsafePointer(to: stage.rawValue) { stage_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stage_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_stage_compile_error_3354920045._native_ptr(),
                    3354920045)
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
}