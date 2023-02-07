import godot_native

fileprivate var __godot_name_RDShaderSPIRV: StringName! = nil

/// 
/// 
/// 
public class RDShaderSPIRV : Resource {

    

    public override class var __godot_name: StringName { __godot_name_RDShaderSPIRV }

    static var _method_set_stage_bytecode_3514097977: GDExtensionMethodBindPtr! = nil
    static var _method_get_stage_bytecode_3816765404: GDExtensionMethodBindPtr! = nil
    static var _method_set_stage_compile_error_620821314: GDExtensionMethodBindPtr! = nil
    static var _method_get_stage_compile_error_3354920045: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_RDShaderSPIRV = StringName(from: "RDShaderSPIRV")

        let _method_set_stage_bytecode_3514097977_name = StringName(from: "set_stage_bytecode")
        self._method_set_stage_bytecode_3514097977 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_stage_bytecode_3514097977_name._native_ptr(), 3514097977)
        assert(RDShaderSPIRV._method_set_stage_bytecode_3514097977 != nil)
        let _method_get_stage_bytecode_3816765404_name = StringName(from: "get_stage_bytecode")
        self._method_get_stage_bytecode_3816765404 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_stage_bytecode_3816765404_name._native_ptr(), 3816765404)
        assert(RDShaderSPIRV._method_get_stage_bytecode_3816765404 != nil)
        let _method_set_stage_compile_error_620821314_name = StringName(from: "set_stage_compile_error")
        self._method_set_stage_compile_error_620821314 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_stage_compile_error_620821314_name._native_ptr(), 620821314)
        assert(RDShaderSPIRV._method_set_stage_compile_error_620821314 != nil)
        let _method_get_stage_compile_error_3354920045_name = StringName(from: "get_stage_compile_error")
        self._method_get_stage_compile_error_3354920045 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_stage_compile_error_3354920045_name._native_ptr(), 3354920045)
        assert(RDShaderSPIRV._method_get_stage_compile_error_3354920045 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stage_bytecode_3514097977,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stage_bytecode_3816765404,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(from: __resPtr.pointee)
        }
    }
    public func set_stage_compile_error(stage: RenderingDevice.ShaderStage, compile_error: String)  {
        withUnsafePointer(to: compile_error) { compile_error_native in
        withUnsafePointer(to: stage.rawValue) { stage_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stage_native), .init(compile_error_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stage_compile_error_620821314,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_stage_compile_error(stage: RenderingDevice.ShaderStage) -> String {
        withUnsafePointer(to: stage.rawValue) { stage_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stage_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stage_compile_error_3354920045,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
}