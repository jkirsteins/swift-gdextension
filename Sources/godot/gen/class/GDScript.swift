import godot_native

fileprivate var __godot_name_GDScript: StringName! = nil

/// MISSING
/// 
/// MISSING
public class GDScript : Script {

    

    public override class var __godot_name: StringName { __godot_name_GDScript }

    static var _method_new_1545262638: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GDScript = StringName(from: "GDScript")

        let _method_new_1545262638_name = StringName(from: "new")
        self._method_new_1545262638 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_new_1545262638_name._native_ptr(), 1545262638)
        assert(GDScript._method_new_1545262638 != nil)
    }

    public func new() -> Variant {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_new_1545262638,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
}