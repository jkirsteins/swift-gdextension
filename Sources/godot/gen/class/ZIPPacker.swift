import godot_native

fileprivate var __godot_name_ZIPPacker: StringName! = nil

/// MISSING
/// 
/// MISSING
public class ZIPPacker : RefCounted {

    public enum ZipAppend : Int32 {
        case APPEND_CREATE = 0
        case APPEND_CREATEAFTER = 1
        case APPEND_ADDINZIP = 2
    }

    public override class var __godot_name: StringName { __godot_name_ZIPPacker }

    static var _method_open_3715508516: GDExtensionMethodBindPtr! = nil
    static var _method_start_file_166001499: GDExtensionMethodBindPtr! = nil
    static var _method_write_file_680677267: GDExtensionMethodBindPtr! = nil
    static var _method_close_file_166280745: GDExtensionMethodBindPtr! = nil
    static var _method_close_166280745: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_ZIPPacker = StringName(from: "ZIPPacker")

        let _method_open_3715508516_name = StringName(from: "open")
        self._method_open_3715508516 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_open_3715508516_name._native_ptr(), 3715508516)
        assert(ZIPPacker._method_open_3715508516 != nil)
        let _method_start_file_166001499_name = StringName(from: "start_file")
        self._method_start_file_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_start_file_166001499_name._native_ptr(), 166001499)
        assert(ZIPPacker._method_start_file_166001499 != nil)
        let _method_write_file_680677267_name = StringName(from: "write_file")
        self._method_write_file_680677267 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_write_file_680677267_name._native_ptr(), 680677267)
        assert(ZIPPacker._method_write_file_680677267 != nil)
        let _method_close_file_166280745_name = StringName(from: "close_file")
        self._method_close_file_166280745 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_close_file_166280745_name._native_ptr(), 166280745)
        assert(ZIPPacker._method_close_file_166280745 != nil)
        let _method_close_166280745_name = StringName(from: "close")
        self._method_close_166280745 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_close_166280745_name._native_ptr(), 166280745)
        assert(ZIPPacker._method_close_166280745 != nil)
    }

    public func open(path: String, append: ZIPPacker.ZipAppend) -> Error {
        withUnsafePointer(to: path) { path_native in
        withUnsafePointer(to: append.rawValue) { append_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(append_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_open_3715508516,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
    }
    public func start_file(path: String) -> Error {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_start_file_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func write_file(data: PackedByteArray) -> Error {
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_write_file_680677267,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
    }
    public func close_file() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_close_file_166280745,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
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
            return Error(from: __resPtr.pointee)
    }
}