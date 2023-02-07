import godot_native

fileprivate var __godot_name_JavaClassWrapper: StringName! = nil

/// 
/// 
/// 
public class JavaClassWrapper : Object {

    

    public override class var __godot_name: StringName { __godot_name_JavaClassWrapper }

    static var _method_wrap_1124367868: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_JavaClassWrapper = StringName(from: "JavaClassWrapper")

        let _method_wrap_1124367868_name = StringName(from: "wrap")
        self._method_wrap_1124367868 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_wrap_1124367868_name._native_ptr(), 1124367868)
        assert(JavaClassWrapper._method_wrap_1124367868 != nil)
    }

    public func wrap(name: String) -> JavaClass {
        withUnsafePointer(to: name) { name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_wrap_1124367868,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return JavaClass(from: __resPtr.pointee)
        }
    }
}