import godot_native

fileprivate var __godot_name_GDScriptNativeClass: StringName! = nil

/// MISSING
/// 
/// MISSING
open class GDScriptNativeClass : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_GDScriptNativeClass }

    static var _method_new_1460262497: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_GDScriptNativeClass == nil)
        __godot_name_GDScriptNativeClass = StringName(from: "GDScriptNativeClass")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_new_1460262497 = StringName(from: "new")
        assert(self._method_new_1460262497 != nil)
    }

    public func new() -> Variant {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_new_1460262497._native_ptr(),
                    1460262497)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
}