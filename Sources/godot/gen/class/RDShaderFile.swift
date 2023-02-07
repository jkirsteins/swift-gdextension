import godot_native

fileprivate var __godot_name_RDShaderFile: StringName! = nil

/// 
/// 
/// 
public class RDShaderFile : Resource {

    

    public override class var __godot_name: StringName { __godot_name_RDShaderFile }

    static var _method_set_bytecode_1558064255: GDExtensionMethodBindPtr! = nil
    static var _method_get_spirv_3340165340: GDExtensionMethodBindPtr! = nil
    static var _method_get_version_list_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_set_base_error_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_base_error_201670096: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_RDShaderFile = StringName(from: "RDShaderFile")

        let _method_set_bytecode_1558064255_name = StringName(from: "set_bytecode")
        self._method_set_bytecode_1558064255 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bytecode_1558064255_name._native_ptr(), 1558064255)
        assert(RDShaderFile._method_set_bytecode_1558064255 != nil)
        let _method_get_spirv_3340165340_name = StringName(from: "get_spirv")
        self._method_get_spirv_3340165340 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_spirv_3340165340_name._native_ptr(), 3340165340)
        assert(RDShaderFile._method_get_spirv_3340165340 != nil)
        let _method_get_version_list_1139954409_name = StringName(from: "get_version_list")
        self._method_get_version_list_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_version_list_1139954409_name._native_ptr(), 1139954409)
        assert(RDShaderFile._method_get_version_list_1139954409 != nil)
        let _method_set_base_error_83702148_name = StringName(from: "set_base_error")
        self._method_set_base_error_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_base_error_83702148_name._native_ptr(), 83702148)
        assert(RDShaderFile._method_set_base_error_83702148 != nil)
        let _method_get_base_error_201670096_name = StringName(from: "get_base_error")
        self._method_get_base_error_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_base_error_201670096_name._native_ptr(), 201670096)
        assert(RDShaderFile._method_get_base_error_201670096 != nil)
    }

    public func set_bytecode(bytecode: RDShaderSPIRV, version: StringName)  {
        let version_native = version._native_ptr()
        let bytecode_native = bytecode._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bytecode_native), .init(version_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bytecode_1558064255,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_spirv(version: StringName) -> RDShaderSPIRV {
        let version_native = version._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(version_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_spirv_3340165340,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RDShaderSPIRV(from: __resPtr.pointee)
    }
    public func get_version_list() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_version_list_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func set_base_error(error: String)  {
        withUnsafePointer(to: error) { error_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(error_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_base_error_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_base_error() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_base_error_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
}