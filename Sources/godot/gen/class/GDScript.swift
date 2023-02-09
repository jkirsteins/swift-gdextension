import godot_native

fileprivate var __godot_name_GDScript: StringName! = nil

/// MISSING
/// 
/// MISSING
open class GDScript : Script {

    

    public override class var __godot_name: StringName { __godot_name_GDScript }

    static var _method_new_1545262638: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_GDScript == nil)
        __godot_name_GDScript = StringName(from: "GDScript")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_new_1545262638 = StringName(from: "new")
        assert(self._method_new_1545262638 != nil)
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
                    Self._method_new_1545262638._native_ptr(),
                    1545262638)
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