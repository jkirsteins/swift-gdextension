import godot_native

fileprivate var __godot_name_GLTFSpecGloss: StringName! = nil

/// MISSING
/// 
/// MISSING
open class GLTFSpecGloss : Resource {

    

    public override class var __godot_name: StringName { __godot_name_GLTFSpecGloss }

    static var _method_get_diffuse_img_564927088: StringName! = nil
    static var _method_set_diffuse_img_532598488: StringName! = nil
    static var _method_get_diffuse_factor_3200896285: StringName! = nil
    static var _method_set_diffuse_factor_2920490490: StringName! = nil
    static var _method_get_gloss_factor_191475506: StringName! = nil
    static var _method_set_gloss_factor_373806689: StringName! = nil
    static var _method_get_specular_factor_3200896285: StringName! = nil
    static var _method_set_specular_factor_2920490490: StringName! = nil
    static var _method_get_spec_gloss_img_564927088: StringName! = nil
    static var _method_set_spec_gloss_img_532598488: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_GLTFSpecGloss == nil)
        __godot_name_GLTFSpecGloss = StringName(from: "GLTFSpecGloss")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_diffuse_img_564927088 = StringName(from: "get_diffuse_img")
        assert(self._method_get_diffuse_img_564927088 != nil)
        self._method_set_diffuse_img_532598488 = StringName(from: "set_diffuse_img")
        assert(self._method_set_diffuse_img_532598488 != nil)
        self._method_get_diffuse_factor_3200896285 = StringName(from: "get_diffuse_factor")
        assert(self._method_get_diffuse_factor_3200896285 != nil)
        self._method_set_diffuse_factor_2920490490 = StringName(from: "set_diffuse_factor")
        assert(self._method_set_diffuse_factor_2920490490 != nil)
        self._method_get_gloss_factor_191475506 = StringName(from: "get_gloss_factor")
        assert(self._method_get_gloss_factor_191475506 != nil)
        self._method_set_gloss_factor_373806689 = StringName(from: "set_gloss_factor")
        assert(self._method_set_gloss_factor_373806689 != nil)
        self._method_get_specular_factor_3200896285 = StringName(from: "get_specular_factor")
        assert(self._method_get_specular_factor_3200896285 != nil)
        self._method_set_specular_factor_2920490490 = StringName(from: "set_specular_factor")
        assert(self._method_set_specular_factor_2920490490 != nil)
        self._method_get_spec_gloss_img_564927088 = StringName(from: "get_spec_gloss_img")
        assert(self._method_get_spec_gloss_img_564927088 != nil)
        self._method_set_spec_gloss_img_532598488 = StringName(from: "set_spec_gloss_img")
        assert(self._method_set_spec_gloss_img_532598488 != nil)
    }

    public func get_diffuse_img() -> Image {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_diffuse_img_564927088._native_ptr(),
                    564927088)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image(godot: __resPtr.pointee)
    }
    public func set_diffuse_img(diffuse_img: Image)  {
        let diffuse_img_native = diffuse_img._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(diffuse_img_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_diffuse_img_532598488._native_ptr(),
                    532598488)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_diffuse_factor() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_diffuse_factor_3200896285._native_ptr(),
                    3200896285)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_diffuse_factor(diffuse_factor: Color)  {
        let diffuse_factor_native = diffuse_factor._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(diffuse_factor_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_diffuse_factor_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_gloss_factor() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_gloss_factor_191475506._native_ptr(),
                    191475506)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_gloss_factor(gloss_factor: Float64)  {
        withUnsafePointer(to: gloss_factor) { gloss_factor_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gloss_factor_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_gloss_factor_373806689._native_ptr(),
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
    public func get_specular_factor() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_specular_factor_3200896285._native_ptr(),
                    3200896285)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_specular_factor(specular_factor: Color)  {
        let specular_factor_native = specular_factor._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(specular_factor_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_specular_factor_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_spec_gloss_img() -> Image {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_spec_gloss_img_564927088._native_ptr(),
                    564927088)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image(godot: __resPtr.pointee)
    }
    public func set_spec_gloss_img(spec_gloss_img: Image)  {
        let spec_gloss_img_native = spec_gloss_img._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(spec_gloss_img_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_spec_gloss_img_532598488._native_ptr(),
                    532598488)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}