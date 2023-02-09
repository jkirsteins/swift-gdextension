import godot_native

fileprivate var __godot_name_EditorFileSystem: StringName! = nil

/// Resource filesystem, as the editor sees it.
/// 
/// This object holds information of all resources in the filesystem, their types, etc.
///  
/// [b]Note:[/b] This class shouldn't be instantiated directly. Instead, access the singleton using [method EditorInterface.get_resource_filesystem].
open class EditorFileSystem : Node {

    

    public override class var __godot_name: StringName { __godot_name_EditorFileSystem }

    static var _method_get_filesystem_842323275: StringName! = nil
    static var _method_is_scanning_36873697: StringName! = nil
    static var _method_get_scanning_progress_1740695150: StringName! = nil
    static var _method_scan_3218959716: StringName! = nil
    static var _method_scan_sources_3218959716: StringName! = nil
    static var _method_update_file_83702148: StringName! = nil
    static var _method_get_filesystem_path_3188521125: StringName! = nil
    static var _method_get_file_type_3135753539: StringName! = nil
    static var _method_reimport_files_4015028928: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_EditorFileSystem == nil)
        __godot_name_EditorFileSystem = StringName(from: "EditorFileSystem")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_filesystem_842323275 = StringName(from: "get_filesystem")
        assert(self._method_get_filesystem_842323275 != nil)
        self._method_is_scanning_36873697 = StringName(from: "is_scanning")
        assert(self._method_is_scanning_36873697 != nil)
        self._method_get_scanning_progress_1740695150 = StringName(from: "get_scanning_progress")
        assert(self._method_get_scanning_progress_1740695150 != nil)
        self._method_scan_3218959716 = StringName(from: "scan")
        assert(self._method_scan_3218959716 != nil)
        self._method_scan_sources_3218959716 = StringName(from: "scan_sources")
        assert(self._method_scan_sources_3218959716 != nil)
        self._method_update_file_83702148 = StringName(from: "update_file")
        assert(self._method_update_file_83702148 != nil)
        self._method_get_filesystem_path_3188521125 = StringName(from: "get_filesystem_path")
        assert(self._method_get_filesystem_path_3188521125 != nil)
        self._method_get_file_type_3135753539 = StringName(from: "get_file_type")
        assert(self._method_get_file_type_3135753539 != nil)
        self._method_reimport_files_4015028928 = StringName(from: "reimport_files")
        assert(self._method_reimport_files_4015028928 != nil)
    }

    public func get_filesystem() -> EditorFileSystemDirectory {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_filesystem_842323275._native_ptr(),
                    842323275)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorFileSystemDirectory(godot: __resPtr.pointee)
    }
    public func is_scanning() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_scanning_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_scanning_progress() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_scanning_progress_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func scan()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_scan_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_scan_sources_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func update_file(path: godot.String)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_update_file_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_filesystem_path(path: godot.String) -> EditorFileSystemDirectory {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_filesystem_path_3188521125._native_ptr(),
                    3188521125)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorFileSystemDirectory(godot: __resPtr.pointee)
    }
    public func get_file_type(path: godot.String) -> godot.String {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_file_type_3135753539._native_ptr(),
                    3135753539)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func reimport_files(files: PackedStringArray)  {
        let files_native = files._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(files_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_reimport_files_4015028928._native_ptr(),
                    4015028928)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}