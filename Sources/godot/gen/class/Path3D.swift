import godot_native

fileprivate var __godot_name_Path3D: StringName! = nil

/// Contains a [Curve3D] path for [PathFollow3D] nodes to follow.
/// 
/// Can have [PathFollow3D] child nodes moving along the [Curve3D]. See [PathFollow3D] for more information on the usage.
///  
/// Note that the path is considered as relative to the moved nodes (children of [PathFollow3D]). As such, the curve should usually start with a zero vector [code](0, 0, 0)[/code].
public class Path3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_Path3D }

    static var _method_set_curve_408955118: GDExtensionMethodBindPtr! = nil
    static var _method_get_curve_4244715212: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Path3D = StringName(from: "Path3D")

        let _method_set_curve_408955118_name = StringName(from: "set_curve")
        self._method_set_curve_408955118 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_curve_408955118_name._native_ptr(), 408955118)
        assert(Path3D._method_set_curve_408955118 != nil)
        let _method_get_curve_4244715212_name = StringName(from: "get_curve")
        self._method_get_curve_4244715212 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_curve_4244715212_name._native_ptr(), 4244715212)
        assert(Path3D._method_get_curve_4244715212 != nil)
    }

    public func set_curve(curve: Curve3D)  {
        let curve_native = curve._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(curve_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_curve_408955118,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_curve() -> Curve3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_curve_4244715212,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Curve3D(from: __resPtr.pointee)
    }
}