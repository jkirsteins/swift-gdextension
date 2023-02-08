import godot_native

fileprivate var __godot_name_Thread: StringName! = nil

/// A unit of execution in a process.
/// 
/// A unit of execution in a process. Can run methods on [Object]s simultaneously. The use of synchronization via [Mutex] or [Semaphore] is advised if working with shared objects.
///  
/// [b]Note:[/b] Breakpoints won't break on code if it's running in a thread. This is a current limitation of the GDScript debugger.
open class Thread : RefCounted {

    public enum Priority : Int32 {
        case PRIORITY_LOW = 0
        case PRIORITY_NORMAL = 1
        case PRIORITY_HIGH = 2
    }

    public override class var __godot_name: StringName { __godot_name_Thread }

    static var _method_start_2779832528: GDExtensionMethodBindPtr! = nil
    static var _method_get_id_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_is_started_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_alive_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_wait_to_finish_1460262497: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Thread = StringName(from: "Thread")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_start_2779832528_name = StringName(from: "start")
        self._method_start_2779832528 = self.interface.pointee.classdb_get_method_bind(__godot_name_Thread._native_ptr(), _method_start_2779832528_name._native_ptr(), 2779832528)
        assert(Thread._method_start_2779832528 != nil)
        let _method_get_id_201670096_name = StringName(from: "get_id")
        self._method_get_id_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_Thread._native_ptr(), _method_get_id_201670096_name._native_ptr(), 201670096)
        assert(Thread._method_get_id_201670096 != nil)
        let _method_is_started_36873697_name = StringName(from: "is_started")
        self._method_is_started_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Thread._native_ptr(), _method_is_started_36873697_name._native_ptr(), 36873697)
        assert(Thread._method_is_started_36873697 != nil)
        let _method_is_alive_36873697_name = StringName(from: "is_alive")
        self._method_is_alive_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Thread._native_ptr(), _method_is_alive_36873697_name._native_ptr(), 36873697)
        assert(Thread._method_is_alive_36873697 != nil)
        let _method_wait_to_finish_1460262497_name = StringName(from: "wait_to_finish")
        self._method_wait_to_finish_1460262497 = self.interface.pointee.classdb_get_method_bind(__godot_name_Thread._native_ptr(), _method_wait_to_finish_1460262497_name._native_ptr(), 1460262497)
        assert(Thread._method_wait_to_finish_1460262497 != nil)
    }

    public func start(callable: Callable, priority: Thread.Priority) -> Error {
        withUnsafePointer(to: priority.rawValue) { priority_native in
        let callable_native = callable._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(callable_native), .init(priority_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_start_2779832528,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
    public func get_id() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_id_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func is_started() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_started_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func is_alive() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_alive_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func wait_to_finish() -> Variant {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_wait_to_finish_1460262497,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
}