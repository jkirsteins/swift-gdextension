import godot_native

fileprivate var __godot_name_AspectRatioContainer: StringName! = nil

/// Container that preserves its child controls' aspect ratio.
/// 
/// Arranges child controls in a way to preserve their aspect ratio automatically whenever the container is resized. Solves the problem where the container size is dynamic and the contents' size needs to adjust accordingly without losing proportions.
open class AspectRatioContainer : Container {

    public enum StretchMode : Int32 {
        case STRETCH_WIDTH_CONTROLS_HEIGHT = 0
        case STRETCH_HEIGHT_CONTROLS_WIDTH = 1
        case STRETCH_FIT = 2
        case STRETCH_COVER = 3
    }
    public enum AlignmentMode : Int32 {
        case ALIGNMENT_BEGIN = 0
        case ALIGNMENT_CENTER = 1
        case ALIGNMENT_END = 2
    }

    public override class var __godot_name: StringName { __godot_name_AspectRatioContainer }

    static var _method_set_ratio_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ratio_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_stretch_mode_1876743467: GDExtensionMethodBindPtr! = nil
    static var _method_get_stretch_mode_3416449033: GDExtensionMethodBindPtr! = nil
    static var _method_set_alignment_horizontal_2147829016: GDExtensionMethodBindPtr! = nil
    static var _method_get_alignment_horizontal_3838875429: GDExtensionMethodBindPtr! = nil
    static var _method_set_alignment_vertical_2147829016: GDExtensionMethodBindPtr! = nil
    static var _method_get_alignment_vertical_3838875429: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AspectRatioContainer = StringName(from: "AspectRatioContainer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_ratio_373806689_name = StringName(from: "set_ratio")
        self._method_set_ratio_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AspectRatioContainer._native_ptr(), _method_set_ratio_373806689_name._native_ptr(), 373806689)
        assert(AspectRatioContainer._method_set_ratio_373806689 != nil)
        let _method_get_ratio_1740695150_name = StringName(from: "get_ratio")
        self._method_get_ratio_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AspectRatioContainer._native_ptr(), _method_get_ratio_1740695150_name._native_ptr(), 1740695150)
        assert(AspectRatioContainer._method_get_ratio_1740695150 != nil)
        let _method_set_stretch_mode_1876743467_name = StringName(from: "set_stretch_mode")
        self._method_set_stretch_mode_1876743467 = self.interface.pointee.classdb_get_method_bind(__godot_name_AspectRatioContainer._native_ptr(), _method_set_stretch_mode_1876743467_name._native_ptr(), 1876743467)
        assert(AspectRatioContainer._method_set_stretch_mode_1876743467 != nil)
        let _method_get_stretch_mode_3416449033_name = StringName(from: "get_stretch_mode")
        self._method_get_stretch_mode_3416449033 = self.interface.pointee.classdb_get_method_bind(__godot_name_AspectRatioContainer._native_ptr(), _method_get_stretch_mode_3416449033_name._native_ptr(), 3416449033)
        assert(AspectRatioContainer._method_get_stretch_mode_3416449033 != nil)
        let _method_set_alignment_horizontal_2147829016_name = StringName(from: "set_alignment_horizontal")
        self._method_set_alignment_horizontal_2147829016 = self.interface.pointee.classdb_get_method_bind(__godot_name_AspectRatioContainer._native_ptr(), _method_set_alignment_horizontal_2147829016_name._native_ptr(), 2147829016)
        assert(AspectRatioContainer._method_set_alignment_horizontal_2147829016 != nil)
        let _method_get_alignment_horizontal_3838875429_name = StringName(from: "get_alignment_horizontal")
        self._method_get_alignment_horizontal_3838875429 = self.interface.pointee.classdb_get_method_bind(__godot_name_AspectRatioContainer._native_ptr(), _method_get_alignment_horizontal_3838875429_name._native_ptr(), 3838875429)
        assert(AspectRatioContainer._method_get_alignment_horizontal_3838875429 != nil)
        let _method_set_alignment_vertical_2147829016_name = StringName(from: "set_alignment_vertical")
        self._method_set_alignment_vertical_2147829016 = self.interface.pointee.classdb_get_method_bind(__godot_name_AspectRatioContainer._native_ptr(), _method_set_alignment_vertical_2147829016_name._native_ptr(), 2147829016)
        assert(AspectRatioContainer._method_set_alignment_vertical_2147829016 != nil)
        let _method_get_alignment_vertical_3838875429_name = StringName(from: "get_alignment_vertical")
        self._method_get_alignment_vertical_3838875429 = self.interface.pointee.classdb_get_method_bind(__godot_name_AspectRatioContainer._native_ptr(), _method_get_alignment_vertical_3838875429_name._native_ptr(), 3838875429)
        assert(AspectRatioContainer._method_get_alignment_vertical_3838875429 != nil)
    }

    public func set_ratio(ratio: Float64)  {
        withUnsafePointer(to: ratio) { ratio_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ratio_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ratio_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ratio() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ratio_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_stretch_mode(stretch_mode: AspectRatioContainer.StretchMode)  {
        withUnsafePointer(to: stretch_mode.rawValue) { stretch_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stretch_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stretch_mode_1876743467,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_stretch_mode() -> AspectRatioContainer.StretchMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stretch_mode_3416449033,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AspectRatioContainer.StretchMode(godot: __resPtr.pointee)
    }
    public func set_alignment_horizontal(alignment_horizontal: AspectRatioContainer.AlignmentMode)  {
        withUnsafePointer(to: alignment_horizontal.rawValue) { alignment_horizontal_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(alignment_horizontal_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_alignment_horizontal_2147829016,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_alignment_horizontal() -> AspectRatioContainer.AlignmentMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_alignment_horizontal_3838875429,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AspectRatioContainer.AlignmentMode(godot: __resPtr.pointee)
    }
    public func set_alignment_vertical(alignment_vertical: AspectRatioContainer.AlignmentMode)  {
        withUnsafePointer(to: alignment_vertical.rawValue) { alignment_vertical_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(alignment_vertical_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_alignment_vertical_2147829016,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_alignment_vertical() -> AspectRatioContainer.AlignmentMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_alignment_vertical_3838875429,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AspectRatioContainer.AlignmentMode(godot: __resPtr.pointee)
    }
}