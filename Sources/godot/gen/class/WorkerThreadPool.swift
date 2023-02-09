import godot_native

fileprivate var __godot_name_WorkerThreadPool: StringName! = nil

/// 
/// 
/// 
open class WorkerThreadPool : Object {

    

    public override class var __godot_name: StringName { __godot_name_WorkerThreadPool }

    static var _method_add_task_3976347598: StringName! = nil
    static var _method_is_task_completed_1116898809: StringName! = nil
    static var _method_wait_for_task_completion_1286410249: StringName! = nil
    static var _method_add_group_task_2377228549: StringName! = nil
    static var _method_is_group_task_completed_1116898809: StringName! = nil
    static var _method_get_group_processed_element_count_923996154: StringName! = nil
    static var _method_wait_for_group_task_completion_1286410249: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_WorkerThreadPool == nil)
        __godot_name_WorkerThreadPool = StringName(from: "WorkerThreadPool")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_add_task_3976347598 = StringName(from: "add_task")
        assert(self._method_add_task_3976347598 != nil)
        self._method_is_task_completed_1116898809 = StringName(from: "is_task_completed")
        assert(self._method_is_task_completed_1116898809 != nil)
        self._method_wait_for_task_completion_1286410249 = StringName(from: "wait_for_task_completion")
        assert(self._method_wait_for_task_completion_1286410249 != nil)
        self._method_add_group_task_2377228549 = StringName(from: "add_group_task")
        assert(self._method_add_group_task_2377228549 != nil)
        self._method_is_group_task_completed_1116898809 = StringName(from: "is_group_task_completed")
        assert(self._method_is_group_task_completed_1116898809 != nil)
        self._method_get_group_processed_element_count_923996154 = StringName(from: "get_group_processed_element_count")
        assert(self._method_get_group_processed_element_count_923996154 != nil)
        self._method_wait_for_group_task_completion_1286410249 = StringName(from: "wait_for_group_task_completion")
        assert(self._method_wait_for_group_task_completion_1286410249 != nil)
    }

    public func add_task(action: Callable, high_priority: UInt8, description: godot.String) -> Int64 {
        withUnsafePointer(to: high_priority) { high_priority_native in
        let description_native = description._native_ptr()
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native), .init(high_priority_native), .init(description_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_task_3976347598._native_ptr(),
                    3976347598)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_task_completed_1116898809._native_ptr(),
                    1116898809)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_wait_for_task_completion_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_group_task(action: Callable, elements: Int64, tasks_needed: Int64, high_priority: UInt8, description: godot.String) -> Int64 {
        withUnsafePointer(to: high_priority) { high_priority_native in
        withUnsafePointer(to: tasks_needed) { tasks_needed_native in
        withUnsafePointer(to: elements) { elements_native in
        let description_native = description._native_ptr()
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native), .init(elements_native), .init(tasks_needed_native), .init(high_priority_native), .init(description_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_group_task_2377228549._native_ptr(),
                    2377228549)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_group_task_completed_1116898809._native_ptr(),
                    1116898809)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_group_processed_element_count_923996154._native_ptr(),
                    923996154)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_wait_for_group_task_completion_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}