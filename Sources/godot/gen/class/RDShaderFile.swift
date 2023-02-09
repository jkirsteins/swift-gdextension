import godot_native

fileprivate var __godot_name_RDShaderFile: StringName! = nil

/// 
/// 
/// 
open class RDShaderFile : Resource {

    

    public override class var __godot_name: StringName { __godot_name_RDShaderFile }

    static var _method_set_bytecode_1558064255: StringName! = nil
    static var _method_get_spirv_3340165340: StringName! = nil
    static var _method_get_version_list_1139954409: StringName! = nil
    static var _method_set_base_error_83702148: StringName! = nil
    static var _method_get_base_error_201670096: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_RDShaderFile == nil)
        __godot_name_RDShaderFile = StringName(from: "RDShaderFile")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_bytecode_1558064255 = StringName(from: "set_bytecode")
        assert(self._method_set_bytecode_1558064255 != nil)
        self._method_get_spirv_3340165340 = StringName(from: "get_spirv")
        assert(self._method_get_spirv_3340165340 != nil)
        self._method_get_version_list_1139954409 = StringName(from: "get_version_list")
        assert(self._method_get_version_list_1139954409 != nil)
        self._method_set_base_error_83702148 = StringName(from: "set_base_error")
        assert(self._method_set_base_error_83702148 != nil)
        self._method_get_base_error_201670096 = StringName(from: "get_base_error")
        assert(self._method_get_base_error_201670096 != nil)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bytecode_1558064255._native_ptr(),
                    1558064255)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_spirv_3340165340._native_ptr(),
                    3340165340)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RDShaderSPIRV(godot: __resPtr.pointee)
    }
    public func get_version_list() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_version_list_1139954409._native_ptr(),
                    1139954409)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func set_base_error(error: godot.String)  {
        let error_native = error._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(error_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_base_error_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_base_error() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_base_error_201670096._native_ptr(),
                    201670096)
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