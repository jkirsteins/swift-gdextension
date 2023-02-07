import godot_native

fileprivate var __godot_name_Semaphore: StringName! = nil

/// A synchronization semaphore.
/// 
/// A synchronization semaphore which can be used to synchronize multiple [Thread]s. Initialized to zero on creation. Be careful to avoid deadlocks. For a binary version, see [Mutex].
public class Semaphore : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_Semaphore }

    static var _method_wait_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_try_wait_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_post_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Semaphore = StringName(from: "Semaphore")

        let _method_wait_3218959716_name = StringName(from: "wait")
        self._method_wait_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_wait_3218959716_name._native_ptr(), 3218959716)
        assert(Semaphore._method_wait_3218959716 != nil)
        let _method_try_wait_2240911060_name = StringName(from: "try_wait")
        self._method_try_wait_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_try_wait_2240911060_name._native_ptr(), 2240911060)
        assert(Semaphore._method_try_wait_2240911060 != nil)
        let _method_post_3218959716_name = StringName(from: "post")
        self._method_post_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_post_3218959716_name._native_ptr(), 3218959716)
        assert(Semaphore._method_post_3218959716 != nil)
    }

    public func wait()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_wait_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func try_wait() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_try_wait_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func post()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_post_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}