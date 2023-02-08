import godot_native

fileprivate var __godot_name_ZIPReader: StringName! = nil

/// MISSING
/// 
/// MISSING
open class ZIPReader : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_ZIPReader }

    static var _method_open_166001499: GDExtensionMethodBindPtr! = nil
    static var _method_close_166280745: GDExtensionMethodBindPtr! = nil
    static var _method_get_files_2981934095: GDExtensionMethodBindPtr! = nil
    static var _method_read_file_156385007: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_ZIPReader = StringName(from: "ZIPReader")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_open_166001499_name = StringName(from: "open")
        self._method_open_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name_ZIPReader._native_ptr(), _method_open_166001499_name._native_ptr(), 166001499)
        assert(ZIPReader._method_open_166001499 != nil)
        let _method_close_166280745_name = StringName(from: "close")
        self._method_close_166280745 = self.interface.pointee.classdb_get_method_bind(__godot_name_ZIPReader._native_ptr(), _method_close_166280745_name._native_ptr(), 166280745)
        assert(ZIPReader._method_close_166280745 != nil)
        let _method_get_files_2981934095_name = StringName(from: "get_files")
        self._method_get_files_2981934095 = self.interface.pointee.classdb_get_method_bind(__godot_name_ZIPReader._native_ptr(), _method_get_files_2981934095_name._native_ptr(), 2981934095)
        assert(ZIPReader._method_get_files_2981934095 != nil)
        let _method_read_file_156385007_name = StringName(from: "read_file")
        self._method_read_file_156385007 = self.interface.pointee.classdb_get_method_bind(__godot_name_ZIPReader._native_ptr(), _method_read_file_156385007_name._native_ptr(), 156385007)
        assert(ZIPReader._method_read_file_156385007 != nil)
    }

    public func open(path: godot.String) -> Error {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_open_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func close() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_close_166280745,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func get_files() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_files_2981934095,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func read_file(path: godot.String, case_sensitive: UInt8) -> PackedByteArray {
        withUnsafePointer(to: case_sensitive) { case_sensitive_native in
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(case_sensitive_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_read_file_156385007,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
        }
    }
}