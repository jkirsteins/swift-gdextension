import godot_native

fileprivate var __godot_name_PolygonOccluder3D: StringName! = nil

/// Flat 2D polygon shape for use with occlusion culling in [OccluderInstance3D].
/// 
/// [PolygonOccluder3D] stores a polygon shape that can be used by the engine's occlusion culling system. When an [OccluderInstance3D] with a [PolygonOccluder3D] is selected in the editor, an editor will appear at the top of the 3D viewport so you can add/remove points. All points must be placed on the same 2D plane, which means it is not possible to create arbitrary 3D shapes with a single [PolygonOccluder3D]. To use arbitrary 3D shapes as occluders, use [ArrayOccluder3D] or [OccluderInstance3D]'s baking feature instead.
///  
/// See [OccluderInstance3D]'s documentation for instructions on setting up occlusion culling.
open class PolygonOccluder3D : Occluder3D {

    

    public override class var __godot_name: StringName { __godot_name_PolygonOccluder3D }

    static var _method_set_polygon_1509147220: StringName! = nil
    static var _method_get_polygon_2961356807: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_PolygonOccluder3D == nil)
        __godot_name_PolygonOccluder3D = StringName(from: "PolygonOccluder3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_polygon_1509147220 = StringName(from: "set_polygon")
        assert(self._method_set_polygon_1509147220 != nil)
        self._method_get_polygon_2961356807 = StringName(from: "get_polygon")
        assert(self._method_get_polygon_2961356807 != nil)
    }

    public func set_polygon(polygon: PackedVector2Array)  {
        let polygon_native = polygon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polygon_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_polygon_1509147220._native_ptr(),
                    1509147220)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_polygon() -> PackedVector2Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_polygon_2961356807._native_ptr(),
                    2961356807)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(godot: __resPtr.pointee)
    }
}