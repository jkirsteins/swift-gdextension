import godot_native

fileprivate var __godot_name_OptimizedTranslation: StringName! = nil

/// Optimized translation.
/// 
/// Optimized translation. Uses real-time compressed translations, which results in very small dictionaries.
open class OptimizedTranslation : Translation {

    

    public override class var __godot_name: StringName { __godot_name_OptimizedTranslation }

    static var _method_generate_1466479800: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_OptimizedTranslation = StringName(from: "OptimizedTranslation")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_generate_1466479800_name = StringName(from: "generate")
        self._method_generate_1466479800 = self.interface.pointee.classdb_get_method_bind(__godot_name_OptimizedTranslation._native_ptr(), _method_generate_1466479800_name._native_ptr(), 1466479800)
        assert(OptimizedTranslation._method_generate_1466479800 != nil)
    }

    public func generate(from: Translation)  {
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_generate_1466479800,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}