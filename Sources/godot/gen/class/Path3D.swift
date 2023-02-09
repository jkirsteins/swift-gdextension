import godot_native

fileprivate var __godot_name_Path3D: StringName! = nil

/// Contains a [Curve3D] path for [PathFollow3D] nodes to follow.
/// 
/// Can have [PathFollow3D] child nodes moving along the [Curve3D]. See [PathFollow3D] for more information on the usage.
///  
/// Note that the path is considered as relative to the moved nodes (children of [PathFollow3D]). As such, the curve should usually start with a zero vector [code](0, 0, 0)[/code].
open class Path3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_Path3D }

    static var _method_set_curve_408955118: StringName! = nil
    static var _method_get_curve_4244715212: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Path3D == nil)
        __godot_name_Path3D = StringName(from: "Path3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_curve_408955118 = StringName(from: "set_curve")
        assert(self._method_set_curve_408955118 != nil)
        self._method_get_curve_4244715212 = StringName(from: "get_curve")
        assert(self._method_get_curve_4244715212 != nil)
    }

    public func set_curve(curve: Curve3D)  {
        let curve_native = curve._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(curve_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_curve_408955118._native_ptr(),
                    408955118)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_curve_4244715212._native_ptr(),
                    4244715212)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Curve3D(godot: __resPtr.pointee)
    }
}