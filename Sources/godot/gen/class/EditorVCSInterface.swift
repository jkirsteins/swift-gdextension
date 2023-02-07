import godot_native

fileprivate var __godot_name_EditorVCSInterface: StringName! = nil

/// Version Control System (VCS) interface, which reads and writes to the local VCS in use.
/// 
/// Defines the API that the editor uses to extract information from the underlying VCS. The implementation of this API is included in VCS plugins, which are GDExtension plugins that inherit [EditorVCSInterface] and are attached (on demand) to the singleton instance of [EditorVCSInterface]. Instead of performing the task themselves, all the virtual functions listed below are calling the internally overridden functions in the VCS plugins to provide a plug-n-play experience. A custom VCS plugin is supposed to inherit from [EditorVCSInterface] and override each of these virtual functions.
public class EditorVCSInterface : Object {

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

    static var _method__initialize_0: GDExtensionMethodBindPtr! = nil
    static var _method__set_credentials_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_modified_files_data_0: GDExtensionMethodBindPtr! = nil
    static var _method__stage_file_0: GDExtensionMethodBindPtr! = nil
    static var _method__unstage_file_0: GDExtensionMethodBindPtr! = nil
    static var _method__discard_file_0: GDExtensionMethodBindPtr! = nil
    static var _method__commit_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_diff_0: GDExtensionMethodBindPtr! = nil
    static var _method__shut_down_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_vcs_name_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_previous_commits_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_branch_list_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_remotes_0: GDExtensionMethodBindPtr! = nil
    static var _method__create_branch_0: GDExtensionMethodBindPtr! = nil
    static var _method__remove_branch_0: GDExtensionMethodBindPtr! = nil
    static var _method__create_remote_0: GDExtensionMethodBindPtr! = nil
    static var _method__remove_remote_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_current_branch_name_0: GDExtensionMethodBindPtr! = nil
    static var _method__checkout_branch_0: GDExtensionMethodBindPtr! = nil
    static var _method__pull_0: GDExtensionMethodBindPtr! = nil
    static var _method__push_0: GDExtensionMethodBindPtr! = nil
    static var _method__fetch_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_line_diff_0: GDExtensionMethodBindPtr! = nil
    static var _method_create_diff_line_2901184053: GDExtensionMethodBindPtr! = nil
    static var _method_create_diff_hunk_3784842090: GDExtensionMethodBindPtr! = nil
    static var _method_create_diff_file_2723227684: GDExtensionMethodBindPtr! = nil
    static var _method_create_commit_1075983584: GDExtensionMethodBindPtr! = nil
    static var _method_create_status_file_1083471673: GDExtensionMethodBindPtr! = nil
    static var _method_add_diff_hunks_into_diff_file_4015243225: GDExtensionMethodBindPtr! = nil
    static var _method_add_line_diffs_into_diff_hunk_4015243225: GDExtensionMethodBindPtr! = nil
    static var _method_popup_error_83702148: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_EditorVCSInterface = StringName(from: "EditorVCSInterface")

        let _method_create_diff_line_2901184053_name = StringName(from: "create_diff_line")
        self._method_create_diff_line_2901184053 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_diff_line_2901184053_name._native_ptr(), 2901184053)
        assert(EditorVCSInterface._method_create_diff_line_2901184053 != nil)
        let _method_create_diff_hunk_3784842090_name = StringName(from: "create_diff_hunk")
        self._method_create_diff_hunk_3784842090 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_diff_hunk_3784842090_name._native_ptr(), 3784842090)
        assert(EditorVCSInterface._method_create_diff_hunk_3784842090 != nil)
        let _method_create_diff_file_2723227684_name = StringName(from: "create_diff_file")
        self._method_create_diff_file_2723227684 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_diff_file_2723227684_name._native_ptr(), 2723227684)
        assert(EditorVCSInterface._method_create_diff_file_2723227684 != nil)
        let _method_create_commit_1075983584_name = StringName(from: "create_commit")
        self._method_create_commit_1075983584 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_commit_1075983584_name._native_ptr(), 1075983584)
        assert(EditorVCSInterface._method_create_commit_1075983584 != nil)
        let _method_create_status_file_1083471673_name = StringName(from: "create_status_file")
        self._method_create_status_file_1083471673 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_status_file_1083471673_name._native_ptr(), 1083471673)
        assert(EditorVCSInterface._method_create_status_file_1083471673 != nil)
        let _method_add_diff_hunks_into_diff_file_4015243225_name = StringName(from: "add_diff_hunks_into_diff_file")
        self._method_add_diff_hunks_into_diff_file_4015243225 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_diff_hunks_into_diff_file_4015243225_name._native_ptr(), 4015243225)
        assert(EditorVCSInterface._method_add_diff_hunks_into_diff_file_4015243225 != nil)
        let _method_add_line_diffs_into_diff_hunk_4015243225_name = StringName(from: "add_line_diffs_into_diff_hunk")
        self._method_add_line_diffs_into_diff_hunk_4015243225 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_line_diffs_into_diff_hunk_4015243225_name._native_ptr(), 4015243225)
        assert(EditorVCSInterface._method_add_line_diffs_into_diff_hunk_4015243225 != nil)
        let _method_popup_error_83702148_name = StringName(from: "popup_error")
        self._method_popup_error_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_popup_error_83702148_name._native_ptr(), 83702148)
        assert(EditorVCSInterface._method_popup_error_83702148 != nil)
    }

    public func _initialize(project_path: String) -> UInt8 {
        withUnsafePointer(to: project_path) { project_path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(project_path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__initialize_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func _set_credentials(username: String, password: String, ssh_public_key_path: String, ssh_private_key_path: String, ssh_passphrase: String)  {
        withUnsafePointer(to: ssh_passphrase) { ssh_passphrase_native in
        withUnsafePointer(to: ssh_private_key_path) { ssh_private_key_path_native in
        withUnsafePointer(to: ssh_public_key_path) { ssh_public_key_path_native in
        withUnsafePointer(to: password) { password_native in
        withUnsafePointer(to: username) { username_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(username_native), .init(password_native), .init(ssh_public_key_path_native), .init(ssh_private_key_path_native), .init(ssh_passphrase_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__set_credentials_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
        }
    }
    public func _get_modified_files_data() -> [Dictionary] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_modified_files_data_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
    }
    public func _stage_file(file_path: String)  {
        withUnsafePointer(to: file_path) { file_path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(file_path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__stage_file_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _unstage_file(file_path: String)  {
        withUnsafePointer(to: file_path) { file_path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(file_path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__unstage_file_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _discard_file(file_path: String)  {
        withUnsafePointer(to: file_path) { file_path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(file_path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__discard_file_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _commit(msg: String)  {
        withUnsafePointer(to: msg) { msg_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(msg_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__commit_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _get_diff(identifier: String, area: Int64) -> [Dictionary] {
        withUnsafePointer(to: area) { area_native in
        withUnsafePointer(to: identifier) { identifier_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(identifier_native), .init(area_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_diff_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
        }
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shut_down_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _get_vcs_name() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_vcs_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_previous_commits_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
        }
    }
    public func _get_branch_list() -> [String] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_branch_list_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [String](from: __resPtr.pointee)
    }
    public func _get_remotes() -> [String] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_remotes_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [String](from: __resPtr.pointee)
    }
    public func _create_branch(branch_name: String)  {
        withUnsafePointer(to: branch_name) { branch_name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(branch_name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__create_branch_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _remove_branch(branch_name: String)  {
        withUnsafePointer(to: branch_name) { branch_name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(branch_name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__remove_branch_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _create_remote(remote_name: String, remote_url: String)  {
        withUnsafePointer(to: remote_url) { remote_url_native in
        withUnsafePointer(to: remote_name) { remote_name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(remote_name_native), .init(remote_url_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__create_remote_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _remove_remote(remote_name: String)  {
        withUnsafePointer(to: remote_name) { remote_name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(remote_name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__remove_remote_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _get_current_branch_name() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_current_branch_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func _checkout_branch(branch_name: String) -> UInt8 {
        withUnsafePointer(to: branch_name) { branch_name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(branch_name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__checkout_branch_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func _pull(remote: String)  {
        withUnsafePointer(to: remote) { remote_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(remote_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__pull_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _push(remote: String, force: UInt8)  {
        withUnsafePointer(to: force) { force_native in
        withUnsafePointer(to: remote) { remote_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(remote_native), .init(force_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__push_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _fetch(remote: String)  {
        withUnsafePointer(to: remote) { remote_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(remote_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__fetch_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _get_line_diff(file_path: String, text: String) -> [Dictionary] {
        withUnsafePointer(to: text) { text_native in
        withUnsafePointer(to: file_path) { file_path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(file_path_native), .init(text_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_line_diff_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
        }
        }
    }
    public func create_diff_line(new_line_no: Int64, old_line_no: Int64, content: String, status: String) -> Dictionary {
        withUnsafePointer(to: status) { status_native in
        withUnsafePointer(to: content) { content_native in
        withUnsafePointer(to: old_line_no) { old_line_no_native in
        withUnsafePointer(to: new_line_no) { new_line_no_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(new_line_no_native), .init(old_line_no_native), .init(content_native), .init(status_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_diff_line_2901184053,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
        }
        }
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_diff_hunk_3784842090,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func create_diff_file(new_file: String, old_file: String) -> Dictionary {
        withUnsafePointer(to: old_file) { old_file_native in
        withUnsafePointer(to: new_file) { new_file_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(new_file_native), .init(old_file_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_diff_file_2723227684,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
        }
        }
    }
    public func create_commit(msg: String, author: String, id: String, unix_timestamp: Int64, offset_minutes: Int64) -> Dictionary {
        withUnsafePointer(to: offset_minutes) { offset_minutes_native in
        withUnsafePointer(to: unix_timestamp) { unix_timestamp_native in
        withUnsafePointer(to: id) { id_native in
        withUnsafePointer(to: author) { author_native in
        withUnsafePointer(to: msg) { msg_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(msg_native), .init(author_native), .init(id_native), .init(unix_timestamp_native), .init(offset_minutes_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_commit_1075983584,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
        }
        }
        }
        }
        }
    }
    public func create_status_file(file_path: String, change_type: EditorVCSInterface.ChangeType, area: EditorVCSInterface.TreeArea) -> Dictionary {
        withUnsafePointer(to: file_path) { file_path_native in
        withUnsafePointer(to: area.rawValue) { area_native in
        withUnsafePointer(to: change_type.rawValue) { change_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(file_path_native), .init(change_type_native), .init(area_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_status_file_1083471673,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
        }
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_diff_hunks_into_diff_file_4015243225,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_line_diffs_into_diff_hunk_4015243225,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
    }
    public func popup_error(msg: String)  {
        withUnsafePointer(to: msg) { msg_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(msg_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_popup_error_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}