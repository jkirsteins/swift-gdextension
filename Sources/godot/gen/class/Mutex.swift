import godot_native

fileprivate var __godot_name_Mutex: StringName! = nil

/// A synchronization mutex (mutual exclusion).
/// 
/// A synchronization mutex (mutual exclusion). This is used to synchronize multiple [Thread]s, and is equivalent to a binary [Semaphore]. It guarantees that only one thread can ever acquire the lock at a time. A mutex can be used to protect a critical section; however, be careful to avoid deadlocks.
open class Mutex : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_Mutex }

    static var _method_lock_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_try_lock_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_unlock_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Mutex = StringName(from: "Mutex")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_lock_3218959716_name = StringName(from: "lock")
        self._method_lock_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Mutex._native_ptr(), _method_lock_3218959716_name._native_ptr(), 3218959716)
        assert(Mutex._method_lock_3218959716 != nil)
        let _method_try_lock_2240911060_name = StringName(from: "try_lock")
        self._method_try_lock_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name_Mutex._native_ptr(), _method_try_lock_2240911060_name._native_ptr(), 2240911060)
        assert(Mutex._method_try_lock_2240911060 != nil)
        let _method_unlock_3218959716_name = StringName(from: "unlock")
        self._method_unlock_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Mutex._native_ptr(), _method_unlock_3218959716_name._native_ptr(), 3218959716)
        assert(Mutex._method_unlock_3218959716 != nil)
    }

    public func lock()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_lock_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func try_lock() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_try_lock_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func unlock()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_unlock_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}