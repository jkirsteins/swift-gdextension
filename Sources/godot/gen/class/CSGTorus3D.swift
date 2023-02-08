import godot_native

fileprivate var __godot_name_CSGTorus3D: StringName! = nil

/// MISSING
/// 
/// MISSING
open class CSGTorus3D : CSGPrimitive3D {

    

    public override class var __godot_name: StringName { __godot_name_CSGTorus3D }

    static var _method_set_inner_radius_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_inner_radius_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_outer_radius_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_outer_radius_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_sides_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_sides_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_ring_sides_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_ring_sides_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_material_2757459619: GDExtensionMethodBindPtr! = nil
    static var _method_get_material_5934680: GDExtensionMethodBindPtr! = nil
    static var _method_set_smooth_faces_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_smooth_faces_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_CSGTorus3D = StringName(from: "CSGTorus3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_inner_radius_373806689_name = StringName(from: "set_inner_radius")
        self._method_set_inner_radius_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CSGTorus3D._native_ptr(), _method_set_inner_radius_373806689_name._native_ptr(), 373806689)
        assert(CSGTorus3D._method_set_inner_radius_373806689 != nil)
        let _method_get_inner_radius_1740695150_name = StringName(from: "get_inner_radius")
        self._method_get_inner_radius_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CSGTorus3D._native_ptr(), _method_get_inner_radius_1740695150_name._native_ptr(), 1740695150)
        assert(CSGTorus3D._method_get_inner_radius_1740695150 != nil)
        let _method_set_outer_radius_373806689_name = StringName(from: "set_outer_radius")
        self._method_set_outer_radius_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CSGTorus3D._native_ptr(), _method_set_outer_radius_373806689_name._native_ptr(), 373806689)
        assert(CSGTorus3D._method_set_outer_radius_373806689 != nil)
        let _method_get_outer_radius_1740695150_name = StringName(from: "get_outer_radius")
        self._method_get_outer_radius_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CSGTorus3D._native_ptr(), _method_get_outer_radius_1740695150_name._native_ptr(), 1740695150)
        assert(CSGTorus3D._method_get_outer_radius_1740695150 != nil)
        let _method_set_sides_1286410249_name = StringName(from: "set_sides")
        self._method_set_sides_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_CSGTorus3D._native_ptr(), _method_set_sides_1286410249_name._native_ptr(), 1286410249)
        assert(CSGTorus3D._method_set_sides_1286410249 != nil)
        let _method_get_sides_3905245786_name = StringName(from: "get_sides")
        self._method_get_sides_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_CSGTorus3D._native_ptr(), _method_get_sides_3905245786_name._native_ptr(), 3905245786)
        assert(CSGTorus3D._method_get_sides_3905245786 != nil)
        let _method_set_ring_sides_1286410249_name = StringName(from: "set_ring_sides")
        self._method_set_ring_sides_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_CSGTorus3D._native_ptr(), _method_set_ring_sides_1286410249_name._native_ptr(), 1286410249)
        assert(CSGTorus3D._method_set_ring_sides_1286410249 != nil)
        let _method_get_ring_sides_3905245786_name = StringName(from: "get_ring_sides")
        self._method_get_ring_sides_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_CSGTorus3D._native_ptr(), _method_get_ring_sides_3905245786_name._native_ptr(), 3905245786)
        assert(CSGTorus3D._method_get_ring_sides_3905245786 != nil)
        let _method_set_material_2757459619_name = StringName(from: "set_material")
        self._method_set_material_2757459619 = self.interface.pointee.classdb_get_method_bind(__godot_name_CSGTorus3D._native_ptr(), _method_set_material_2757459619_name._native_ptr(), 2757459619)
        assert(CSGTorus3D._method_set_material_2757459619 != nil)
        let _method_get_material_5934680_name = StringName(from: "get_material")
        self._method_get_material_5934680 = self.interface.pointee.classdb_get_method_bind(__godot_name_CSGTorus3D._native_ptr(), _method_get_material_5934680_name._native_ptr(), 5934680)
        assert(CSGTorus3D._method_get_material_5934680 != nil)
        let _method_set_smooth_faces_2586408642_name = StringName(from: "set_smooth_faces")
        self._method_set_smooth_faces_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_CSGTorus3D._native_ptr(), _method_set_smooth_faces_2586408642_name._native_ptr(), 2586408642)
        assert(CSGTorus3D._method_set_smooth_faces_2586408642 != nil)
        let _method_get_smooth_faces_36873697_name = StringName(from: "get_smooth_faces")
        self._method_get_smooth_faces_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_CSGTorus3D._native_ptr(), _method_get_smooth_faces_36873697_name._native_ptr(), 36873697)
        assert(CSGTorus3D._method_get_smooth_faces_36873697 != nil)
    }

    public func set_inner_radius(radius: Float64)  {
        withUnsafePointer(to: radius) { radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radius_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_inner_radius_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_inner_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_inner_radius_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_outer_radius(radius: Float64)  {
        withUnsafePointer(to: radius) { radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radius_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_outer_radius_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_outer_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_outer_radius_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_sides(sides: Int64)  {
        withUnsafePointer(to: sides) { sides_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sides_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sides_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sides() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sides_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_ring_sides(sides: Int64)  {
        withUnsafePointer(to: sides) { sides_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sides_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ring_sides_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ring_sides() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ring_sides_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_material(material: Material)  {
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(material_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_material_2757459619,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_material() -> Material {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_material_5934680,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Material(godot: __resPtr.pointee)
    }
    public func set_smooth_faces(smooth_faces: UInt8)  {
        withUnsafePointer(to: smooth_faces) { smooth_faces_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(smooth_faces_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_smooth_faces_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_smooth_faces() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_smooth_faces_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}