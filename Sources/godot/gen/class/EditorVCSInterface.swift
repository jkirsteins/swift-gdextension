import godot_native

fileprivate var __godot_name_EditorVCSInterface: StringName! = nil

/// Version Control System (VCS) interface, which reads and writes to the local VCS in use.
/// 
/// Defines the API that the editor uses to extract information from the underlying VCS. The implementation of this API is included in VCS plugins, which are GDExtension plugins that inherit [EditorVCSInterface] and are attached (on demand) to the singleton instance of [EditorVCSInterface]. Instead of performing the task themselves, all the virtual functions listed below are calling the internally overridden functions in the VCS plugins to provide a plug-n-play experience. A custom VCS plugin is supposed to inherit from [EditorVCSInterface] and override each of these virtual functions.
open class EditorVCSInterface : Object {

    public enum ChangeType : Int32 {
        case CHANGE_TYPE_NEW = 0
        case CHANGE_TYPE_MODIFIED = 1
        case CHANGE_TYPE_RENAMED = 2
        case CHANGE_TYPE_DELETED = 3
        case CHANGE_TYPE_TYPECHANGE = 4
        case CHANGE_TYPE_UNMERGED = 5
    }
    public enum TreeArea : Int32 {
        case TREE_AREA_COMMIT = 0
        case TREE_AREA_STAGED = 1
        case TREE_AREA_UNSTAGED = 2
    }

    public override class var __godot_name: StringName { __godot_name_EditorVCSInterface }

    static var _method__initialize_0: StringName! = nil
    static var _method__set_credentials_0: StringName! = nil
    static var _method__get_modified_files_data_0: StringName! = nil
    static var _method__stage_file_0: StringName! = nil
    static var _method__unstage_file_0: StringName! = nil
    static var _method__discard_file_0: StringName! = nil
    static var _method__commit_0: StringName! = nil
    static var _method__get_diff_0: StringName! = nil
    static var _method__shut_down_0: StringName! = nil
    static var _method__get_vcs_name_0: StringName! = nil
    static var _method__get_previous_commits_0: StringName! = nil
    static var _method__get_branch_list_0: StringName! = nil
    static var _method__get_remotes_0: StringName! = nil
    static var _method__create_branch_0: StringName! = nil
    static var _method__remove_branch_0: StringName! = nil
    static var _method__create_remote_0: StringName! = nil
    static var _method__remove_remote_0: StringName! = nil
    static var _method__get_current_branch_name_0: StringName! = nil
    static var _method__checkout_branch_0: StringName! = nil
    static var _method__pull_0: StringName! = nil
    static var _method__push_0: StringName! = nil
    static var _method__fetch_0: StringName! = nil
    static var _method__get_line_diff_0: StringName! = nil
    static var _method_create_diff_line_2901184053: StringName! = nil
    static var _method_create_diff_hunk_3784842090: StringName! = nil
    static var _method_create_diff_file_2723227684: StringName! = nil
    static var _method_create_commit_1075983584: StringName! = nil
    static var _method_create_status_file_1083471673: StringName! = nil
    static var _method_add_diff_hunks_into_diff_file_4015243225: StringName! = nil
    static var _method_add_line_diffs_into_diff_hunk_4015243225: StringName! = nil
    static var _method_popup_error_83702148: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_EditorVCSInterface == nil)
        __godot_name_EditorVCSInterface = StringName(from: "EditorVCSInterface")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_create_diff_line_2901184053 = StringName(from: "create_diff_line")
        assert(self._method_create_diff_line_2901184053 != nil)
        self._method_create_diff_hunk_3784842090 = StringName(from: "create_diff_hunk")
        assert(self._method_create_diff_hunk_3784842090 != nil)
        self._method_create_diff_file_2723227684 = StringName(from: "create_diff_file")
        assert(self._method_create_diff_file_2723227684 != nil)
        self._method_create_commit_1075983584 = StringName(from: "create_commit")
        assert(self._method_create_commit_1075983584 != nil)
        self._method_create_status_file_1083471673 = StringName(from: "create_status_file")
        assert(self._method_create_status_file_1083471673 != nil)
        self._method_add_diff_hunks_into_diff_file_4015243225 = StringName(from: "add_diff_hunks_into_diff_file")
        assert(self._method_add_diff_hunks_into_diff_file_4015243225 != nil)
        self._method_add_line_diffs_into_diff_hunk_4015243225 = StringName(from: "add_line_diffs_into_diff_hunk")
        assert(self._method_add_line_diffs_into_diff_hunk_4015243225 != nil)
        self._method_popup_error_83702148 = StringName(from: "popup_error")
        assert(self._method_popup_error_83702148 != nil)
    }

    public func _initialize(project_path: godot.String) -> UInt8 {
        let project_path_native = project_path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(project_path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _set_credentials(username: godot.String, password: godot.String, ssh_public_key_path: godot.String, ssh_private_key_path: godot.String, ssh_passphrase: godot.String)  {
        let ssh_passphrase_native = ssh_passphrase._native_ptr()
        let ssh_private_key_path_native = ssh_private_key_path._native_ptr()
        let ssh_public_key_path_native = ssh_public_key_path._native_ptr()
        let password_native = password._native_ptr()
        let username_native = username._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(username_native), .init(password_native), .init(ssh_public_key_path_native), .init(ssh_private_key_path_native), .init(ssh_passphrase_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _get_modified_files_data() -> [Dictionary] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return [Dictionary](godot: __resPtr.pointee)
    }
    public func _stage_file(file_path: godot.String)  {
        let file_path_native = file_path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(file_path_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _unstage_file(file_path: godot.String)  {
        let file_path_native = file_path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(file_path_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _discard_file(file_path: godot.String)  {
        let file_path_native = file_path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(file_path_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _commit(msg: godot.String)  {
        let msg_native = msg._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(msg_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _get_diff(identifier: godot.String, area: Int64) -> [Dictionary] {
        withUnsafePointer(to: area) { area_native in
        let identifier_native = identifier._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(identifier_native), .init(area_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return [Dictionary](godot: __resPtr.pointee)
        }
    }
    public func _shut_down() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _get_vcs_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return godot.String(godot: __resPtr.pointee)
    }
    public func _get_previous_commits(max_commits: Int64) -> [Dictionary] {
        withUnsafePointer(to: max_commits) { max_commits_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_commits_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return [Dictionary](godot: __resPtr.pointee)
        }
    }
    public func _get_branch_list() -> [godot.String] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return [godot.String](godot: __resPtr.pointee)
    }
    public func _get_remotes() -> [godot.String] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return [godot.String](godot: __resPtr.pointee)
    }
    public func _create_branch(branch_name: godot.String)  {
        let branch_name_native = branch_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(branch_name_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _remove_branch(branch_name: godot.String)  {
        let branch_name_native = branch_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(branch_name_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _create_remote(remote_name: godot.String, remote_url: godot.String)  {
        let remote_url_native = remote_url._native_ptr()
        let remote_name_native = remote_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(remote_name_native), .init(remote_url_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _remove_remote(remote_name: godot.String)  {
        let remote_name_native = remote_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(remote_name_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _get_current_branch_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return godot.String(godot: __resPtr.pointee)
    }
    public func _checkout_branch(branch_name: godot.String) -> UInt8 {
        let branch_name_native = branch_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(branch_name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _pull(remote: godot.String)  {
        let remote_native = remote._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(remote_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _push(remote: godot.String, force: UInt8)  {
        withUnsafePointer(to: force) { force_native in
        let remote_native = remote._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(remote_native), .init(force_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
    }
    public func _fetch(remote: godot.String)  {
        let remote_native = remote._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(remote_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _get_line_diff(file_path: godot.String, text: godot.String) -> [Dictionary] {
        let text_native = text._native_ptr()
        let file_path_native = file_path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(file_path_native), .init(text_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return [Dictionary](godot: __resPtr.pointee)
    }
    public func create_diff_line(new_line_no: Int64, old_line_no: Int64, content: godot.String, status: godot.String) -> Dictionary {
        withUnsafePointer(to: old_line_no) { old_line_no_native in
        withUnsafePointer(to: new_line_no) { new_line_no_native in
        let status_native = status._native_ptr()
        let content_native = content._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(new_line_no_native), .init(old_line_no_native), .init(content_native), .init(status_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_diff_line_2901184053._native_ptr(),
                    2901184053)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
        }
        }
    }
    public func create_diff_hunk(old_start: Int64, new_start: Int64, old_lines: Int64, new_lines: Int64) -> Dictionary {
        withUnsafePointer(to: new_lines) { new_lines_native in
        withUnsafePointer(to: old_lines) { old_lines_native in
        withUnsafePointer(to: new_start) { new_start_native in
        withUnsafePointer(to: old_start) { old_start_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(old_start_native), .init(new_start_native), .init(old_lines_native), .init(new_lines_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_diff_hunk_3784842090._native_ptr(),
                    3784842090)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func create_diff_file(new_file: godot.String, old_file: godot.String) -> Dictionary {
        let old_file_native = old_file._native_ptr()
        let new_file_native = new_file._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(new_file_native), .init(old_file_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_diff_file_2723227684._native_ptr(),
                    2723227684)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func create_commit(msg: godot.String, author: godot.String, id: godot.String, unix_timestamp: Int64, offset_minutes: Int64) -> Dictionary {
        withUnsafePointer(to: offset_minutes) { offset_minutes_native in
        withUnsafePointer(to: unix_timestamp) { unix_timestamp_native in
        let id_native = id._native_ptr()
        let author_native = author._native_ptr()
        let msg_native = msg._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(msg_native), .init(author_native), .init(id_native), .init(unix_timestamp_native), .init(offset_minutes_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_commit_1075983584._native_ptr(),
                    1075983584)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
        }
        }
    }
    public func create_status_file(file_path: godot.String, change_type: EditorVCSInterface.ChangeType, area: EditorVCSInterface.TreeArea) -> Dictionary {
        withUnsafePointer(to: area.rawValue) { area_native in
        withUnsafePointer(to: change_type.rawValue) { change_type_native in
        let file_path_native = file_path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(file_path_native), .init(change_type_native), .init(area_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_status_file_1083471673._native_ptr(),
                    1083471673)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
        }
        }
    }
    public func add_diff_hunks_into_diff_file(diff_file: Dictionary, diff_hunks: [Dictionary]) -> Dictionary {
        let diff_hunks_native = diff_hunks._native_ptr()
        let diff_file_native = diff_file._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(diff_file_native), .init(diff_hunks_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_diff_hunks_into_diff_file_4015243225._native_ptr(),
                    4015243225)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func add_line_diffs_into_diff_hunk(diff_hunk: Dictionary, line_diffs: [Dictionary]) -> Dictionary {
        let line_diffs_native = line_diffs._native_ptr()
        let diff_hunk_native = diff_hunk._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(diff_hunk_native), .init(line_diffs_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_line_diffs_into_diff_hunk_4015243225._native_ptr(),
                    4015243225)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func popup_error(msg: godot.String)  {
        let msg_native = msg._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(msg_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_popup_error_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}