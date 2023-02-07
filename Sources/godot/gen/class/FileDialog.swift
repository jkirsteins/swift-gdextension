import godot_native

fileprivate var __godot_name_FileDialog: StringName! = nil

/// Dialog for selecting files or directories in the filesystem.
/// 
/// FileDialog is a preset dialog used to choose files and directories in the filesystem. It supports filter masks. The FileDialog automatically sets its window title according to the [member file_mode]. If you want to use a custom title, disable this by setting [member mode_overrides_title] to [code]false[/code].
public class FileDialog : ConfirmationDialog {

    public enum FileMode : Int32 {
        case FILE_MODE_OPEN_FILE = 0
        case FILE_MODE_OPEN_FILES = 1
        case FILE_MODE_OPEN_DIR = 2
        case FILE_MODE_OPEN_ANY = 3
        case FILE_MODE_SAVE_FILE = 4
    }
    public enum Access : Int32 {
        case ACCESS_RESOURCES = 0
        case ACCESS_USERDATA = 1
        case ACCESS_FILESYSTEM = 2
    }

    public override class var __godot_name: StringName { __godot_name_FileDialog }

    static var _method_clear_filters_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_add_filter_233059325: GDExtensionMethodBindPtr! = nil
    static var _method_set_filters_4015028928: GDExtensionMethodBindPtr! = nil
    static var _method_get_filters_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_dir_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_file_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_path_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_current_dir_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_set_current_file_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_set_current_path_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_set_mode_overrides_title_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_mode_overriding_title_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_file_mode_3654936397: GDExtensionMethodBindPtr! = nil
    static var _method_get_file_mode_4074825319: GDExtensionMethodBindPtr! = nil
    static var _method_get_vbox_915758477: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_edit_4071694264: GDExtensionMethodBindPtr! = nil
    static var _method_set_access_4104413466: GDExtensionMethodBindPtr! = nil
    static var _method_get_access_3344081076: GDExtensionMethodBindPtr! = nil
    static var _method_set_root_subfolder_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_root_subfolder_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_show_hidden_files_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_showing_hidden_files_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_deselect_all_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_invalidate_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_FileDialog = StringName(from: "FileDialog")

        let _method_clear_filters_3218959716_name = StringName(from: "clear_filters")
        self._method_clear_filters_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_filters_3218959716_name._native_ptr(), 3218959716)
        assert(FileDialog._method_clear_filters_3218959716 != nil)
        let _method_add_filter_233059325_name = StringName(from: "add_filter")
        self._method_add_filter_233059325 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_filter_233059325_name._native_ptr(), 233059325)
        assert(FileDialog._method_add_filter_233059325 != nil)
        let _method_set_filters_4015028928_name = StringName(from: "set_filters")
        self._method_set_filters_4015028928 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_filters_4015028928_name._native_ptr(), 4015028928)
        assert(FileDialog._method_set_filters_4015028928 != nil)
        let _method_get_filters_1139954409_name = StringName(from: "get_filters")
        self._method_get_filters_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_filters_1139954409_name._native_ptr(), 1139954409)
        assert(FileDialog._method_get_filters_1139954409 != nil)
        let _method_get_current_dir_201670096_name = StringName(from: "get_current_dir")
        self._method_get_current_dir_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_current_dir_201670096_name._native_ptr(), 201670096)
        assert(FileDialog._method_get_current_dir_201670096 != nil)
        let _method_get_current_file_201670096_name = StringName(from: "get_current_file")
        self._method_get_current_file_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_current_file_201670096_name._native_ptr(), 201670096)
        assert(FileDialog._method_get_current_file_201670096 != nil)
        let _method_get_current_path_201670096_name = StringName(from: "get_current_path")
        self._method_get_current_path_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_current_path_201670096_name._native_ptr(), 201670096)
        assert(FileDialog._method_get_current_path_201670096 != nil)
        let _method_set_current_dir_83702148_name = StringName(from: "set_current_dir")
        self._method_set_current_dir_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_current_dir_83702148_name._native_ptr(), 83702148)
        assert(FileDialog._method_set_current_dir_83702148 != nil)
        let _method_set_current_file_83702148_name = StringName(from: "set_current_file")
        self._method_set_current_file_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_current_file_83702148_name._native_ptr(), 83702148)
        assert(FileDialog._method_set_current_file_83702148 != nil)
        let _method_set_current_path_83702148_name = StringName(from: "set_current_path")
        self._method_set_current_path_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_current_path_83702148_name._native_ptr(), 83702148)
        assert(FileDialog._method_set_current_path_83702148 != nil)
        let _method_set_mode_overrides_title_2586408642_name = StringName(from: "set_mode_overrides_title")
        self._method_set_mode_overrides_title_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_mode_overrides_title_2586408642_name._native_ptr(), 2586408642)
        assert(FileDialog._method_set_mode_overrides_title_2586408642 != nil)
        let _method_is_mode_overriding_title_36873697_name = StringName(from: "is_mode_overriding_title")
        self._method_is_mode_overriding_title_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_mode_overriding_title_36873697_name._native_ptr(), 36873697)
        assert(FileDialog._method_is_mode_overriding_title_36873697 != nil)
        let _method_set_file_mode_3654936397_name = StringName(from: "set_file_mode")
        self._method_set_file_mode_3654936397 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_file_mode_3654936397_name._native_ptr(), 3654936397)
        assert(FileDialog._method_set_file_mode_3654936397 != nil)
        let _method_get_file_mode_4074825319_name = StringName(from: "get_file_mode")
        self._method_get_file_mode_4074825319 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_file_mode_4074825319_name._native_ptr(), 4074825319)
        assert(FileDialog._method_get_file_mode_4074825319 != nil)
        let _method_get_vbox_915758477_name = StringName(from: "get_vbox")
        self._method_get_vbox_915758477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_vbox_915758477_name._native_ptr(), 915758477)
        assert(FileDialog._method_get_vbox_915758477 != nil)
        let _method_get_line_edit_4071694264_name = StringName(from: "get_line_edit")
        self._method_get_line_edit_4071694264 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_edit_4071694264_name._native_ptr(), 4071694264)
        assert(FileDialog._method_get_line_edit_4071694264 != nil)
        let _method_set_access_4104413466_name = StringName(from: "set_access")
        self._method_set_access_4104413466 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_access_4104413466_name._native_ptr(), 4104413466)
        assert(FileDialog._method_set_access_4104413466 != nil)
        let _method_get_access_3344081076_name = StringName(from: "get_access")
        self._method_get_access_3344081076 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_access_3344081076_name._native_ptr(), 3344081076)
        assert(FileDialog._method_get_access_3344081076 != nil)
        let _method_set_root_subfolder_83702148_name = StringName(from: "set_root_subfolder")
        self._method_set_root_subfolder_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_root_subfolder_83702148_name._native_ptr(), 83702148)
        assert(FileDialog._method_set_root_subfolder_83702148 != nil)
        let _method_get_root_subfolder_201670096_name = StringName(from: "get_root_subfolder")
        self._method_get_root_subfolder_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_root_subfolder_201670096_name._native_ptr(), 201670096)
        assert(FileDialog._method_get_root_subfolder_201670096 != nil)
        let _method_set_show_hidden_files_2586408642_name = StringName(from: "set_show_hidden_files")
        self._method_set_show_hidden_files_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_show_hidden_files_2586408642_name._native_ptr(), 2586408642)
        assert(FileDialog._method_set_show_hidden_files_2586408642 != nil)
        let _method_is_showing_hidden_files_36873697_name = StringName(from: "is_showing_hidden_files")
        self._method_is_showing_hidden_files_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_showing_hidden_files_36873697_name._native_ptr(), 36873697)
        assert(FileDialog._method_is_showing_hidden_files_36873697 != nil)
        let _method_deselect_all_3218959716_name = StringName(from: "deselect_all")
        self._method_deselect_all_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_deselect_all_3218959716_name._native_ptr(), 3218959716)
        assert(FileDialog._method_deselect_all_3218959716 != nil)
        let _method_invalidate_3218959716_name = StringName(from: "invalidate")
        self._method_invalidate_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_invalidate_3218959716_name._native_ptr(), 3218959716)
        assert(FileDialog._method_invalidate_3218959716 != nil)
    }

    public func clear_filters()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_filters_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_filter(filter: String, description: String)  {
        withUnsafePointer(to: description) { description_native in
        withUnsafePointer(to: filter) { filter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filter_native), .init(description_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_filter_233059325,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_filters(filters: PackedStringArray)  {
        let filters_native = filters._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filters_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_filters_4015028928,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_filters() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_filters_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func get_current_dir() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_dir_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func get_current_file() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_file_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func get_current_path() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_path_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_current_dir(dir: String)  {
        withUnsafePointer(to: dir) { dir_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(dir_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_current_dir_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_current_file(file: String)  {
        withUnsafePointer(to: file) { file_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(file_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_current_file_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_current_path(path: String)  {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_current_path_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_mode_overrides_title(override: UInt8)  {
        withUnsafePointer(to: override) { override_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(override_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mode_overrides_title_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_mode_overriding_title() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_mode_overriding_title_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_file_mode(mode: FileDialog.FileMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_file_mode_3654936397,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_file_mode() -> FileDialog.FileMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_file_mode_4074825319,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return FileDialog.FileMode(from: __resPtr.pointee)
    }
    public func get_vbox() -> VBoxContainer {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_vbox_915758477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VBoxContainer(from: __resPtr.pointee)
    }
    public func get_line_edit() -> LineEdit {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_edit_4071694264,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return LineEdit(from: __resPtr.pointee)
    }
    public func set_access(access: FileDialog.Access)  {
        withUnsafePointer(to: access.rawValue) { access_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(access_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_access_4104413466,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_access() -> FileDialog.Access {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_access_3344081076,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return FileDialog.Access(from: __resPtr.pointee)
    }
    public func set_root_subfolder(dir: String)  {
        withUnsafePointer(to: dir) { dir_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(dir_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_root_subfolder_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_root_subfolder() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_root_subfolder_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_show_hidden_files(show: UInt8)  {
        withUnsafePointer(to: show) { show_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(show_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_show_hidden_files_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_showing_hidden_files() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_showing_hidden_files_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func deselect_all()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_deselect_all_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func invalidate()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_invalidate_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}