import godot_native

fileprivate var __godot_name_GLTFSpecGloss: StringName! = nil

/// MISSING
/// 
/// MISSING
public class GLTFSpecGloss : Resource {

    

    public override class var __godot_name: StringName { __godot_name_GLTFSpecGloss }

    static var _method_get_diffuse_img_564927088: GDExtensionMethodBindPtr! = nil
    static var _method_set_diffuse_img_532598488: GDExtensionMethodBindPtr! = nil
    static var _method_get_diffuse_factor_3200896285: GDExtensionMethodBindPtr! = nil
    static var _method_set_diffuse_factor_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_gloss_factor_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_set_gloss_factor_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_specular_factor_3200896285: GDExtensionMethodBindPtr! = nil
    static var _method_set_specular_factor_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_spec_gloss_img_564927088: GDExtensionMethodBindPtr! = nil
    static var _method_set_spec_gloss_img_532598488: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GLTFSpecGloss = StringName(from: "GLTFSpecGloss")

        let _method_get_diffuse_img_564927088_name = StringName(from: "get_diffuse_img")
        self._method_get_diffuse_img_564927088 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_diffuse_img_564927088_name._native_ptr(), 564927088)
        assert(GLTFSpecGloss._method_get_diffuse_img_564927088 != nil)
        let _method_set_diffuse_img_532598488_name = StringName(from: "set_diffuse_img")
        self._method_set_diffuse_img_532598488 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_diffuse_img_532598488_name._native_ptr(), 532598488)
        assert(GLTFSpecGloss._method_set_diffuse_img_532598488 != nil)
        let _method_get_diffuse_factor_3200896285_name = StringName(from: "get_diffuse_factor")
        self._method_get_diffuse_factor_3200896285 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_diffuse_factor_3200896285_name._native_ptr(), 3200896285)
        assert(GLTFSpecGloss._method_get_diffuse_factor_3200896285 != nil)
        let _method_set_diffuse_factor_2920490490_name = StringName(from: "set_diffuse_factor")
        self._method_set_diffuse_factor_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_diffuse_factor_2920490490_name._native_ptr(), 2920490490)
        assert(GLTFSpecGloss._method_set_diffuse_factor_2920490490 != nil)
        let _method_get_gloss_factor_191475506_name = StringName(from: "get_gloss_factor")
        self._method_get_gloss_factor_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gloss_factor_191475506_name._native_ptr(), 191475506)
        assert(GLTFSpecGloss._method_get_gloss_factor_191475506 != nil)
        let _method_set_gloss_factor_373806689_name = StringName(from: "set_gloss_factor")
        self._method_set_gloss_factor_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gloss_factor_373806689_name._native_ptr(), 373806689)
        assert(GLTFSpecGloss._method_set_gloss_factor_373806689 != nil)
        let _method_get_specular_factor_3200896285_name = StringName(from: "get_specular_factor")
        self._method_get_specular_factor_3200896285 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_specular_factor_3200896285_name._native_ptr(), 3200896285)
        assert(GLTFSpecGloss._method_get_specular_factor_3200896285 != nil)
        let _method_set_specular_factor_2920490490_name = StringName(from: "set_specular_factor")
        self._method_set_specular_factor_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_specular_factor_2920490490_name._native_ptr(), 2920490490)
        assert(GLTFSpecGloss._method_set_specular_factor_2920490490 != nil)
        let _method_get_spec_gloss_img_564927088_name = StringName(from: "get_spec_gloss_img")
        self._method_get_spec_gloss_img_564927088 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_spec_gloss_img_564927088_name._native_ptr(), 564927088)
        assert(GLTFSpecGloss._method_get_spec_gloss_img_564927088 != nil)
        let _method_set_spec_gloss_img_532598488_name = StringName(from: "set_spec_gloss_img")
        self._method_set_spec_gloss_img_532598488 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_spec_gloss_img_532598488_name._native_ptr(), 532598488)
        assert(GLTFSpecGloss._method_set_spec_gloss_img_532598488 != nil)
    }

    public func get_diffuse_img() -> Image {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_diffuse_img_564927088,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image(from: __resPtr.pointee)
    }
    public func set_diffuse_img(diffuse_img: Image)  {
        let diffuse_img_native = diffuse_img._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(diffuse_img_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_diffuse_img_532598488,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_diffuse_factor_3200896285,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_diffuse_factor(diffuse_factor: Color)  {
        let diffuse_factor_native = diffuse_factor._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(diffuse_factor_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_diffuse_factor_2920490490,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gloss_factor_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_gloss_factor(gloss_factor: Float64)  {
        withUnsafePointer(to: gloss_factor) { gloss_factor_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gloss_factor_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gloss_factor_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_specular_factor_3200896285,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_specular_factor(specular_factor: Color)  {
        let specular_factor_native = specular_factor._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(specular_factor_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_specular_factor_2920490490,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_spec_gloss_img_564927088,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image(from: __resPtr.pointee)
    }
    public func set_spec_gloss_img(spec_gloss_img: Image)  {
        let spec_gloss_img_native = spec_gloss_img._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(spec_gloss_img_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_spec_gloss_img_532598488,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}