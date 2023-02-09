import godot_native

fileprivate var __godot_name_JavaClassWrapper: StringName! = nil

/// 
/// 
/// 
open class JavaClassWrapper : Object {

    

    public override class var __godot_name: StringName { __godot_name_JavaClassWrapper }

    static var _method_wrap_1124367868: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_JavaClassWrapper == nil)
        __godot_name_JavaClassWrapper = StringName(from: "JavaClassWrapper")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_wrap_1124367868 = StringName(from: "wrap")
        assert(self._method_wrap_1124367868 != nil)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_wrap_1124367868._native_ptr(),
                    1124367868)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return JavaClass(godot: __resPtr.pointee)
    }
}