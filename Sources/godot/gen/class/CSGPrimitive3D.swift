import godot_native

fileprivate var __godot_name_CSGPrimitive3D: StringName! = nil

/// MISSING
/// 
/// MISSING
open class CSGPrimitive3D : CSGShape3D {

    

    public override class var __godot_name: StringName { __godot_name_CSGPrimitive3D }

    static var _method_set_flip_faces_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_flip_faces_2240911060: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_CSGPrimitive3D = StringName(from: "CSGPrimitive3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_flip_faces_2586408642_name = StringName(from: "set_flip_faces")
        self._method_set_flip_faces_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_CSGPrimitive3D._native_ptr(), _method_set_flip_faces_2586408642_name._native_ptr(), 2586408642)
        assert(CSGPrimitive3D._method_set_flip_faces_2586408642 != nil)
        let _method_get_flip_faces_2240911060_name = StringName(from: "get_flip_faces")
        self._method_get_flip_faces_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name_CSGPrimitive3D._native_ptr(), _method_get_flip_faces_2240911060_name._native_ptr(), 2240911060)
        assert(CSGPrimitive3D._method_get_flip_faces_2240911060 != nil)
    }

    public func set_flip_faces(flip_faces: UInt8)  {
        withUnsafePointer(to: flip_faces) { flip_faces_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flip_faces_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_flip_faces_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_flip_faces() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_flip_faces_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}