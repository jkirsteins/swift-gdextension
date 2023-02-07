import godot_native

fileprivate var __godot_name_EditorFileSystem: StringName! = nil

/// Resource filesystem, as the editor sees it.
/// 
/// This object holds information of all resources in the filesystem, their types, etc.
///  
/// [b]Note:[/b] This class shouldn't be instantiated directly. Instead, access the singleton using [method EditorInterface.get_resource_filesystem].
public class EditorFileSystem : Node {

    

    public override class var __godot_name: StringName { __godot_name_EditorFileSystem }

    static var _method_get_filesystem_842323275: GDExtensionMethodBindPtr! = nil
    static var _method_is_scanning_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_scanning_progress_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_scan_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_scan_sources_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_update_file_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_filesystem_path_3188521125: GDExtensionMethodBindPtr! = nil
    static var _method_get_file_type_3135753539: GDExtensionMethodBindPtr! = nil
    static var _method_reimport_files_4015028928: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_EditorFileSystem = StringName(from: "EditorFileSystem")

        let _method_get_filesystem_842323275_name = StringName(from: "get_filesystem")
        self._method_get_filesystem_842323275 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_filesystem_842323275_name._native_ptr(), 842323275)
        assert(EditorFileSystem._method_get_filesystem_842323275 != nil)
        let _method_is_scanning_36873697_name = StringName(from: "is_scanning")
        self._method_is_scanning_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_scanning_36873697_name._native_ptr(), 36873697)
        assert(EditorFileSystem._method_is_scanning_36873697 != nil)
        let _method_get_scanning_progress_1740695150_name = StringName(from: "get_scanning_progress")
        self._method_get_scanning_progress_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_scanning_progress_1740695150_name._native_ptr(), 1740695150)
        assert(EditorFileSystem._method_get_scanning_progress_1740695150 != nil)
        let _method_scan_3218959716_name = StringName(from: "scan")
        self._method_scan_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_scan_3218959716_name._native_ptr(), 3218959716)
        assert(EditorFileSystem._method_scan_3218959716 != nil)
        let _method_scan_sources_3218959716_name = StringName(from: "scan_sources")
        self._method_scan_sources_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_scan_sources_3218959716_name._native_ptr(), 3218959716)
        assert(EditorFileSystem._method_scan_sources_3218959716 != nil)
        let _method_update_file_83702148_name = StringName(from: "update_file")
        self._method_update_file_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_update_file_83702148_name._native_ptr(), 83702148)
        assert(EditorFileSystem._method_update_file_83702148 != nil)
        let _method_get_filesystem_path_3188521125_name = StringName(from: "get_filesystem_path")
        self._method_get_filesystem_path_3188521125 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_filesystem_path_3188521125_name._native_ptr(), 3188521125)
        assert(EditorFileSystem._method_get_filesystem_path_3188521125 != nil)
        let _method_get_file_type_3135753539_name = StringName(from: "get_file_type")
        self._method_get_file_type_3135753539 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_file_type_3135753539_name._native_ptr(), 3135753539)
        assert(EditorFileSystem._method_get_file_type_3135753539 != nil)
        let _method_reimport_files_4015028928_name = StringName(from: "reimport_files")
        self._method_reimport_files_4015028928 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reimport_files_4015028928_name._native_ptr(), 4015028928)
        assert(EditorFileSystem._method_reimport_files_4015028928 != nil)
    }

    public func get_filesystem() -> EditorFileSystemDirectory {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_filesystem_842323275,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorFileSystemDirectory(from: __resPtr.pointee)
    }
    public func is_scanning() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_scanning_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_scanning_progress() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_scanning_progress_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func scan()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_scan_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func scan_sources()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_scan_sources_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func update_file(path: String)  {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_update_file_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_filesystem_path(path: String) -> EditorFileSystemDirectory {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_filesystem_path_3188521125,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorFileSystemDirectory(from: __resPtr.pointee)
        }
    }
    public func get_file_type(path: String) -> String {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_file_type_3135753539,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func reimport_files(files: PackedStringArray)  {
        let files_native = files._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(files_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reimport_files_4015028928,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}