import godot_native

fileprivate var __godot_name_JavaClassWrapper: StringName! = nil

/// 
/// 
/// 
open class JavaClassWrapper : Object {

    

    public override class var __godot_name: StringName { __godot_name_JavaClassWrapper }

    static var _method_wrap_1124367868: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_JavaClassWrapper = StringName(from: "JavaClassWrapper")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_wrap_1124367868_name = StringName(from: "wrap")
        self._method_wrap_1124367868 = self.interface.pointee.classdb_get_method_bind(__godot_name_JavaClassWrapper._native_ptr(), _method_wrap_1124367868_name._native_ptr(), 1124367868)
        assert(JavaClassWrapper._method_wrap_1124367868 != nil)
    }

    public func wrap(name: godot.String) -> JavaClass {
        let name_native = name._native_ptr()
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
            return JavaClass(godot: __resPtr.pointee)
    }
}