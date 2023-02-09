import godot_native

fileprivate var __godot_name_OptimizedTranslation: StringName! = nil

/// Optimized translation.
/// 
/// Optimized translation. Uses real-time compressed translations, which results in very small dictionaries.
open class OptimizedTranslation : Translation {

    

    public override class var __godot_name: StringName { __godot_name_OptimizedTranslation }

    static var _method_generate_1466479800: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_OptimizedTranslation == nil)
        __godot_name_OptimizedTranslation = StringName(from: "OptimizedTranslation")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_generate_1466479800 = StringName(from: "generate")
        assert(self._method_generate_1466479800 != nil)
    }

    public func generate(from: Translation)  {
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_generate_1466479800._native_ptr(),
                    1466479800)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}