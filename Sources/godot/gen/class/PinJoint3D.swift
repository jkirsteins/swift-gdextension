import godot_native

fileprivate var __godot_name_PinJoint3D: StringName! = nil

/// Pin joint for 3D PhysicsBodies.
/// 
/// Pin joint for 3D rigid bodies. It pins 2 bodies (dynamic or static) together. See also [Generic6DOFJoint3D].
open class PinJoint3D : Joint3D {

    public enum Param : Int32 {
        case PARAM_BIAS = 0
        case PARAM_DAMPING = 1
        case PARAM_IMPULSE_CLAMP = 2
    }

    public override class var __godot_name: StringName { __godot_name_PinJoint3D }

    static var _method_set_param_2059913726: StringName! = nil
    static var _method_get_param_1758438771: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_PinJoint3D == nil)
        __godot_name_PinJoint3D = StringName(from: "PinJoint3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_param_2059913726 = StringName(from: "set_param")
        assert(self._method_set_param_2059913726 != nil)
        self._method_get_param_1758438771 = StringName(from: "get_param")
        assert(self._method_get_param_1758438771 != nil)
    }

    public func set_param(param: PinJoint3D.Param, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_param_2059913726._native_ptr(),
                    2059913726)
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
    public func get_param(param: PinJoint3D.Param) -> Float64 {
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_param_1758438771._native_ptr(),
                    1758438771)
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
}