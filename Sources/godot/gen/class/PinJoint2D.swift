import godot_native

fileprivate var __godot_name_PinJoint2D: StringName! = nil

/// Pin joint for 2D shapes.
/// 
/// Pin joint for 2D rigid bodies. It pins two bodies (dynamic or static) together.
open class PinJoint2D : Joint2D {

    

    public override class var __godot_name: StringName { __godot_name_PinJoint2D }

    static var _method_set_softness_373806689: StringName! = nil
    static var _method_get_softness_1740695150: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_PinJoint2D == nil)
        __godot_name_PinJoint2D = StringName(from: "PinJoint2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_softness_373806689 = StringName(from: "set_softness")
        assert(self._method_set_softness_373806689 != nil)
        self._method_get_softness_1740695150 = StringName(from: "get_softness")
        assert(self._method_get_softness_1740695150 != nil)
    }

    public func set_softness(softness: Float64)  {
        withUnsafePointer(to: softness) { softness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(softness_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_softness_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_softness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_softness_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
}