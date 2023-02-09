import godot_native

fileprivate var __godot_name_VisualShaderNodeParticleMultiplyByAxisAngle: StringName! = nil

/// A visual shader helper node for multiplying position and rotation of particles.
/// 
/// This node helps to multiply a position input vector by rotation using specific axis. Intended to work with emitters.
open class VisualShaderNodeParticleMultiplyByAxisAngle : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeParticleMultiplyByAxisAngle }

    static var _method_set_degrees_mode_2586408642: StringName! = nil
    static var _method_is_degrees_mode_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeParticleMultiplyByAxisAngle == nil)
        __godot_name_VisualShaderNodeParticleMultiplyByAxisAngle = StringName(from: "VisualShaderNodeParticleMultiplyByAxisAngle")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_degrees_mode_2586408642 = StringName(from: "set_degrees_mode")
        assert(self._method_set_degrees_mode_2586408642 != nil)
        self._method_is_degrees_mode_36873697 = StringName(from: "is_degrees_mode")
        assert(self._method_is_degrees_mode_36873697 != nil)
    }

    public func set_degrees_mode(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_degrees_mode_2586408642._native_ptr(),
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
    public func is_degrees_mode() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_degrees_mode_36873697._native_ptr(),
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
}