import godot_native

fileprivate var __godot_name_TextureProgressBar: StringName! = nil

/// Texture-based progress bar. Useful for loading screens and life or stamina bars.
/// 
/// TextureProgressBar works like [ProgressBar], but uses up to 3 textures instead of Godot's [Theme] resource. It can be used to create horizontal, vertical and radial progress bars.
public class TextureProgressBar : Range {

    public enum FillMode : Int32 {
        case FILL_LEFT_TO_RIGHT = 0
        case FILL_RIGHT_TO_LEFT = 1
        case FILL_TOP_TO_BOTTOM = 2
        case FILL_BOTTOM_TO_TOP = 3
        case FILL_CLOCKWISE = 4
        case FILL_COUNTER_CLOCKWISE = 5
        case FILL_BILINEAR_LEFT_AND_RIGHT = 6
        case FILL_BILINEAR_TOP_AND_BOTTOM = 7
        case FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE = 8
    }

    public override class var __godot_name: StringName { __godot_name_TextureProgressBar }

    static var _method_set_under_texture_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_under_texture_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_set_progress_texture_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_progress_texture_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_set_over_texture_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_over_texture_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_set_fill_mode_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_fill_mode_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_set_tint_under_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_tint_under_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_tint_progress_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_tint_progress_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_tint_over_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_tint_over_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_progress_offset_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_progress_offset_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_radial_initial_angle_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_radial_initial_angle_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_set_radial_center_offset_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_radial_center_offset_1497962370: GDExtensionMethodBindPtr! = nil
    static var _method_set_fill_degrees_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_fill_degrees_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_set_stretch_margin_437707142: GDExtensionMethodBindPtr! = nil
    static var _method_get_stretch_margin_1983885014: GDExtensionMethodBindPtr! = nil
    static var _method_set_nine_patch_stretch_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_nine_patch_stretch_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_TextureProgressBar = StringName(from: "TextureProgressBar")

        let _method_set_under_texture_4051416890_name = StringName(from: "set_under_texture")
        self._method_set_under_texture_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_under_texture_4051416890_name._native_ptr(), 4051416890)
        assert(TextureProgressBar._method_set_under_texture_4051416890 != nil)
        let _method_get_under_texture_3635182373_name = StringName(from: "get_under_texture")
        self._method_get_under_texture_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_under_texture_3635182373_name._native_ptr(), 3635182373)
        assert(TextureProgressBar._method_get_under_texture_3635182373 != nil)
        let _method_set_progress_texture_4051416890_name = StringName(from: "set_progress_texture")
        self._method_set_progress_texture_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_progress_texture_4051416890_name._native_ptr(), 4051416890)
        assert(TextureProgressBar._method_set_progress_texture_4051416890 != nil)
        let _method_get_progress_texture_3635182373_name = StringName(from: "get_progress_texture")
        self._method_get_progress_texture_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_progress_texture_3635182373_name._native_ptr(), 3635182373)
        assert(TextureProgressBar._method_get_progress_texture_3635182373 != nil)
        let _method_set_over_texture_4051416890_name = StringName(from: "set_over_texture")
        self._method_set_over_texture_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_over_texture_4051416890_name._native_ptr(), 4051416890)
        assert(TextureProgressBar._method_set_over_texture_4051416890 != nil)
        let _method_get_over_texture_3635182373_name = StringName(from: "get_over_texture")
        self._method_get_over_texture_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_over_texture_3635182373_name._native_ptr(), 3635182373)
        assert(TextureProgressBar._method_get_over_texture_3635182373 != nil)
        let _method_set_fill_mode_1286410249_name = StringName(from: "set_fill_mode")
        self._method_set_fill_mode_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fill_mode_1286410249_name._native_ptr(), 1286410249)
        assert(TextureProgressBar._method_set_fill_mode_1286410249 != nil)
        let _method_get_fill_mode_2455072627_name = StringName(from: "get_fill_mode")
        self._method_get_fill_mode_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fill_mode_2455072627_name._native_ptr(), 2455072627)
        assert(TextureProgressBar._method_get_fill_mode_2455072627 != nil)
        let _method_set_tint_under_2920490490_name = StringName(from: "set_tint_under")
        self._method_set_tint_under_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tint_under_2920490490_name._native_ptr(), 2920490490)
        assert(TextureProgressBar._method_set_tint_under_2920490490 != nil)
        let _method_get_tint_under_3444240500_name = StringName(from: "get_tint_under")
        self._method_get_tint_under_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tint_under_3444240500_name._native_ptr(), 3444240500)
        assert(TextureProgressBar._method_get_tint_under_3444240500 != nil)
        let _method_set_tint_progress_2920490490_name = StringName(from: "set_tint_progress")
        self._method_set_tint_progress_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tint_progress_2920490490_name._native_ptr(), 2920490490)
        assert(TextureProgressBar._method_set_tint_progress_2920490490 != nil)
        let _method_get_tint_progress_3444240500_name = StringName(from: "get_tint_progress")
        self._method_get_tint_progress_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tint_progress_3444240500_name._native_ptr(), 3444240500)
        assert(TextureProgressBar._method_get_tint_progress_3444240500 != nil)
        let _method_set_tint_over_2920490490_name = StringName(from: "set_tint_over")
        self._method_set_tint_over_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tint_over_2920490490_name._native_ptr(), 2920490490)
        assert(TextureProgressBar._method_set_tint_over_2920490490 != nil)
        let _method_get_tint_over_3444240500_name = StringName(from: "get_tint_over")
        self._method_get_tint_over_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tint_over_3444240500_name._native_ptr(), 3444240500)
        assert(TextureProgressBar._method_get_tint_over_3444240500 != nil)
        let _method_set_texture_progress_offset_743155724_name = StringName(from: "set_texture_progress_offset")
        self._method_set_texture_progress_offset_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_progress_offset_743155724_name._native_ptr(), 743155724)
        assert(TextureProgressBar._method_set_texture_progress_offset_743155724 != nil)
        let _method_get_texture_progress_offset_3341600327_name = StringName(from: "get_texture_progress_offset")
        self._method_get_texture_progress_offset_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_progress_offset_3341600327_name._native_ptr(), 3341600327)
        assert(TextureProgressBar._method_get_texture_progress_offset_3341600327 != nil)
        let _method_set_radial_initial_angle_373806689_name = StringName(from: "set_radial_initial_angle")
        self._method_set_radial_initial_angle_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_radial_initial_angle_373806689_name._native_ptr(), 373806689)
        assert(TextureProgressBar._method_set_radial_initial_angle_373806689 != nil)
        let _method_get_radial_initial_angle_191475506_name = StringName(from: "get_radial_initial_angle")
        self._method_get_radial_initial_angle_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_radial_initial_angle_191475506_name._native_ptr(), 191475506)
        assert(TextureProgressBar._method_get_radial_initial_angle_191475506 != nil)
        let _method_set_radial_center_offset_743155724_name = StringName(from: "set_radial_center_offset")
        self._method_set_radial_center_offset_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_radial_center_offset_743155724_name._native_ptr(), 743155724)
        assert(TextureProgressBar._method_set_radial_center_offset_743155724 != nil)
        let _method_get_radial_center_offset_1497962370_name = StringName(from: "get_radial_center_offset")
        self._method_get_radial_center_offset_1497962370 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_radial_center_offset_1497962370_name._native_ptr(), 1497962370)
        assert(TextureProgressBar._method_get_radial_center_offset_1497962370 != nil)
        let _method_set_fill_degrees_373806689_name = StringName(from: "set_fill_degrees")
        self._method_set_fill_degrees_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fill_degrees_373806689_name._native_ptr(), 373806689)
        assert(TextureProgressBar._method_set_fill_degrees_373806689 != nil)
        let _method_get_fill_degrees_191475506_name = StringName(from: "get_fill_degrees")
        self._method_get_fill_degrees_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fill_degrees_191475506_name._native_ptr(), 191475506)
        assert(TextureProgressBar._method_get_fill_degrees_191475506 != nil)
        let _method_set_stretch_margin_437707142_name = StringName(from: "set_stretch_margin")
        self._method_set_stretch_margin_437707142 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_stretch_margin_437707142_name._native_ptr(), 437707142)
        assert(TextureProgressBar._method_set_stretch_margin_437707142 != nil)
        let _method_get_stretch_margin_1983885014_name = StringName(from: "get_stretch_margin")
        self._method_get_stretch_margin_1983885014 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_stretch_margin_1983885014_name._native_ptr(), 1983885014)
        assert(TextureProgressBar._method_get_stretch_margin_1983885014 != nil)
        let _method_set_nine_patch_stretch_2586408642_name = StringName(from: "set_nine_patch_stretch")
        self._method_set_nine_patch_stretch_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_nine_patch_stretch_2586408642_name._native_ptr(), 2586408642)
        assert(TextureProgressBar._method_set_nine_patch_stretch_2586408642 != nil)
        let _method_get_nine_patch_stretch_36873697_name = StringName(from: "get_nine_patch_stretch")
        self._method_get_nine_patch_stretch_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_nine_patch_stretch_36873697_name._native_ptr(), 36873697)
        assert(TextureProgressBar._method_get_nine_patch_stretch_36873697 != nil)
    }

    public func set_under_texture(tex: Texture2D)  {
        let tex_native = tex._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tex_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_under_texture_4051416890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_under_texture() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_under_texture_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
    }
    public func set_progress_texture(tex: Texture2D)  {
        let tex_native = tex._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tex_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_progress_texture_4051416890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_progress_texture() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_progress_texture_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
    }
    public func set_over_texture(tex: Texture2D)  {
        let tex_native = tex._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tex_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_over_texture_4051416890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_over_texture() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_over_texture_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
    }
    public func set_fill_mode(mode: Int64)  {
        withUnsafePointer(to: mode) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fill_mode_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_fill_mode() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fill_mode_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_tint_under(tint: Color)  {
        let tint_native = tint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tint_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tint_under_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_tint_under() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tint_under_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_tint_progress(tint: Color)  {
        let tint_native = tint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tint_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tint_progress_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_tint_progress() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tint_progress_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_tint_over(tint: Color)  {
        let tint_native = tint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tint_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tint_over_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_tint_over() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tint_over_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_texture_progress_offset(offset: Vector2)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_progress_offset_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_texture_progress_offset() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_progress_offset_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_radial_initial_angle(mode: Float64)  {
        withUnsafePointer(to: mode) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_radial_initial_angle_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_radial_initial_angle() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_radial_initial_angle_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_radial_center_offset(mode: Vector2)  {
        let mode_native = mode._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_radial_center_offset_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_radial_center_offset() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_radial_center_offset_1497962370,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_fill_degrees(mode: Float64)  {
        withUnsafePointer(to: mode) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fill_degrees_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_fill_degrees() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fill_degrees_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_stretch_margin(margin: Side, value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: margin.rawValue) { margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stretch_margin_437707142,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_stretch_margin(margin: Side) -> Int64 {
        withUnsafePointer(to: margin.rawValue) { margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stretch_margin_1983885014,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func set_nine_patch_stretch(stretch: UInt8)  {
        withUnsafePointer(to: stretch) { stretch_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stretch_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_nine_patch_stretch_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_nine_patch_stretch() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_nine_patch_stretch_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}