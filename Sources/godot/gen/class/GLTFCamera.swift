import godot_native

fileprivate var __godot_name_GLTFCamera: StringName! = nil

/// MISSING
/// 
/// MISSING
public class GLTFCamera : Resource {

    

    public override class var __godot_name: StringName { __godot_name_GLTFCamera }

    static var _method_from_node_237784: GDExtensionMethodBindPtr! = nil
    static var _method_to_node_2285090890: GDExtensionMethodBindPtr! = nil
    static var _method_from_dictionary_2495512509: GDExtensionMethodBindPtr! = nil
    static var _method_to_dictionary_3102165223: GDExtensionMethodBindPtr! = nil
    static var _method_get_perspective_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_perspective_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_fov_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_fov_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_mag_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_size_mag_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_depth_far_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_depth_far_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_depth_near_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_depth_near_373806689: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GLTFCamera = StringName(from: "GLTFCamera")

        let _method_from_node_237784_name = StringName(from: "from_node")
        self._method_from_node_237784 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_from_node_237784_name._native_ptr(), 237784)
        assert(GLTFCamera._method_from_node_237784 != nil)
        let _method_to_node_2285090890_name = StringName(from: "to_node")
        self._method_to_node_2285090890 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_to_node_2285090890_name._native_ptr(), 2285090890)
        assert(GLTFCamera._method_to_node_2285090890 != nil)
        let _method_from_dictionary_2495512509_name = StringName(from: "from_dictionary")
        self._method_from_dictionary_2495512509 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_from_dictionary_2495512509_name._native_ptr(), 2495512509)
        assert(GLTFCamera._method_from_dictionary_2495512509 != nil)
        let _method_to_dictionary_3102165223_name = StringName(from: "to_dictionary")
        self._method_to_dictionary_3102165223 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_to_dictionary_3102165223_name._native_ptr(), 3102165223)
        assert(GLTFCamera._method_to_dictionary_3102165223 != nil)
        let _method_get_perspective_36873697_name = StringName(from: "get_perspective")
        self._method_get_perspective_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_perspective_36873697_name._native_ptr(), 36873697)
        assert(GLTFCamera._method_get_perspective_36873697 != nil)
        let _method_set_perspective_2586408642_name = StringName(from: "set_perspective")
        self._method_set_perspective_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_perspective_2586408642_name._native_ptr(), 2586408642)
        assert(GLTFCamera._method_set_perspective_2586408642 != nil)
        let _method_get_fov_1740695150_name = StringName(from: "get_fov")
        self._method_get_fov_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fov_1740695150_name._native_ptr(), 1740695150)
        assert(GLTFCamera._method_get_fov_1740695150 != nil)
        let _method_set_fov_373806689_name = StringName(from: "set_fov")
        self._method_set_fov_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fov_373806689_name._native_ptr(), 373806689)
        assert(GLTFCamera._method_set_fov_373806689 != nil)
        let _method_get_size_mag_1740695150_name = StringName(from: "get_size_mag")
        self._method_get_size_mag_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_size_mag_1740695150_name._native_ptr(), 1740695150)
        assert(GLTFCamera._method_get_size_mag_1740695150 != nil)
        let _method_set_size_mag_373806689_name = StringName(from: "set_size_mag")
        self._method_set_size_mag_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_size_mag_373806689_name._native_ptr(), 373806689)
        assert(GLTFCamera._method_set_size_mag_373806689 != nil)
        let _method_get_depth_far_1740695150_name = StringName(from: "get_depth_far")
        self._method_get_depth_far_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_depth_far_1740695150_name._native_ptr(), 1740695150)
        assert(GLTFCamera._method_get_depth_far_1740695150 != nil)
        let _method_set_depth_far_373806689_name = StringName(from: "set_depth_far")
        self._method_set_depth_far_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_depth_far_373806689_name._native_ptr(), 373806689)
        assert(GLTFCamera._method_set_depth_far_373806689 != nil)
        let _method_get_depth_near_1740695150_name = StringName(from: "get_depth_near")
        self._method_get_depth_near_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_depth_near_1740695150_name._native_ptr(), 1740695150)
        assert(GLTFCamera._method_get_depth_near_1740695150 != nil)
        let _method_set_depth_near_373806689_name = StringName(from: "set_depth_near")
        self._method_set_depth_near_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_depth_near_373806689_name._native_ptr(), 373806689)
        assert(GLTFCamera._method_set_depth_near_373806689 != nil)
    }

    public func from_node(camera_node: Camera3D) -> GLTFCamera {
        let camera_node_native = camera_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(camera_node_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_from_node_237784,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GLTFCamera(from: __resPtr.pointee)
    }
    public func to_node() -> Camera3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_to_node_2285090890,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Camera3D(from: __resPtr.pointee)
    }
    public func from_dictionary(dictionary: Dictionary) -> GLTFCamera {
        let dictionary_native = dictionary._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(dictionary_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_from_dictionary_2495512509,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GLTFCamera(from: __resPtr.pointee)
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
            return Dictionary(from: __resPtr.pointee)
    }
    public func get_perspective() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_perspective_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_perspective(perspective: UInt8)  {
        withUnsafePointer(to: perspective) { perspective_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(perspective_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_perspective_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_fov() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fov_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_fov(fov: Float64)  {
        withUnsafePointer(to: fov) { fov_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fov_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fov_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_size_mag() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_size_mag_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_size_mag(size_mag: Float64)  {
        withUnsafePointer(to: size_mag) { size_mag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_mag_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_size_mag_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_depth_far() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_depth_far_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_depth_far(zdepth_far: Float64)  {
        withUnsafePointer(to: zdepth_far) { zdepth_far_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(zdepth_far_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_depth_far_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_depth_near() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_depth_near_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_depth_near(zdepth_near: Float64)  {
        withUnsafePointer(to: zdepth_near) { zdepth_near_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(zdepth_near_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_depth_near_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}