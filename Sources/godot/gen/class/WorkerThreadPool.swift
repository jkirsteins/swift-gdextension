import godot_native

fileprivate var __godot_name_WorkerThreadPool: StringName! = nil

/// 
/// 
/// 
public class WorkerThreadPool : Object {

    

    public override class var __godot_name: StringName { __godot_name_WorkerThreadPool }

    static var _method_add_task_3976347598: GDExtensionMethodBindPtr! = nil
    static var _method_is_task_completed_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_wait_for_task_completion_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_add_group_task_2377228549: GDExtensionMethodBindPtr! = nil
    static var _method_is_group_task_completed_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_get_group_processed_element_count_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_wait_for_group_task_completion_1286410249: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_WorkerThreadPool = StringName(from: "WorkerThreadPool")

        let _method_add_task_3976347598_name = StringName(from: "add_task")
        self._method_add_task_3976347598 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_task_3976347598_name._native_ptr(), 3976347598)
        assert(WorkerThreadPool._method_add_task_3976347598 != nil)
        let _method_is_task_completed_1116898809_name = StringName(from: "is_task_completed")
        self._method_is_task_completed_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_task_completed_1116898809_name._native_ptr(), 1116898809)
        assert(WorkerThreadPool._method_is_task_completed_1116898809 != nil)
        let _method_wait_for_task_completion_1286410249_name = StringName(from: "wait_for_task_completion")
        self._method_wait_for_task_completion_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_wait_for_task_completion_1286410249_name._native_ptr(), 1286410249)
        assert(WorkerThreadPool._method_wait_for_task_completion_1286410249 != nil)
        let _method_add_group_task_2377228549_name = StringName(from: "add_group_task")
        self._method_add_group_task_2377228549 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_group_task_2377228549_name._native_ptr(), 2377228549)
        assert(WorkerThreadPool._method_add_group_task_2377228549 != nil)
        let _method_is_group_task_completed_1116898809_name = StringName(from: "is_group_task_completed")
        self._method_is_group_task_completed_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_group_task_completed_1116898809_name._native_ptr(), 1116898809)
        assert(WorkerThreadPool._method_is_group_task_completed_1116898809 != nil)
        let _method_get_group_processed_element_count_923996154_name = StringName(from: "get_group_processed_element_count")
        self._method_get_group_processed_element_count_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_group_processed_element_count_923996154_name._native_ptr(), 923996154)
        assert(WorkerThreadPool._method_get_group_processed_element_count_923996154 != nil)
        let _method_wait_for_group_task_completion_1286410249_name = StringName(from: "wait_for_group_task_completion")
        self._method_wait_for_group_task_completion_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_wait_for_group_task_completion_1286410249_name._native_ptr(), 1286410249)
        assert(WorkerThreadPool._method_wait_for_group_task_completion_1286410249 != nil)
    }

    public func add_task(action: Callable, high_priority: UInt8, description: String) -> Int64 {
        withUnsafePointer(to: description) { description_native in
        withUnsafePointer(to: high_priority) { high_priority_native in
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native), .init(high_priority_native), .init(description_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_task_3976347598,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
    }
    public func is_task_completed(task_id: Int64) -> UInt8 {
        withUnsafePointer(to: task_id) { task_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(task_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_task_completed_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func wait_for_task_completion(task_id: Int64)  {
        withUnsafePointer(to: task_id) { task_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(task_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_wait_for_task_completion_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_group_task(action: Callable, elements: Int64, tasks_needed: Int64, high_priority: UInt8, description: String) -> Int64 {
        withUnsafePointer(to: description) { description_native in
        withUnsafePointer(to: high_priority) { high_priority_native in
        withUnsafePointer(to: tasks_needed) { tasks_needed_native in
        withUnsafePointer(to: elements) { elements_native in
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native), .init(elements_native), .init(tasks_needed_native), .init(high_priority_native), .init(description_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_group_task_2377228549,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func is_group_task_completed(group_id: Int64) -> UInt8 {
        withUnsafePointer(to: group_id) { group_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(group_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_group_task_completed_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func get_group_processed_element_count(group_id: Int64) -> Int64 {
        withUnsafePointer(to: group_id) { group_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(group_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_group_processed_element_count_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func wait_for_group_task_completion(group_id: Int64)  {
        withUnsafePointer(to: group_id) { group_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(group_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_wait_for_group_task_completion_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}