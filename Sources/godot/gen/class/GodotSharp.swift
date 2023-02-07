import godot_native

fileprivate var __godot_name_GodotSharp: StringName! = nil

/// MISSING
/// 
/// MISSING
public class GodotSharp : Object {

    

    public override class var __godot_name: StringName { __godot_name_GodotSharp }

    static var _method_is_runtime_initialized_2240911060: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GodotSharp = StringName(from: "GodotSharp")

        let _method_is_runtime_initialized_2240911060_name = StringName(from: "is_runtime_initialized")
        self._method_is_runtime_initialized_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_runtime_initialized_2240911060_name._native_ptr(), 2240911060)
        assert(GodotSharp._method_is_runtime_initialized_2240911060 != nil)
    }

    public func is_runtime_initialized() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_runtime_initialized_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}