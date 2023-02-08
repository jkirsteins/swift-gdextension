import godot_native

fileprivate var __godot_name_GrooveJoint2D: StringName! = nil

/// Groove constraint for 2D physics.
/// 
/// Groove constraint for 2D physics. This is useful for making a body "slide" through a segment placed in another.
open class GrooveJoint2D : Joint2D {

    

    public override class var __godot_name: StringName { __godot_name_GrooveJoint2D }

    static var _method_set_length_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_length_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_initial_offset_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_initial_offset_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_GrooveJoint2D = StringName(from: "GrooveJoint2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_length_373806689_name = StringName(from: "set_length")
        self._method_set_length_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GrooveJoint2D._native_ptr(), _method_set_length_373806689_name._native_ptr(), 373806689)
        assert(GrooveJoint2D._method_set_length_373806689 != nil)
        let _method_get_length_1740695150_name = StringName(from: "get_length")
        self._method_get_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GrooveJoint2D._native_ptr(), _method_get_length_1740695150_name._native_ptr(), 1740695150)
        assert(GrooveJoint2D._method_get_length_1740695150 != nil)
        let _method_set_initial_offset_373806689_name = StringName(from: "set_initial_offset")
        self._method_set_initial_offset_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GrooveJoint2D._native_ptr(), _method_set_initial_offset_373806689_name._native_ptr(), 373806689)
        assert(GrooveJoint2D._method_set_initial_offset_373806689 != nil)
        let _method_get_initial_offset_1740695150_name = StringName(from: "get_initial_offset")
        self._method_get_initial_offset_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GrooveJoint2D._native_ptr(), _method_get_initial_offset_1740695150_name._native_ptr(), 1740695150)
        assert(GrooveJoint2D._method_get_initial_offset_1740695150 != nil)
    }

    public func set_length(length: Float64)  {
        withUnsafePointer(to: length) { length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_length_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_length_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_initial_offset(offset: Float64)  {
        withUnsafePointer(to: offset) { offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_initial_offset_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_initial_offset() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_initial_offset_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
}