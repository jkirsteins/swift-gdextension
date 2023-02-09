import godot_native

fileprivate var __godot_name_OccluderInstance3D: StringName! = nil

/// Provides occlusion culling for 3D nodes, which improves performance in closed areas.
/// 
/// Occlusion culling can improve rendering performance in closed/semi-open areas by hiding geometry that is occluded by other objects.
///  
/// The occlusion culling system is mostly static. [OccluderInstance3D]s can be moved or hidden at run-time, but doing so will trigger a background recomputation that can take several frames. It is recommended to only move [OccluderInstance3D]s sporadically (e.g. for procedural generation purposes), rather than doing so every frame.
///  
/// The occlusion culling system works by rendering the occluders on the CPU in parallel using [url=https://www.embree.org/]Embree[/url], drawing the result to a low-resolution buffer then using this to cull 3D nodes individually. In the 3D editor, you can preview the occlusion culling buffer by choosing [b]Perspective > Debug Advanced... > Occlusion Culling Buffer[/b] in the top-left corner of the 3D viewport. The occlusion culling buffer quality can be adjusted in the Project Settings.
///  
/// [b]Baking:[/b] Select an [OccluderInstance3D] node, then use the [b]Bake Occluders[/b] button at the top of the 3D editor. Only opaque materials will be taken into account; transparent materials (alpha-blended or alpha-tested) will be ignored by the occluder generation.
///  
/// [b]Note:[/b] Occlusion culling is only effective if [member ProjectSettings.rendering/occlusion_culling/use_occlusion_culling] is [code]true[/code]. Enabling occlusion culling has a cost on the CPU. Only enable occlusion culling if you actually plan to use it. Large open scenes with few or no objects blocking the view will generally not benefit much from occlusion culling. Large open scenes generally benefit more from mesh LOD and visibility ranges ([member GeometryInstance3D.visibility_range_begin] and [member GeometryInstance3D.visibility_range_end]) compared to occlusion culling.
open class OccluderInstance3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_OccluderInstance3D }

    static var _method_set_bake_mask_1286410249: StringName! = nil
    static var _method_get_bake_mask_3905245786: StringName! = nil
    static var _method_set_bake_mask_value_300928843: StringName! = nil
    static var _method_get_bake_mask_value_1116898809: StringName! = nil
    static var _method_set_bake_simplification_distance_373806689: StringName! = nil
    static var _method_get_bake_simplification_distance_1740695150: StringName! = nil
    static var _method_set_occluder_1664878165: StringName! = nil
    static var _method_get_occluder_1696836198: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_OccluderInstance3D == nil)
        __godot_name_OccluderInstance3D = StringName(from: "OccluderInstance3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_bake_mask_1286410249 = StringName(from: "set_bake_mask")
        assert(self._method_set_bake_mask_1286410249 != nil)
        self._method_get_bake_mask_3905245786 = StringName(from: "get_bake_mask")
        assert(self._method_get_bake_mask_3905245786 != nil)
        self._method_set_bake_mask_value_300928843 = StringName(from: "set_bake_mask_value")
        assert(self._method_set_bake_mask_value_300928843 != nil)
        self._method_get_bake_mask_value_1116898809 = StringName(from: "get_bake_mask_value")
        assert(self._method_get_bake_mask_value_1116898809 != nil)
        self._method_set_bake_simplification_distance_373806689 = StringName(from: "set_bake_simplification_distance")
        assert(self._method_set_bake_simplification_distance_373806689 != nil)
        self._method_get_bake_simplification_distance_1740695150 = StringName(from: "get_bake_simplification_distance")
        assert(self._method_get_bake_simplification_distance_1740695150 != nil)
        self._method_set_occluder_1664878165 = StringName(from: "set_occluder")
        assert(self._method_set_occluder_1664878165 != nil)
        self._method_get_occluder_1696836198 = StringName(from: "get_occluder")
        assert(self._method_get_occluder_1696836198 != nil)
    }

    public func set_bake_mask(mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mask_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bake_mask_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bake_mask() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bake_mask_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_bake_mask_value(layer_number: Int64, value: UInt8)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: layer_number) { layer_number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_number_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bake_mask_value_300928843._native_ptr(),
                    300928843)
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
    public func get_bake_mask_value(layer_number: Int64) -> UInt8 {
        withUnsafePointer(to: layer_number) { layer_number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_number_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bake_mask_value_1116898809._native_ptr(),
                    1116898809)
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
    public func set_bake_simplification_distance(simplification_distance: Float64)  {
        withUnsafePointer(to: simplification_distance) { simplification_distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(simplification_distance_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bake_simplification_distance_373806689._native_ptr(),
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
    public func get_bake_simplification_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bake_simplification_distance_1740695150._native_ptr(),
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
    public func set_occluder(occluder: Occluder3D)  {
        let occluder_native = occluder._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(occluder_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_occluder_1664878165._native_ptr(),
                    1664878165)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_occluder() -> Occluder3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_occluder_1696836198._native_ptr(),
                    1696836198)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Occluder3D(godot: __resPtr.pointee)
    }
}