import godot_native

fileprivate var __godot_name_DirAccess: StringName! = nil

/// Type used to handle the filesystem.
/// 
/// Directory type. It is used to manage directories and their content (not restricted to the project folder).
///  
/// [DirAccess] can't be instantiated directly. Instead it is created with a static method that takes a path for which it will be opened.
///  
/// Most of the methods have a static alternative that can be used without creating a [DirAccess]. Static methods only support absolute paths (including [code]res://[/code] and [code]user://[/code]).
///  
/// [codeblock]
///  
/// # Standard
///  
/// var dir = DirAccess.open("user://levels")
///  
/// dir.make_dir("world1")
///  
/// # Static
///  
/// DirAccess.make_dir_absolute("user://levels/world1")
///  
/// [/codeblock]
///  
/// [b]Note:[/b] Many resources types are imported (e.g. textures or sound files), and their source asset will not be included in the exported game, as only the imported version is used. Use [ResourceLoader] to access imported resources.
///  
/// Here is an example on how to iterate through the files of a directory:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// func dir_contents(path):
///  
///     var dir = DirAccess.open(path)
///  
///     if dir:
///  
///         dir.list_dir_begin()
///  
///         var file_name = dir.get_next()
///  
///         while file_name != "":
///  
///             if dir.current_is_dir():
///  
///                 print("Found directory: " + file_name)
///  
///             else:
///  
///                 print("Found file: " + file_name)
///  
///             file_name = dir.get_next()
///  
///     else:
///  
///         print("An error occurred when trying to access the path.")
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// public void DirContents(string path)
///  
/// {
///  
///     using var dir = DirAccess.Open(path);
///  
///     if (dir != null)
///  
///     {
///  
///         dir.ListDirBegin();
///  
///         string fileName = dir.GetNext();
///  
///         while (fileName != "")
///  
///         {
///  
///             if (dir.CurrentIsDir())
///  
///             {
///  
///                 GD.Print($"Found directory: {fileName}");
///  
///             }
///  
///             else
///  
///             {
///  
///                 GD.Print($"Found file: {fileName}");
///  
///             }
///  
///             fileName = dir.GetNext();
///  
///         }
///  
///     }
///  
///     else
///  
///     {
///  
///         GD.Print("An error occurred when trying to access the path.");
///  
///     }
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
public class DirAccess : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_DirAccess }

    static var _method_open_1923528528: GDExtensionMethodBindPtr! = nil
    static var _method_get_open_error_166280745: GDExtensionMethodBindPtr! = nil
    static var _method_list_dir_begin_2018049411: GDExtensionMethodBindPtr! = nil
    static var _method_get_next_2841200299: GDExtensionMethodBindPtr! = nil
    static var _method_current_is_dir_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_list_dir_end_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_files_2981934095: GDExtensionMethodBindPtr! = nil
    static var _method_get_files_at_3538744774: GDExtensionMethodBindPtr! = nil
    static var _method_get_directories_2981934095: GDExtensionMethodBindPtr! = nil
    static var _method_get_directories_at_3538744774: GDExtensionMethodBindPtr! = nil
    static var _method_get_drive_count_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_get_drive_name_990163283: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_drive_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_change_dir_166001499: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_dir_1287308131: GDExtensionMethodBindPtr! = nil
    static var _method_make_dir_166001499: GDExtensionMethodBindPtr! = nil
    static var _method_make_dir_absolute_166001499: GDExtensionMethodBindPtr! = nil
    static var _method_make_dir_recursive_166001499: GDExtensionMethodBindPtr! = nil
    static var _method_make_dir_recursive_absolute_166001499: GDExtensionMethodBindPtr! = nil
    static var _method_file_exists_2323990056: GDExtensionMethodBindPtr! = nil
    static var _method_dir_exists_2323990056: GDExtensionMethodBindPtr! = nil
    static var _method_dir_exists_absolute_2323990056: GDExtensionMethodBindPtr! = nil
    static var _method_get_space_left_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_copy_198434953: GDExtensionMethodBindPtr! = nil
    static var _method_copy_absolute_198434953: GDExtensionMethodBindPtr! = nil
    static var _method_rename_852856452: GDExtensionMethodBindPtr! = nil
    static var _method_rename_absolute_852856452: GDExtensionMethodBindPtr! = nil
    static var _method_remove_166001499: GDExtensionMethodBindPtr! = nil
    static var _method_remove_absolute_166001499: GDExtensionMethodBindPtr! = nil
    static var _method_set_include_navigational_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_include_navigational_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_include_hidden_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_include_hidden_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_DirAccess = StringName(from: "DirAccess")

        let _method_open_1923528528_name = StringName(from: "open")
        self._method_open_1923528528 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_open_1923528528_name._native_ptr(), 1923528528)
        assert(DirAccess._method_open_1923528528 != nil)
        let _method_get_open_error_166280745_name = StringName(from: "get_open_error")
        self._method_get_open_error_166280745 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_open_error_166280745_name._native_ptr(), 166280745)
        assert(DirAccess._method_get_open_error_166280745 != nil)
        let _method_list_dir_begin_2018049411_name = StringName(from: "list_dir_begin")
        self._method_list_dir_begin_2018049411 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_list_dir_begin_2018049411_name._native_ptr(), 2018049411)
        assert(DirAccess._method_list_dir_begin_2018049411 != nil)
        let _method_get_next_2841200299_name = StringName(from: "get_next")
        self._method_get_next_2841200299 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_next_2841200299_name._native_ptr(), 2841200299)
        assert(DirAccess._method_get_next_2841200299 != nil)
        let _method_current_is_dir_36873697_name = StringName(from: "current_is_dir")
        self._method_current_is_dir_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_current_is_dir_36873697_name._native_ptr(), 36873697)
        assert(DirAccess._method_current_is_dir_36873697 != nil)
        let _method_list_dir_end_3218959716_name = StringName(from: "list_dir_end")
        self._method_list_dir_end_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_list_dir_end_3218959716_name._native_ptr(), 3218959716)
        assert(DirAccess._method_list_dir_end_3218959716 != nil)
        let _method_get_files_2981934095_name = StringName(from: "get_files")
        self._method_get_files_2981934095 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_files_2981934095_name._native_ptr(), 2981934095)
        assert(DirAccess._method_get_files_2981934095 != nil)
        let _method_get_files_at_3538744774_name = StringName(from: "get_files_at")
        self._method_get_files_at_3538744774 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_files_at_3538744774_name._native_ptr(), 3538744774)
        assert(DirAccess._method_get_files_at_3538744774 != nil)
        let _method_get_directories_2981934095_name = StringName(from: "get_directories")
        self._method_get_directories_2981934095 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_directories_2981934095_name._native_ptr(), 2981934095)
        assert(DirAccess._method_get_directories_2981934095 != nil)
        let _method_get_directories_at_3538744774_name = StringName(from: "get_directories_at")
        self._method_get_directories_at_3538744774 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_directories_at_3538744774_name._native_ptr(), 3538744774)
        assert(DirAccess._method_get_directories_at_3538744774 != nil)
        let _method_get_drive_count_2455072627_name = StringName(from: "get_drive_count")
        self._method_get_drive_count_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_drive_count_2455072627_name._native_ptr(), 2455072627)
        assert(DirAccess._method_get_drive_count_2455072627 != nil)
        let _method_get_drive_name_990163283_name = StringName(from: "get_drive_name")
        self._method_get_drive_name_990163283 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_drive_name_990163283_name._native_ptr(), 990163283)
        assert(DirAccess._method_get_drive_name_990163283 != nil)
        let _method_get_current_drive_2455072627_name = StringName(from: "get_current_drive")
        self._method_get_current_drive_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_current_drive_2455072627_name._native_ptr(), 2455072627)
        assert(DirAccess._method_get_current_drive_2455072627 != nil)
        let _method_change_dir_166001499_name = StringName(from: "change_dir")
        self._method_change_dir_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_change_dir_166001499_name._native_ptr(), 166001499)
        assert(DirAccess._method_change_dir_166001499 != nil)
        let _method_get_current_dir_1287308131_name = StringName(from: "get_current_dir")
        self._method_get_current_dir_1287308131 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_current_dir_1287308131_name._native_ptr(), 1287308131)
        assert(DirAccess._method_get_current_dir_1287308131 != nil)
        let _method_make_dir_166001499_name = StringName(from: "make_dir")
        self._method_make_dir_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_make_dir_166001499_name._native_ptr(), 166001499)
        assert(DirAccess._method_make_dir_166001499 != nil)
        let _method_make_dir_absolute_166001499_name = StringName(from: "make_dir_absolute")
        self._method_make_dir_absolute_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_make_dir_absolute_166001499_name._native_ptr(), 166001499)
        assert(DirAccess._method_make_dir_absolute_166001499 != nil)
        let _method_make_dir_recursive_166001499_name = StringName(from: "make_dir_recursive")
        self._method_make_dir_recursive_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_make_dir_recursive_166001499_name._native_ptr(), 166001499)
        assert(DirAccess._method_make_dir_recursive_166001499 != nil)
        let _method_make_dir_recursive_absolute_166001499_name = StringName(from: "make_dir_recursive_absolute")
        self._method_make_dir_recursive_absolute_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_make_dir_recursive_absolute_166001499_name._native_ptr(), 166001499)
        assert(DirAccess._method_make_dir_recursive_absolute_166001499 != nil)
        let _method_file_exists_2323990056_name = StringName(from: "file_exists")
        self._method_file_exists_2323990056 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_file_exists_2323990056_name._native_ptr(), 2323990056)
        assert(DirAccess._method_file_exists_2323990056 != nil)
        let _method_dir_exists_2323990056_name = StringName(from: "dir_exists")
        self._method_dir_exists_2323990056 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_dir_exists_2323990056_name._native_ptr(), 2323990056)
        assert(DirAccess._method_dir_exists_2323990056 != nil)
        let _method_dir_exists_absolute_2323990056_name = StringName(from: "dir_exists_absolute")
        self._method_dir_exists_absolute_2323990056 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_dir_exists_absolute_2323990056_name._native_ptr(), 2323990056)
        assert(DirAccess._method_dir_exists_absolute_2323990056 != nil)
        let _method_get_space_left_2455072627_name = StringName(from: "get_space_left")
        self._method_get_space_left_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_space_left_2455072627_name._native_ptr(), 2455072627)
        assert(DirAccess._method_get_space_left_2455072627 != nil)
        let _method_copy_198434953_name = StringName(from: "copy")
        self._method_copy_198434953 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_copy_198434953_name._native_ptr(), 198434953)
        assert(DirAccess._method_copy_198434953 != nil)
        let _method_copy_absolute_198434953_name = StringName(from: "copy_absolute")
        self._method_copy_absolute_198434953 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_copy_absolute_198434953_name._native_ptr(), 198434953)
        assert(DirAccess._method_copy_absolute_198434953 != nil)
        let _method_rename_852856452_name = StringName(from: "rename")
        self._method_rename_852856452 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rename_852856452_name._native_ptr(), 852856452)
        assert(DirAccess._method_rename_852856452 != nil)
        let _method_rename_absolute_852856452_name = StringName(from: "rename_absolute")
        self._method_rename_absolute_852856452 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rename_absolute_852856452_name._native_ptr(), 852856452)
        assert(DirAccess._method_rename_absolute_852856452 != nil)
        let _method_remove_166001499_name = StringName(from: "remove")
        self._method_remove_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_166001499_name._native_ptr(), 166001499)
        assert(DirAccess._method_remove_166001499 != nil)
        let _method_remove_absolute_166001499_name = StringName(from: "remove_absolute")
        self._method_remove_absolute_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_absolute_166001499_name._native_ptr(), 166001499)
        assert(DirAccess._method_remove_absolute_166001499 != nil)
        let _method_set_include_navigational_2586408642_name = StringName(from: "set_include_navigational")
        self._method_set_include_navigational_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_include_navigational_2586408642_name._native_ptr(), 2586408642)
        assert(DirAccess._method_set_include_navigational_2586408642 != nil)
        let _method_get_include_navigational_36873697_name = StringName(from: "get_include_navigational")
        self._method_get_include_navigational_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_include_navigational_36873697_name._native_ptr(), 36873697)
        assert(DirAccess._method_get_include_navigational_36873697 != nil)
        let _method_set_include_hidden_2586408642_name = StringName(from: "set_include_hidden")
        self._method_set_include_hidden_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_include_hidden_2586408642_name._native_ptr(), 2586408642)
        assert(DirAccess._method_set_include_hidden_2586408642 != nil)
        let _method_get_include_hidden_36873697_name = StringName(from: "get_include_hidden")
        self._method_get_include_hidden_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_include_hidden_36873697_name._native_ptr(), 36873697)
        assert(DirAccess._method_get_include_hidden_36873697 != nil)
    }

    public func open(path: String) -> DirAccess {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_open_1923528528,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return DirAccess(from: __resPtr.pointee)
        }
    }
    public func get_open_error() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_open_error_166280745,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
    }
    public func list_dir_begin() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_list_dir_begin_2018049411,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
    }
    public func get_next() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_next_2841200299,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func current_is_dir() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_current_is_dir_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func list_dir_end()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_list_dir_end_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func get_files_at(path: String) -> PackedStringArray {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_files_at_3538744774,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
        }
    }
    public func get_directories() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_directories_2981934095,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func get_directories_at(path: String) -> PackedStringArray {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_directories_at_3538744774,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
        }
    }
    public func get_drive_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_drive_count_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_drive_name(idx: Int64) -> String {
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
                    Self._method_get_drive_name_990163283,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func get_current_drive() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_drive_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func change_dir(to_dir: String) -> Error {
        withUnsafePointer(to: to_dir) { to_dir_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_dir_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_change_dir_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func get_current_dir(include_drive: UInt8) -> String {
        withUnsafePointer(to: include_drive) { include_drive_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(include_drive_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_dir_1287308131,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func make_dir(path: String) -> Error {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_make_dir_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func make_dir_absolute(path: String) -> Error {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_make_dir_absolute_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func make_dir_recursive(path: String) -> Error {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_make_dir_recursive_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func make_dir_recursive_absolute(path: String) -> Error {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_make_dir_recursive_absolute_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func file_exists(path: String) -> UInt8 {
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
                    Self._method_file_exists_2323990056,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func dir_exists(path: String) -> UInt8 {
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
                    Self._method_dir_exists_2323990056,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func dir_exists_absolute(path: String) -> UInt8 {
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
                    Self._method_dir_exists_absolute_2323990056,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func get_space_left() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_space_left_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func copy(from: String, to: String, chmod_flags: Int64) -> Error {
        withUnsafePointer(to: chmod_flags) { chmod_flags_native in
        withUnsafePointer(to: to) { to_native in
        withUnsafePointer(to: from) { from_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native), .init(chmod_flags_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_copy_198434953,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
        }
    }
    public func copy_absolute(from: String, to: String, chmod_flags: Int64) -> Error {
        withUnsafePointer(to: chmod_flags) { chmod_flags_native in
        withUnsafePointer(to: to) { to_native in
        withUnsafePointer(to: from) { from_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native), .init(chmod_flags_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_copy_absolute_198434953,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
        }
    }
    public func rename(from: String, to: String) -> Error {
        withUnsafePointer(to: to) { to_native in
        withUnsafePointer(to: from) { from_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rename_852856452,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
    }
    public func rename_absolute(from: String, to: String) -> Error {
        withUnsafePointer(to: to) { to_native in
        withUnsafePointer(to: from) { from_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rename_absolute_852856452,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
    }
    public func remove(path: String) -> Error {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func remove_absolute(path: String) -> Error {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_absolute_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func set_include_navigational(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_include_navigational_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_include_navigational() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_include_navigational_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_include_hidden(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_include_hidden_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_include_hidden() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_include_hidden_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}