import godot_native

fileprivate var __godot_name_GLTFLight: StringName! = nil

/// MISSING
/// 
/// MISSING
open class GLTFLight : Resource {

    

    public override class var __godot_name: StringName { __godot_name_GLTFLight }

    static var _method_from_node_3907677874: GDExtensionMethodBindPtr! = nil
    static var _method_to_node_2040811672: GDExtensionMethodBindPtr! = nil
    static var _method_from_dictionary_4057087208: GDExtensionMethodBindPtr! = nil
    static var _method_to_dictionary_3102165223: GDExtensionMethodBindPtr! = nil
    static var _method_get_color_3200896285: GDExtensionMethodBindPtr! = nil
    static var _method_set_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_intensity_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_set_intensity_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_light_type_2841200299: GDExtensionMethodBindPtr! = nil
    static var _method_set_light_type_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_range_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_set_range_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_inner_cone_angle_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_set_inner_cone_angle_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_outer_cone_angle_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_set_outer_cone_angle_373806689: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_GLTFLight = StringName(from: "GLTFLight")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_from_node_3907677874_name = StringName(from: "from_node")
        self._method_from_node_3907677874 = self.interface.pointee.classdb_get_method_bind(__godot_name_GLTFLight._native_ptr(), _method_from_node_3907677874_name._native_ptr(), 3907677874)
        assert(GLTFLight._method_from_node_3907677874 != nil)
        let _method_to_node_2040811672_name = StringName(from: "to_node")
        self._method_to_node_2040811672 = self.interface.pointee.classdb_get_method_bind(__godot_name_GLTFLight._native_ptr(), _method_to_node_2040811672_name._native_ptr(), 2040811672)
        assert(GLTFLight._method_to_node_2040811672 != nil)
        let _method_from_dictionary_4057087208_name = StringName(from: "from_dictionary")
        self._method_from_dictionary_4057087208 = self.interface.pointee.classdb_get_method_bind(__godot_name_GLTFLight._native_ptr(), _method_from_dictionary_4057087208_name._native_ptr(), 4057087208)
        assert(GLTFLight._method_from_dictionary_4057087208 != nil)
        let _method_to_dictionary_3102165223_name = StringName(from: "to_dictionary")
        self._method_to_dictionary_3102165223 = self.interface.pointee.classdb_get_method_bind(__godot_name_GLTFLight._native_ptr(), _method_to_dictionary_3102165223_name._native_ptr(), 3102165223)
        assert(GLTFLight._method_to_dictionary_3102165223 != nil)
        let _method_get_color_3200896285_name = StringName(from: "get_color")
        self._method_get_color_3200896285 = self.interface.pointee.classdb_get_method_bind(__godot_name_GLTFLight._native_ptr(), _method_get_color_3200896285_name._native_ptr(), 3200896285)
        assert(GLTFLight._method_get_color_3200896285 != nil)
        let _method_set_color_2920490490_name = StringName(from: "set_color")
        self._method_set_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_GLTFLight._native_ptr(), _method_set_color_2920490490_name._native_ptr(), 2920490490)
        assert(GLTFLight._method_set_color_2920490490 != nil)
        let _method_get_intensity_191475506_name = StringName(from: "get_intensity")
        self._method_get_intensity_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name_GLTFLight._native_ptr(), _method_get_intensity_191475506_name._native_ptr(), 191475506)
        assert(GLTFLight._method_get_intensity_191475506 != nil)
        let _method_set_intensity_373806689_name = StringName(from: "set_intensity")
        self._method_set_intensity_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GLTFLight._native_ptr(), _method_set_intensity_373806689_name._native_ptr(), 373806689)
        assert(GLTFLight._method_set_intensity_373806689 != nil)
        let _method_get_light_type_2841200299_name = StringName(from: "get_light_type")
        self._method_get_light_type_2841200299 = self.interface.pointee.classdb_get_method_bind(__godot_name_GLTFLight._native_ptr(), _method_get_light_type_2841200299_name._native_ptr(), 2841200299)
        assert(GLTFLight._method_get_light_type_2841200299 != nil)
        let _method_set_light_type_83702148_name = StringName(from: "set_light_type")
        self._method_set_light_type_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_GLTFLight._native_ptr(), _method_set_light_type_83702148_name._native_ptr(), 83702148)
        assert(GLTFLight._method_set_light_type_83702148 != nil)
        let _method_get_range_191475506_name = StringName(from: "get_range")
        self._method_get_range_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name_GLTFLight._native_ptr(), _method_get_range_191475506_name._native_ptr(), 191475506)
        assert(GLTFLight._method_get_range_191475506 != nil)
        let _method_set_range_373806689_name = StringName(from: "set_range")
        self._method_set_range_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GLTFLight._native_ptr(), _method_set_range_373806689_name._native_ptr(), 373806689)
        assert(GLTFLight._method_set_range_373806689 != nil)
        let _method_get_inner_cone_angle_191475506_name = StringName(from: "get_inner_cone_angle")
        self._method_get_inner_cone_angle_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name_GLTFLight._native_ptr(), _method_get_inner_cone_angle_191475506_name._native_ptr(), 191475506)
        assert(GLTFLight._method_get_inner_cone_angle_191475506 != nil)
        let _method_set_inner_cone_angle_373806689_name = StringName(from: "set_inner_cone_angle")
        self._method_set_inner_cone_angle_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GLTFLight._native_ptr(), _method_set_inner_cone_angle_373806689_name._native_ptr(), 373806689)
        assert(GLTFLight._method_set_inner_cone_angle_373806689 != nil)
        let _method_get_outer_cone_angle_191475506_name = StringName(from: "get_outer_cone_angle")
        self._method_get_outer_cone_angle_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name_GLTFLight._native_ptr(), _method_get_outer_cone_angle_191475506_name._native_ptr(), 191475506)
        assert(GLTFLight._method_get_outer_cone_angle_191475506 != nil)
        let _method_set_outer_cone_angle_373806689_name = StringName(from: "set_outer_cone_angle")
        self._method_set_outer_cone_angle_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GLTFLight._native_ptr(), _method_set_outer_cone_angle_373806689_name._native_ptr(), 373806689)
        assert(GLTFLight._method_set_outer_cone_angle_373806689 != nil)
    }

    public func from_node(light_node: Light3D) -> GLTFLight {
        let light_node_native = light_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_node_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_from_node_3907677874,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GLTFLight(godot: __resPtr.pointee)
    }
    public func to_node() -> Light3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_to_node_2040811672,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Light3D(godot: __resPtr.pointee)
    }
    public func from_dictionary(dictionary: Dictionary) -> GLTFLight {
        let dictionary_native = dictionary._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(dictionary_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_from_dictionary_4057087208,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GLTFLight(godot: __resPtr.pointee)
    }
    public func to_dictionary() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_to_dictionary_3102165223,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func get_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_color_3200896285,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_intensity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_intensity_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_intensity(intensity: Float64)  {
        withUnsafePointer(to: intensity) { intensity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(intensity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_intensity_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_light_type() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_light_type_2841200299,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_light_type(light_type: godot.String)  {
        let light_type_native = light_type._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_light_type_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_range() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_range_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_range(range: Float64)  {
        withUnsafePointer(to: range) { range_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(range_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_range_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_inner_cone_angle() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_inner_cone_angle_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_inner_cone_angle(inner_cone_angle: Float64)  {
        withUnsafePointer(to: inner_cone_angle) { inner_cone_angle_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(inner_cone_angle_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_inner_cone_angle_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_outer_cone_angle() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_outer_cone_angle_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_outer_cone_angle(outer_cone_angle: Float64)  {
        withUnsafePointer(to: outer_cone_angle) { outer_cone_angle_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(outer_cone_angle_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_outer_cone_angle_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}