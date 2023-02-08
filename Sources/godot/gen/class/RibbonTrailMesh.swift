import godot_native

fileprivate var __godot_name_RibbonTrailMesh: StringName! = nil

/// 
/// 
/// 
open class RibbonTrailMesh : PrimitiveMesh {

    public enum Shape : Int32 {
        case SHAPE_FLAT = 0
        case SHAPE_CROSS = 1
    }

    public override class var __godot_name: StringName { __godot_name_RibbonTrailMesh }

    static var _method_set_size_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_sections_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_sections_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_section_length_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_section_length_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_section_segments_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_section_segments_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_curve_270443179: GDExtensionMethodBindPtr! = nil
    static var _method_get_curve_2460114913: GDExtensionMethodBindPtr! = nil
    static var _method_set_shape_1684440262: GDExtensionMethodBindPtr! = nil
    static var _method_get_shape_1317484155: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_RibbonTrailMesh = StringName(from: "RibbonTrailMesh")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_size_373806689_name = StringName(from: "set_size")
        self._method_set_size_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_RibbonTrailMesh._native_ptr(), _method_set_size_373806689_name._native_ptr(), 373806689)
        assert(RibbonTrailMesh._method_set_size_373806689 != nil)
        let _method_get_size_1740695150_name = StringName(from: "get_size")
        self._method_get_size_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_RibbonTrailMesh._native_ptr(), _method_get_size_1740695150_name._native_ptr(), 1740695150)
        assert(RibbonTrailMesh._method_get_size_1740695150 != nil)
        let _method_set_sections_1286410249_name = StringName(from: "set_sections")
        self._method_set_sections_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_RibbonTrailMesh._native_ptr(), _method_set_sections_1286410249_name._native_ptr(), 1286410249)
        assert(RibbonTrailMesh._method_set_sections_1286410249 != nil)
        let _method_get_sections_3905245786_name = StringName(from: "get_sections")
        self._method_get_sections_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_RibbonTrailMesh._native_ptr(), _method_get_sections_3905245786_name._native_ptr(), 3905245786)
        assert(RibbonTrailMesh._method_get_sections_3905245786 != nil)
        let _method_set_section_length_373806689_name = StringName(from: "set_section_length")
        self._method_set_section_length_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_RibbonTrailMesh._native_ptr(), _method_set_section_length_373806689_name._native_ptr(), 373806689)
        assert(RibbonTrailMesh._method_set_section_length_373806689 != nil)
        let _method_get_section_length_1740695150_name = StringName(from: "get_section_length")
        self._method_get_section_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_RibbonTrailMesh._native_ptr(), _method_get_section_length_1740695150_name._native_ptr(), 1740695150)
        assert(RibbonTrailMesh._method_get_section_length_1740695150 != nil)
        let _method_set_section_segments_1286410249_name = StringName(from: "set_section_segments")
        self._method_set_section_segments_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_RibbonTrailMesh._native_ptr(), _method_set_section_segments_1286410249_name._native_ptr(), 1286410249)
        assert(RibbonTrailMesh._method_set_section_segments_1286410249 != nil)
        let _method_get_section_segments_3905245786_name = StringName(from: "get_section_segments")
        self._method_get_section_segments_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_RibbonTrailMesh._native_ptr(), _method_get_section_segments_3905245786_name._native_ptr(), 3905245786)
        assert(RibbonTrailMesh._method_get_section_segments_3905245786 != nil)
        let _method_set_curve_270443179_name = StringName(from: "set_curve")
        self._method_set_curve_270443179 = self.interface.pointee.classdb_get_method_bind(__godot_name_RibbonTrailMesh._native_ptr(), _method_set_curve_270443179_name._native_ptr(), 270443179)
        assert(RibbonTrailMesh._method_set_curve_270443179 != nil)
        let _method_get_curve_2460114913_name = StringName(from: "get_curve")
        self._method_get_curve_2460114913 = self.interface.pointee.classdb_get_method_bind(__godot_name_RibbonTrailMesh._native_ptr(), _method_get_curve_2460114913_name._native_ptr(), 2460114913)
        assert(RibbonTrailMesh._method_get_curve_2460114913 != nil)
        let _method_set_shape_1684440262_name = StringName(from: "set_shape")
        self._method_set_shape_1684440262 = self.interface.pointee.classdb_get_method_bind(__godot_name_RibbonTrailMesh._native_ptr(), _method_set_shape_1684440262_name._native_ptr(), 1684440262)
        assert(RibbonTrailMesh._method_set_shape_1684440262 != nil)
        let _method_get_shape_1317484155_name = StringName(from: "get_shape")
        self._method_get_shape_1317484155 = self.interface.pointee.classdb_get_method_bind(__godot_name_RibbonTrailMesh._native_ptr(), _method_get_shape_1317484155_name._native_ptr(), 1317484155)
        assert(RibbonTrailMesh._method_get_shape_1317484155 != nil)
    }

    public func set_size(size: Float64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_size_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_size() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_size_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
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
            return Int64(godot: __resPtr.pointee)
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
            return Float64(godot: __resPtr.pointee)
    }
    public func set_section_segments(section_segments: Int64)  {
        withUnsafePointer(to: section_segments) { section_segments_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(section_segments_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_section_segments_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_section_segments() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_section_segments_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            return Curve(godot: __resPtr.pointee)
    }
    public func set_shape(shape: RibbonTrailMesh.Shape)  {
        withUnsafePointer(to: shape.rawValue) { shape_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shape_1684440262,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_shape() -> RibbonTrailMesh.Shape {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shape_1317484155,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RibbonTrailMesh.Shape(godot: __resPtr.pointee)
    }
}