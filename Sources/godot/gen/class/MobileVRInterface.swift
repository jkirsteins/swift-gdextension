import godot_native

fileprivate var __godot_name_MobileVRInterface: StringName! = nil

/// MISSING
/// 
/// MISSING
open class MobileVRInterface : XRInterface {

    

    public override class var __godot_name: StringName { __godot_name_MobileVRInterface }

    static var _method_set_eye_height_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_eye_height_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_iod_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_iod_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_display_width_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_display_width_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_display_to_lens_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_display_to_lens_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_oversample_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_oversample_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_k1_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_k1_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_k2_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_k2_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_MobileVRInterface = StringName(from: "MobileVRInterface")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_eye_height_373806689_name = StringName(from: "set_eye_height")
        self._method_set_eye_height_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_MobileVRInterface._native_ptr(), _method_set_eye_height_373806689_name._native_ptr(), 373806689)
        assert(MobileVRInterface._method_set_eye_height_373806689 != nil)
        let _method_get_eye_height_1740695150_name = StringName(from: "get_eye_height")
        self._method_get_eye_height_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_MobileVRInterface._native_ptr(), _method_get_eye_height_1740695150_name._native_ptr(), 1740695150)
        assert(MobileVRInterface._method_get_eye_height_1740695150 != nil)
        let _method_set_iod_373806689_name = StringName(from: "set_iod")
        self._method_set_iod_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_MobileVRInterface._native_ptr(), _method_set_iod_373806689_name._native_ptr(), 373806689)
        assert(MobileVRInterface._method_set_iod_373806689 != nil)
        let _method_get_iod_1740695150_name = StringName(from: "get_iod")
        self._method_get_iod_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_MobileVRInterface._native_ptr(), _method_get_iod_1740695150_name._native_ptr(), 1740695150)
        assert(MobileVRInterface._method_get_iod_1740695150 != nil)
        let _method_set_display_width_373806689_name = StringName(from: "set_display_width")
        self._method_set_display_width_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_MobileVRInterface._native_ptr(), _method_set_display_width_373806689_name._native_ptr(), 373806689)
        assert(MobileVRInterface._method_set_display_width_373806689 != nil)
        let _method_get_display_width_1740695150_name = StringName(from: "get_display_width")
        self._method_get_display_width_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_MobileVRInterface._native_ptr(), _method_get_display_width_1740695150_name._native_ptr(), 1740695150)
        assert(MobileVRInterface._method_get_display_width_1740695150 != nil)
        let _method_set_display_to_lens_373806689_name = StringName(from: "set_display_to_lens")
        self._method_set_display_to_lens_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_MobileVRInterface._native_ptr(), _method_set_display_to_lens_373806689_name._native_ptr(), 373806689)
        assert(MobileVRInterface._method_set_display_to_lens_373806689 != nil)
        let _method_get_display_to_lens_1740695150_name = StringName(from: "get_display_to_lens")
        self._method_get_display_to_lens_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_MobileVRInterface._native_ptr(), _method_get_display_to_lens_1740695150_name._native_ptr(), 1740695150)
        assert(MobileVRInterface._method_get_display_to_lens_1740695150 != nil)
        let _method_set_oversample_373806689_name = StringName(from: "set_oversample")
        self._method_set_oversample_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_MobileVRInterface._native_ptr(), _method_set_oversample_373806689_name._native_ptr(), 373806689)
        assert(MobileVRInterface._method_set_oversample_373806689 != nil)
        let _method_get_oversample_1740695150_name = StringName(from: "get_oversample")
        self._method_get_oversample_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_MobileVRInterface._native_ptr(), _method_get_oversample_1740695150_name._native_ptr(), 1740695150)
        assert(MobileVRInterface._method_get_oversample_1740695150 != nil)
        let _method_set_k1_373806689_name = StringName(from: "set_k1")
        self._method_set_k1_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_MobileVRInterface._native_ptr(), _method_set_k1_373806689_name._native_ptr(), 373806689)
        assert(MobileVRInterface._method_set_k1_373806689 != nil)
        let _method_get_k1_1740695150_name = StringName(from: "get_k1")
        self._method_get_k1_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_MobileVRInterface._native_ptr(), _method_get_k1_1740695150_name._native_ptr(), 1740695150)
        assert(MobileVRInterface._method_get_k1_1740695150 != nil)
        let _method_set_k2_373806689_name = StringName(from: "set_k2")
        self._method_set_k2_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_MobileVRInterface._native_ptr(), _method_set_k2_373806689_name._native_ptr(), 373806689)
        assert(MobileVRInterface._method_set_k2_373806689 != nil)
        let _method_get_k2_1740695150_name = StringName(from: "get_k2")
        self._method_get_k2_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_MobileVRInterface._native_ptr(), _method_get_k2_1740695150_name._native_ptr(), 1740695150)
        assert(MobileVRInterface._method_get_k2_1740695150 != nil)
    }

    public func set_eye_height(eye_height: Float64)  {
        withUnsafePointer(to: eye_height) { eye_height_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(eye_height_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_eye_height_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_eye_height() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_eye_height_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_iod(iod: Float64)  {
        withUnsafePointer(to: iod) { iod_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(iod_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_iod_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_iod() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_iod_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_display_width(display_width: Float64)  {
        withUnsafePointer(to: display_width) { display_width_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(display_width_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_display_width_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_display_width() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_display_width_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_display_to_lens(display_to_lens: Float64)  {
        withUnsafePointer(to: display_to_lens) { display_to_lens_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(display_to_lens_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_display_to_lens_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_display_to_lens() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_display_to_lens_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_oversample(oversample: Float64)  {
        withUnsafePointer(to: oversample) { oversample_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(oversample_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_oversample_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_oversample() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_oversample_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_k1(k: Float64)  {
        withUnsafePointer(to: k) { k_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(k_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_k1_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_k1() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_k1_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_k2(k: Float64)  {
        withUnsafePointer(to: k) { k_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(k_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_k2_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_k2() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_k2_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
}