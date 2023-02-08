import godot_native

fileprivate var __godot_name_EditorFileDialog: StringName! = nil

/// A modified version of [FileDialog] used by the editor.
/// 
/// [EditorFileDialog] is an enhanced version of [FileDialog] available only to editor plugins. Additional features include list of favorited/recent files and ability to see files as thumbnails grid instead of list.
open class EditorFileDialog : ConfirmationDialog {

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
    public enum DisplayMode : Int32 {
        case DISPLAY_THUMBNAILS = 0
        case DISPLAY_LIST = 1
    }

    public override class var __godot_name: StringName { __godot_name_EditorFileDialog }

    static var _method_clear_filters_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_add_filter_233059325: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_dir_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_file_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_path_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_current_dir_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_set_current_file_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_set_current_path_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_set_file_mode_274150415: GDExtensionMethodBindPtr! = nil
    static var _method_get_file_mode_2681044145: GDExtensionMethodBindPtr! = nil
    static var _method_get_vbox_915758477: GDExtensionMethodBindPtr! = nil
    static var _method_set_access_3882893764: GDExtensionMethodBindPtr! = nil
    static var _method_get_access_778734016: GDExtensionMethodBindPtr! = nil
    static var _method_set_show_hidden_files_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_showing_hidden_files_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_display_mode_3049004050: GDExtensionMethodBindPtr! = nil
    static var _method_get_display_mode_3517174669: GDExtensionMethodBindPtr! = nil
    static var _method_set_disable_overwrite_warning_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_overwrite_warning_disabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_invalidate_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        __godot_name_EditorFileDialog = StringName(from: "EditorFileDialog")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_clear_filters_3218959716_name = StringName(from: "clear_filters")
        self._method_clear_filters_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileDialog._native_ptr(), _method_clear_filters_3218959716_name._native_ptr(), 3218959716)
        assert(EditorFileDialog._method_clear_filters_3218959716 != nil)
        let _method_add_filter_233059325_name = StringName(from: "add_filter")
        self._method_add_filter_233059325 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileDialog._native_ptr(), _method_add_filter_233059325_name._native_ptr(), 233059325)
        assert(EditorFileDialog._method_add_filter_233059325 != nil)
        let _method_get_current_dir_201670096_name = StringName(from: "get_current_dir")
        self._method_get_current_dir_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileDialog._native_ptr(), _method_get_current_dir_201670096_name._native_ptr(), 201670096)
        assert(EditorFileDialog._method_get_current_dir_201670096 != nil)
        let _method_get_current_file_201670096_name = StringName(from: "get_current_file")
        self._method_get_current_file_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileDialog._native_ptr(), _method_get_current_file_201670096_name._native_ptr(), 201670096)
        assert(EditorFileDialog._method_get_current_file_201670096 != nil)
        let _method_get_current_path_201670096_name = StringName(from: "get_current_path")
        self._method_get_current_path_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileDialog._native_ptr(), _method_get_current_path_201670096_name._native_ptr(), 201670096)
        assert(EditorFileDialog._method_get_current_path_201670096 != nil)
        let _method_set_current_dir_83702148_name = StringName(from: "set_current_dir")
        self._method_set_current_dir_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileDialog._native_ptr(), _method_set_current_dir_83702148_name._native_ptr(), 83702148)
        assert(EditorFileDialog._method_set_current_dir_83702148 != nil)
        let _method_set_current_file_83702148_name = StringName(from: "set_current_file")
        self._method_set_current_file_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileDialog._native_ptr(), _method_set_current_file_83702148_name._native_ptr(), 83702148)
        assert(EditorFileDialog._method_set_current_file_83702148 != nil)
        let _method_set_current_path_83702148_name = StringName(from: "set_current_path")
        self._method_set_current_path_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileDialog._native_ptr(), _method_set_current_path_83702148_name._native_ptr(), 83702148)
        assert(EditorFileDialog._method_set_current_path_83702148 != nil)
        let _method_set_file_mode_274150415_name = StringName(from: "set_file_mode")
        self._method_set_file_mode_274150415 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileDialog._native_ptr(), _method_set_file_mode_274150415_name._native_ptr(), 274150415)
        assert(EditorFileDialog._method_set_file_mode_274150415 != nil)
        let _method_get_file_mode_2681044145_name = StringName(from: "get_file_mode")
        self._method_get_file_mode_2681044145 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileDialog._native_ptr(), _method_get_file_mode_2681044145_name._native_ptr(), 2681044145)
        assert(EditorFileDialog._method_get_file_mode_2681044145 != nil)
        let _method_get_vbox_915758477_name = StringName(from: "get_vbox")
        self._method_get_vbox_915758477 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileDialog._native_ptr(), _method_get_vbox_915758477_name._native_ptr(), 915758477)
        assert(EditorFileDialog._method_get_vbox_915758477 != nil)
        let _method_set_access_3882893764_name = StringName(from: "set_access")
        self._method_set_access_3882893764 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileDialog._native_ptr(), _method_set_access_3882893764_name._native_ptr(), 3882893764)
        assert(EditorFileDialog._method_set_access_3882893764 != nil)
        let _method_get_access_778734016_name = StringName(from: "get_access")
        self._method_get_access_778734016 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileDialog._native_ptr(), _method_get_access_778734016_name._native_ptr(), 778734016)
        assert(EditorFileDialog._method_get_access_778734016 != nil)
        let _method_set_show_hidden_files_2586408642_name = StringName(from: "set_show_hidden_files")
        self._method_set_show_hidden_files_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileDialog._native_ptr(), _method_set_show_hidden_files_2586408642_name._native_ptr(), 2586408642)
        assert(EditorFileDialog._method_set_show_hidden_files_2586408642 != nil)
        let _method_is_showing_hidden_files_36873697_name = StringName(from: "is_showing_hidden_files")
        self._method_is_showing_hidden_files_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileDialog._native_ptr(), _method_is_showing_hidden_files_36873697_name._native_ptr(), 36873697)
        assert(EditorFileDialog._method_is_showing_hidden_files_36873697 != nil)
        let _method_set_display_mode_3049004050_name = StringName(from: "set_display_mode")
        self._method_set_display_mode_3049004050 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileDialog._native_ptr(), _method_set_display_mode_3049004050_name._native_ptr(), 3049004050)
        assert(EditorFileDialog._method_set_display_mode_3049004050 != nil)
        let _method_get_display_mode_3517174669_name = StringName(from: "get_display_mode")
        self._method_get_display_mode_3517174669 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileDialog._native_ptr(), _method_get_display_mode_3517174669_name._native_ptr(), 3517174669)
        assert(EditorFileDialog._method_get_display_mode_3517174669 != nil)
        let _method_set_disable_overwrite_warning_2586408642_name = StringName(from: "set_disable_overwrite_warning")
        self._method_set_disable_overwrite_warning_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileDialog._native_ptr(), _method_set_disable_overwrite_warning_2586408642_name._native_ptr(), 2586408642)
        assert(EditorFileDialog._method_set_disable_overwrite_warning_2586408642 != nil)
        let _method_is_overwrite_warning_disabled_36873697_name = StringName(from: "is_overwrite_warning_disabled")
        self._method_is_overwrite_warning_disabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileDialog._native_ptr(), _method_is_overwrite_warning_disabled_36873697_name._native_ptr(), 36873697)
        assert(EditorFileDialog._method_is_overwrite_warning_disabled_36873697 != nil)
        let _method_invalidate_3218959716_name = StringName(from: "invalidate")
        self._method_invalidate_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFileDialog._native_ptr(), _method_invalidate_3218959716_name._native_ptr(), 3218959716)
        assert(EditorFileDialog._method_invalidate_3218959716 != nil)
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
    public func add_filter(filter: godot.String, description: godot.String)  {
        let description_native = description._native_ptr()
        let filter_native = filter._native_ptr()
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
    public func get_current_dir() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_dir_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_current_file() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_file_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_current_path() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_path_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_current_dir(dir: godot.String)  {
        let dir_native = dir._native_ptr()
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
    public func set_current_file(file: godot.String)  {
        let file_native = file._native_ptr()
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
    public func set_current_path(path: godot.String)  {
        let path_native = path._native_ptr()
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
    public func set_file_mode(mode: EditorFileDialog.FileMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_file_mode_274150415,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_file_mode() -> EditorFileDialog.FileMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_file_mode_2681044145,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorFileDialog.FileMode(godot: __resPtr.pointee)
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
            return VBoxContainer(godot: __resPtr.pointee)
    }
    public func set_access(access: EditorFileDialog.Access)  {
        withUnsafePointer(to: access.rawValue) { access_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(access_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_access_3882893764,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_access() -> EditorFileDialog.Access {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_access_778734016,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorFileDialog.Access(godot: __resPtr.pointee)
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
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_display_mode(mode: EditorFileDialog.DisplayMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_display_mode_3049004050,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_display_mode() -> EditorFileDialog.DisplayMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_display_mode_3517174669,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorFileDialog.DisplayMode(godot: __resPtr.pointee)
    }
    public func set_disable_overwrite_warning(disable: UInt8)  {
        withUnsafePointer(to: disable) { disable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(disable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_disable_overwrite_warning_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_overwrite_warning_disabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_overwrite_warning_disabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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