import godot_native

fileprivate var __godot_name_Marker2D: StringName! = nil

/// Generic 2D position hint for editing.
/// 
/// Generic 2D position hint for editing. It's just like a plain [Node2D], but it displays as a cross in the 2D editor at all times. You can set cross' visual size by using the gizmo in the 2D editor while the node is selected.
public class Marker2D : Node2D {

    

    public override class var __godot_name: StringName { __godot_name_Marker2D }

    static var _method_set_gizmo_extents_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_gizmo_extents_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Marker2D = StringName(from: "Marker2D")

        let _method_set_gizmo_extents_373806689_name = StringName(from: "set_gizmo_extents")
        self._method_set_gizmo_extents_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gizmo_extents_373806689_name._native_ptr(), 373806689)
        assert(Marker2D._method_set_gizmo_extents_373806689 != nil)
        let _method_get_gizmo_extents_1740695150_name = StringName(from: "get_gizmo_extents")
        self._method_get_gizmo_extents_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gizmo_extents_1740695150_name._native_ptr(), 1740695150)
        assert(Marker2D._method_get_gizmo_extents_1740695150 != nil)
    }

    public func set_gizmo_extents(extents: Float64)  {
        withUnsafePointer(to: extents) { extents_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(extents_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gizmo_extents_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_gizmo_extents() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gizmo_extents_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}