import godot_native

fileprivate var __godot_name_Path2D: StringName! = nil

/// Contains a [Curve2D] path for [PathFollow2D] nodes to follow.
/// 
/// Can have [PathFollow2D] child nodes moving along the [Curve2D]. See [PathFollow2D] for more information on usage.
///  
/// [b]Note:[/b] The path is considered as relative to the moved nodes (children of [PathFollow2D]). As such, the curve should usually start with a zero vector ([code](0, 0)[/code]).
open class Path2D : Node2D {

    

    public override class var __godot_name: StringName { __godot_name_Path2D }

    static var _method_set_curve_659985499: StringName! = nil
    static var _method_get_curve_660369445: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Path2D == nil)
        __godot_name_Path2D = StringName(from: "Path2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_curve_659985499 = StringName(from: "set_curve")
        assert(self._method_set_curve_659985499 != nil)
        self._method_get_curve_660369445 = StringName(from: "get_curve")
        assert(self._method_get_curve_660369445 != nil)
    }

    public func set_curve(curve: Curve2D)  {
        let curve_native = curve._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(curve_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_curve_659985499._native_ptr(),
                    659985499)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_curve() -> Curve2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_curve_660369445._native_ptr(),
                    660369445)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Curve2D(godot: __resPtr.pointee)
    }
}