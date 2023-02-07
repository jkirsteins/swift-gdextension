import godot_native

fileprivate var __godot_name_GDScriptNativeClass: StringName! = nil

/// MISSING
/// 
/// MISSING
public class GDScriptNativeClass : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_GDScriptNativeClass }

    static var _method_new_1460262497: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GDScriptNativeClass = StringName(from: "GDScriptNativeClass")

        let _method_new_1460262497_name = StringName(from: "new")
        self._method_new_1460262497 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_new_1460262497_name._native_ptr(), 1460262497)
        assert(GDScriptNativeClass._method_new_1460262497 != nil)
    }

    public func new() -> Variant {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_new_1460262497,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
}