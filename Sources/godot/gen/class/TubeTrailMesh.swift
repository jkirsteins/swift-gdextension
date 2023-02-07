import godot_native

fileprivate var __godot_name_TubeTrailMesh: StringName! = nil

/// 
/// 
/// 
public class TubeTrailMesh : PrimitiveMesh {

    

    public override class var __godot_name: StringName { __godot_name_TubeTrailMesh }

    static var _method_set_radius_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_radius_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_radial_steps_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_radial_steps_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_sections_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_sections_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_section_length_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_section_length_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_section_rings_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_section_rings_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_cap_top_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_cap_top_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_cap_bottom_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_cap_bottom_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_curve_270443179: GDExtensionMethodBindPtr! = nil
    static var _method_get_curve_2460114913: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_TubeTrailMesh = StringName(from: "TubeTrailMesh")

        let _method_set_radius_373806689_name = StringName(from: "set_radius")
        self._method_set_radius_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_radius_373806689_name._native_ptr(), 373806689)
        assert(TubeTrailMesh._method_set_radius_373806689 != nil)
        let _method_get_radius_1740695150_name = StringName(from: "get_radius")
        self._method_get_radius_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_radius_1740695150_name._native_ptr(), 1740695150)
        assert(TubeTrailMesh._method_get_radius_1740695150 != nil)
        let _method_set_radial_steps_1286410249_name = StringName(from: "set_radial_steps")
        self._method_set_radial_steps_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_radial_steps_1286410249_name._native_ptr(), 1286410249)
        assert(TubeTrailMesh._method_set_radial_steps_1286410249 != nil)
        let _method_get_radial_steps_3905245786_name = StringName(from: "get_radial_steps")
        self._method_get_radial_steps_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_radial_steps_3905245786_name._native_ptr(), 3905245786)
        assert(TubeTrailMesh._method_get_radial_steps_3905245786 != nil)
        let _method_set_sections_1286410249_name = StringName(from: "set_sections")
        self._method_set_sections_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sections_1286410249_name._native_ptr(), 1286410249)
        assert(TubeTrailMesh._method_set_sections_1286410249 != nil)
        let _method_get_sections_3905245786_name = StringName(from: "get_sections")
        self._method_get_sections_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sections_3905245786_name._native_ptr(), 3905245786)
        assert(TubeTrailMesh._method_get_sections_3905245786 != nil)
        let _method_set_section_length_373806689_name = StringName(from: "set_section_length")
        self._method_set_section_length_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_section_length_373806689_name._native_ptr(), 373806689)
        assert(TubeTrailMesh._method_set_section_length_373806689 != nil)
        let _method_get_section_length_1740695150_name = StringName(from: "get_section_length")
        self._method_get_section_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_section_length_1740695150_name._native_ptr(), 1740695150)
        assert(TubeTrailMesh._method_get_section_length_1740695150 != nil)
        let _method_set_section_rings_1286410249_name = StringName(from: "set_section_rings")
        self._method_set_section_rings_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_section_rings_1286410249_name._native_ptr(), 1286410249)
        assert(TubeTrailMesh._method_set_section_rings_1286410249 != nil)
        let _method_get_section_rings_3905245786_name = StringName(from: "get_section_rings")
        self._method_get_section_rings_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_section_rings_3905245786_name._native_ptr(), 3905245786)
        assert(TubeTrailMesh._method_get_section_rings_3905245786 != nil)
        let _method_set_cap_top_2586408642_name = StringName(from: "set_cap_top")
        self._method_set_cap_top_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cap_top_2586408642_name._native_ptr(), 2586408642)
        assert(TubeTrailMesh._method_set_cap_top_2586408642 != nil)
        let _method_is_cap_top_36873697_name = StringName(from: "is_cap_top")
        self._method_is_cap_top_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_cap_top_36873697_name._native_ptr(), 36873697)
        assert(TubeTrailMesh._method_is_cap_top_36873697 != nil)
        let _method_set_cap_bottom_2586408642_name = StringName(from: "set_cap_bottom")
        self._method_set_cap_bottom_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cap_bottom_2586408642_name._native_ptr(), 2586408642)
        assert(TubeTrailMesh._method_set_cap_bottom_2586408642 != nil)
        let _method_is_cap_bottom_36873697_name = StringName(from: "is_cap_bottom")
        self._method_is_cap_bottom_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_cap_bottom_36873697_name._native_ptr(), 36873697)
        assert(TubeTrailMesh._method_is_cap_bottom_36873697 != nil)
        let _method_set_curve_270443179_name = StringName(from: "set_curve")
        self._method_set_curve_270443179 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_curve_270443179_name._native_ptr(), 270443179)
        assert(TubeTrailMesh._method_set_curve_270443179 != nil)
        let _method_get_curve_2460114913_name = StringName(from: "get_curve")
        self._method_get_curve_2460114913 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_curve_2460114913_name._native_ptr(), 2460114913)
        assert(TubeTrailMesh._method_get_curve_2460114913 != nil)
    }

    public func set_radius(radius: Float64)  {
        withUnsafePointer(to: radius) { radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radius_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_radius_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_radius_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_radial_steps(radial_steps: Int64)  {
        withUnsafePointer(to: radial_steps) { radial_steps_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radial_steps_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_radial_steps_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_radial_steps() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_radial_steps_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_sections(sections: Int64)  {
        withUnsafePointer(to: sections) { sections_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sections_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sections_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sections() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sections_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_section_length(section_length: Float64)  {
        withUnsafePointer(to: section_length) { section_length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(section_length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_section_length_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_section_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_section_length_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_section_rings(section_rings: Int64)  {
        withUnsafePointer(to: section_rings) { section_rings_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(section_rings_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_section_rings_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_section_rings() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_section_rings_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_cap_top(cap_top: UInt8)  {
        withUnsafePointer(to: cap_top) { cap_top_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cap_top_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cap_top_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_cap_top() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_cap_top_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_cap_bottom(cap_bottom: UInt8)  {
        withUnsafePointer(to: cap_bottom) { cap_bottom_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cap_bottom_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cap_bottom_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_cap_bottom() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_cap_bottom_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_curve(curve: Curve)  {
        let curve_native = curve._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(curve_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_curve_270443179,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_curve() -> Curve {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_curve_2460114913,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Curve(from: __resPtr.pointee)
    }
}