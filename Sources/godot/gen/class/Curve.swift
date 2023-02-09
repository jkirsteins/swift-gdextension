import godot_native

fileprivate var __godot_name_Curve: StringName! = nil

/// A mathematic curve.
/// 
/// A curve that can be saved and re-used for other objects. By default, it ranges between [code]0[/code] and [code]1[/code] on the Y axis and positions points relative to the [code]0.5[/code] Y position.
///  
/// See also [Gradient] which is designed for color interpolation. See also [Curve2D] and [Curve3D].
open class Curve : Resource {

    public enum TangentMode : Int32 {
        case TANGENT_FREE = 0
        case TANGENT_LINEAR = 1
        case TANGENT_MODE_COUNT = 2
    }

    public override class var __godot_name: StringName { __godot_name_Curve }

    static var _method_get_point_count_3905245786: StringName! = nil
    static var _method_set_point_count_1286410249: StringName! = nil
    static var _method_add_point_2766148617: StringName! = nil
    static var _method_remove_point_1286410249: StringName! = nil
    static var _method_clear_points_3218959716: StringName! = nil
    static var _method_get_point_position_2299179447: StringName! = nil
    static var _method_set_point_value_1602489585: StringName! = nil
    static var _method_set_point_offset_3780573764: StringName! = nil
    static var _method_sample_3919130443: StringName! = nil
    static var _method_sample_baked_3919130443: StringName! = nil
    static var _method_get_point_left_tangent_2339986948: StringName! = nil
    static var _method_get_point_right_tangent_2339986948: StringName! = nil
    static var _method_get_point_left_mode_426950354: StringName! = nil
    static var _method_get_point_right_mode_426950354: StringName! = nil
    static var _method_set_point_left_tangent_1602489585: StringName! = nil
    static var _method_set_point_right_tangent_1602489585: StringName! = nil
    static var _method_set_point_left_mode_1217242874: StringName! = nil
    static var _method_set_point_right_mode_1217242874: StringName! = nil
    static var _method_get_min_value_1740695150: StringName! = nil
    static var _method_set_min_value_373806689: StringName! = nil
    static var _method_get_max_value_1740695150: StringName! = nil
    static var _method_set_max_value_373806689: StringName! = nil
    static var _method_clean_dupes_3218959716: StringName! = nil
    static var _method_bake_3218959716: StringName! = nil
    static var _method_get_bake_resolution_3905245786: StringName! = nil
    static var _method_set_bake_resolution_1286410249: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Curve == nil)
        __godot_name_Curve = StringName(from: "Curve")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_point_count_3905245786 = StringName(from: "get_point_count")
        assert(self._method_get_point_count_3905245786 != nil)
        self._method_set_point_count_1286410249 = StringName(from: "set_point_count")
        assert(self._method_set_point_count_1286410249 != nil)
        self._method_add_point_2766148617 = StringName(from: "add_point")
        assert(self._method_add_point_2766148617 != nil)
        self._method_remove_point_1286410249 = StringName(from: "remove_point")
        assert(self._method_remove_point_1286410249 != nil)
        self._method_clear_points_3218959716 = StringName(from: "clear_points")
        assert(self._method_clear_points_3218959716 != nil)
        self._method_get_point_position_2299179447 = StringName(from: "get_point_position")
        assert(self._method_get_point_position_2299179447 != nil)
        self._method_set_point_value_1602489585 = StringName(from: "set_point_value")
        assert(self._method_set_point_value_1602489585 != nil)
        self._method_set_point_offset_3780573764 = StringName(from: "set_point_offset")
        assert(self._method_set_point_offset_3780573764 != nil)
        self._method_sample_3919130443 = StringName(from: "sample")
        assert(self._method_sample_3919130443 != nil)
        self._method_sample_baked_3919130443 = StringName(from: "sample_baked")
        assert(self._method_sample_baked_3919130443 != nil)
        self._method_get_point_left_tangent_2339986948 = StringName(from: "get_point_left_tangent")
        assert(self._method_get_point_left_tangent_2339986948 != nil)
        self._method_get_point_right_tangent_2339986948 = StringName(from: "get_point_right_tangent")
        assert(self._method_get_point_right_tangent_2339986948 != nil)
        self._method_get_point_left_mode_426950354 = StringName(from: "get_point_left_mode")
        assert(self._method_get_point_left_mode_426950354 != nil)
        self._method_get_point_right_mode_426950354 = StringName(from: "get_point_right_mode")
        assert(self._method_get_point_right_mode_426950354 != nil)
        self._method_set_point_left_tangent_1602489585 = StringName(from: "set_point_left_tangent")
        assert(self._method_set_point_left_tangent_1602489585 != nil)
        self._method_set_point_right_tangent_1602489585 = StringName(from: "set_point_right_tangent")
        assert(self._method_set_point_right_tangent_1602489585 != nil)
        self._method_set_point_left_mode_1217242874 = StringName(from: "set_point_left_mode")
        assert(self._method_set_point_left_mode_1217242874 != nil)
        self._method_set_point_right_mode_1217242874 = StringName(from: "set_point_right_mode")
        assert(self._method_set_point_right_mode_1217242874 != nil)
        self._method_get_min_value_1740695150 = StringName(from: "get_min_value")
        assert(self._method_get_min_value_1740695150 != nil)
        self._method_set_min_value_373806689 = StringName(from: "set_min_value")
        assert(self._method_set_min_value_373806689 != nil)
        self._method_get_max_value_1740695150 = StringName(from: "get_max_value")
        assert(self._method_get_max_value_1740695150 != nil)
        self._method_set_max_value_373806689 = StringName(from: "set_max_value")
        assert(self._method_set_max_value_373806689 != nil)
        self._method_clean_dupes_3218959716 = StringName(from: "clean_dupes")
        assert(self._method_clean_dupes_3218959716 != nil)
        self._method_bake_3218959716 = StringName(from: "bake")
        assert(self._method_bake_3218959716 != nil)
        self._method_get_bake_resolution_3905245786 = StringName(from: "get_bake_resolution")
        assert(self._method_get_bake_resolution_3905245786 != nil)
        self._method_set_bake_resolution_1286410249 = StringName(from: "set_bake_resolution")
        assert(self._method_set_bake_resolution_1286410249 != nil)
    }

    public func get_point_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_point_count_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_point_count(count: Int64)  {
        withUnsafePointer(to: count) { count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(count_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_point_count_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_point(position: Vector2, left_tangent: Float64, right_tangent: Float64, left_mode: Curve.TangentMode, right_mode: Curve.TangentMode) -> Int64 {
        withUnsafePointer(to: right_tangent) { right_tangent_native in
        withUnsafePointer(to: left_tangent) { left_tangent_native in
        withUnsafePointer(to: right_mode.rawValue) { right_mode_native in
        withUnsafePointer(to: left_mode.rawValue) { left_mode_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native), .init(left_tangent_native), .init(right_tangent_native), .init(left_mode_native), .init(right_mode_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_point_2766148617._native_ptr(),
                    2766148617)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func remove_point(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_point_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func clear_points()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_points_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_point_position(index: Int64) -> Vector2 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_point_position_2299179447._native_ptr(),
                    2299179447)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
    }
    public func set_point_value(index: Int64, y: Float64)  {
        withUnsafePointer(to: y) { y_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(y_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_point_value_1602489585._native_ptr(),
                    1602489585)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_point_offset(index: Int64, offset: Float64) -> Int64 {
        withUnsafePointer(to: offset) { offset_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(offset_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_point_offset_3780573764._native_ptr(),
                    3780573764)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
    }
    public func sample(offset: Float64) -> Float64 {
        withUnsafePointer(to: offset) { offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_sample_3919130443._native_ptr(),
                    3919130443)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func sample_baked(offset: Float64) -> Float64 {
        withUnsafePointer(to: offset) { offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_sample_baked_3919130443._native_ptr(),
                    3919130443)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func get_point_left_tangent(index: Int64) -> Float64 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_point_left_tangent_2339986948._native_ptr(),
                    2339986948)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func get_point_right_tangent(index: Int64) -> Float64 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_point_right_tangent_2339986948._native_ptr(),
                    2339986948)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func get_point_left_mode(index: Int64) -> Curve.TangentMode {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_point_left_mode_426950354._native_ptr(),
                    426950354)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Curve.TangentMode(godot: __resPtr.pointee)
        }
    }
    public func get_point_right_mode(index: Int64) -> Curve.TangentMode {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_point_right_mode_426950354._native_ptr(),
                    426950354)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Curve.TangentMode(godot: __resPtr.pointee)
        }
    }
    public func set_point_left_tangent(index: Int64, tangent: Float64)  {
        withUnsafePointer(to: tangent) { tangent_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(tangent_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_point_left_tangent_1602489585._native_ptr(),
                    1602489585)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_point_right_tangent(index: Int64, tangent: Float64)  {
        withUnsafePointer(to: tangent) { tangent_native in
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(tangent_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_point_right_tangent_1602489585._native_ptr(),
                    1602489585)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_point_left_mode(index: Int64, mode: Curve.TangentMode)  {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_point_left_mode_1217242874._native_ptr(),
                    1217242874)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_point_right_mode(index: Int64, mode: Curve.TangentMode)  {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native), .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_point_right_mode_1217242874._native_ptr(),
                    1217242874)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_min_value() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_min_value_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_min_value(min: Float64)  {
        withUnsafePointer(to: min) { min_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(min_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_min_value_373806689._native_ptr(),
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
    public func get_max_value() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_max_value_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_max_value(max: Float64)  {
        withUnsafePointer(to: max) { max_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_max_value_373806689._native_ptr(),
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
    public func clean_dupes()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clean_dupes_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func bake()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_bake_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_bake_resolution() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bake_resolution_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_bake_resolution(resolution: Int64)  {
        withUnsafePointer(to: resolution) { resolution_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(resolution_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bake_resolution_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}