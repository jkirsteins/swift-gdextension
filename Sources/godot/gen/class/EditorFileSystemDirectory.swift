import godot_native

fileprivate var __godot_name_EditorFileSystemDirectory: StringName! = nil

/// A directory for the resource filesystem.
/// 
/// A more generalized, low-level variation of the directory concept.
open class EditorFileSystemDirectory : Object {

    

    public override class var __godot_name: StringName { __godot_name_EditorFileSystemDirectory }

    static var _method_get_subdir_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_subdir_2330964164: GDExtensionMethodBindPtr! = nil
    static var _method_get_file_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_file_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_get_file_path_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_get_file_type_659327637: GDExtensionMethodBindPtr! = nil
    static var _method_get_file_script_class_name_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_get_file_script_class_extends_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_get_file_import_is_valid_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_get_name_2841200299: GDExtensionMethodBindPtr! = nil
    static var _method_get_path_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_parent_842323275: GDExtensionMethodBindPtr! = nil
    static var _method_find_file_index_1321353865: GDExtensionMethodBindPtr! = nil
    static var _method_find_dir_index_1321353865: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        __godot_name_EditorFileSystemDirectory = StringName(from: "EditorFileSystemDirectory")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_subdir_count_3905245786_name = StringName(from: "get_subdir_count")
        self._method_get_subdir_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileSystemDirectory._native_ptr(), _method_get_subdir_count_3905245786_name._native_ptr(), 3905245786)
        assert(EditorFileSystemDirectory._method_get_subdir_count_3905245786 != nil)
        let _method_get_subdir_2330964164_name = StringName(from: "get_subdir")
        self._method_get_subdir_2330964164 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileSystemDirectory._native_ptr(), _method_get_subdir_2330964164_name._native_ptr(), 2330964164)
        assert(EditorFileSystemDirectory._method_get_subdir_2330964164 != nil)
        let _method_get_file_count_3905245786_name = StringName(from: "get_file_count")
        self._method_get_file_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileSystemDirectory._native_ptr(), _method_get_file_count_3905245786_name._native_ptr(), 3905245786)
        assert(EditorFileSystemDirectory._method_get_file_count_3905245786 != nil)
        let _method_get_file_844755477_name = StringName(from: "get_file")
        self._method_get_file_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileSystemDirectory._native_ptr(), _method_get_file_844755477_name._native_ptr(), 844755477)
        assert(EditorFileSystemDirectory._method_get_file_844755477 != nil)
        let _method_get_file_path_844755477_name = StringName(from: "get_file_path")
        self._method_get_file_path_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileSystemDirectory._native_ptr(), _method_get_file_path_844755477_name._native_ptr(), 844755477)
        assert(EditorFileSystemDirectory._method_get_file_path_844755477 != nil)
        let _method_get_file_type_659327637_name = StringName(from: "get_file_type")
        self._method_get_file_type_659327637 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileSystemDirectory._native_ptr(), _method_get_file_type_659327637_name._native_ptr(), 659327637)
        assert(EditorFileSystemDirectory._method_get_file_type_659327637 != nil)
        let _method_get_file_script_class_name_844755477_name = StringName(from: "get_file_script_class_name")
        self._method_get_file_script_class_name_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileSystemDirectory._native_ptr(), _method_get_file_script_class_name_844755477_name._native_ptr(), 844755477)
        assert(EditorFileSystemDirectory._method_get_file_script_class_name_844755477 != nil)
        let _method_get_file_script_class_extends_844755477_name = StringName(from: "get_file_script_class_extends")
        self._method_get_file_script_class_extends_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileSystemDirectory._native_ptr(), _method_get_file_script_class_extends_844755477_name._native_ptr(), 844755477)
        assert(EditorFileSystemDirectory._method_get_file_script_class_extends_844755477 != nil)
        let _method_get_file_import_is_valid_1116898809_name = StringName(from: "get_file_import_is_valid")
        self._method_get_file_import_is_valid_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileSystemDirectory._native_ptr(), _method_get_file_import_is_valid_1116898809_name._native_ptr(), 1116898809)
        assert(EditorFileSystemDirectory._method_get_file_import_is_valid_1116898809 != nil)
        let _method_get_name_2841200299_name = StringName(from: "get_name")
        self._method_get_name_2841200299 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileSystemDirectory._native_ptr(), _method_get_name_2841200299_name._native_ptr(), 2841200299)
        assert(EditorFileSystemDirectory._method_get_name_2841200299 != nil)
        let _method_get_path_201670096_name = StringName(from: "get_path")
        self._method_get_path_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileSystemDirectory._native_ptr(), _method_get_path_201670096_name._native_ptr(), 201670096)
        assert(EditorFileSystemDirectory._method_get_path_201670096 != nil)
        let _method_get_parent_842323275_name = StringName(from: "get_parent")
        self._method_get_parent_842323275 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileSystemDirectory._native_ptr(), _method_get_parent_842323275_name._native_ptr(), 842323275)
        assert(EditorFileSystemDirectory._method_get_parent_842323275 != nil)
        let _method_find_file_index_1321353865_name = StringName(from: "find_file_index")
        self._method_find_file_index_1321353865 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileSystemDirectory._native_ptr(), _method_find_file_index_1321353865_name._native_ptr(), 1321353865)
        assert(EditorFileSystemDirectory._method_find_file_index_1321353865 != nil)
        let _method_find_dir_index_1321353865_name = StringName(from: "find_dir_index")
        self._method_find_dir_index_1321353865 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileSystemDirectory._native_ptr(), _method_find_dir_index_1321353865_name._native_ptr(), 1321353865)
        assert(EditorFileSystemDirectory._method_find_dir_index_1321353865 != nil)
    }

    public func get_subdir_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_subdir_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_subdir(idx: Int64) -> EditorFileSystemDirectory {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_subdir_2330964164,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorFileSystemDirectory(godot: __resPtr.pointee)
        }
    }
    public func get_file_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_file_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_file(idx: Int64) -> godot.String {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_file_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func get_file_path(idx: Int64) -> godot.String {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_file_path_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func get_file_type(idx: Int64) -> StringName {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_file_type_659327637,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
        }
    }
    public func get_file_script_class_name(idx: Int64) -> godot.String {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_file_script_class_name_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func get_file_script_class_extends(idx: Int64) -> godot.String {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_file_script_class_extends_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func get_file_import_is_valid(idx: Int64) -> UInt8 {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_file_import_is_valid_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func get_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_name_2841200299,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_path() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_path_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_parent() -> EditorFileSystemDirectory {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_parent_842323275,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorFileSystemDirectory(godot: __resPtr.pointee)
    }
    public func find_file_index(name: godot.String) -> Int64 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_find_file_index_1321353865,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func find_dir_index(name: godot.String) -> Int64 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_find_dir_index_1321353865,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}