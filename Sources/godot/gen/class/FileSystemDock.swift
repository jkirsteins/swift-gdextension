import godot_native

fileprivate var __godot_name_FileSystemDock: StringName! = nil

/// 
/// 
/// 
public class FileSystemDock : VBoxContainer {

    

    public override class var __godot_name: StringName { __godot_name_FileSystemDock }

    static var _method_navigate_to_path_83702148: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_FileSystemDock = StringName(from: "FileSystemDock")

        let _method_navigate_to_path_83702148_name = StringName(from: "navigate_to_path")
        self._method_navigate_to_path_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_navigate_to_path_83702148_name._native_ptr(), 83702148)
        assert(FileSystemDock._method_navigate_to_path_83702148 != nil)
    }

    public func navigate_to_path(path: String)  {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_navigate_to_path_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}