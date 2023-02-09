import godot_native

fileprivate var __godot_name_GLTFAnimation: StringName! = nil

/// MISSING
/// 
/// MISSING
open class GLTFAnimation : Resource {

    

    public override class var __godot_name: StringName { __godot_name_GLTFAnimation }

    static var _method_get_loop_36873697: StringName! = nil
    static var _method_set_loop_2586408642: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_GLTFAnimation == nil)
        __godot_name_GLTFAnimation = StringName(from: "GLTFAnimation")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_loop_36873697 = StringName(from: "get_loop")
        assert(self._method_get_loop_36873697 != nil)
        self._method_set_loop_2586408642 = StringName(from: "set_loop")
        assert(self._method_set_loop_2586408642 != nil)
    }

    public func get_loop() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_loop_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_loop(loop: UInt8)  {
        withUnsafePointer(to: loop) { loop_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(loop_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_loop_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}