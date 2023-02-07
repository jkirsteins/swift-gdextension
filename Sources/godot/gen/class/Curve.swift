import godot_native

fileprivate var __godot_name_Curve: StringName! = nil

/// A mathematic curve.
/// 
/// A curve that can be saved and re-used for other objects. By default, it ranges between [code]0[/code] and [code]1[/code] on the Y axis and positions points relative to the [code]0.5[/code] Y position.
///  
/// See also [Gradient] which is designed for color interpolation. See also [Curve2D] and [Curve3D].
public class Curve : Resource {

    public enum TangentMode : Int32 {
        case TANGENT_FREE = 0
        case TANGENT_LINEAR = 1
        case TANGENT_MODE_COUNT = 2
    }

    public override class var __godot_name: StringName { __godot_name_Curve }

    static var _method_get_point_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_count_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_add_point_2766148617: GDExtensionMethodBindPtr! = nil
    static var _method_remove_point_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_clear_points_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_position_2299179447: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_value_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_offset_3780573764: GDExtensionMethodBindPtr! = nil
    static var _method_sample_3919130443: GDExtensionMethodBindPtr! = nil
    static var _method_sample_baked_3919130443: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_left_tangent_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_right_tangent_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_left_mode_426950354: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_right_mode_426950354: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_left_tangent_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_right_tangent_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_left_mode_1217242874: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_right_mode_1217242874: GDExtensionMethodBindPtr! = nil
    static var _method_get_min_value_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_min_value_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_value_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_value_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_clean_dupes_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_bake_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_bake_resolution_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_bake_resolution_1286410249: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Curve = StringName(from: "Curve")

        let _method_get_point_count_3905245786_name = StringName(from: "get_point_count")
        self._method_get_point_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_count_3905245786_name._native_ptr(), 3905245786)
        assert(Curve._method_get_point_count_3905245786 != nil)
        let _method_set_point_count_1286410249_name = StringName(from: "set_point_count")
        self._method_set_point_count_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_count_1286410249_name._native_ptr(), 1286410249)
        assert(Curve._method_set_point_count_1286410249 != nil)
        let _method_add_point_2766148617_name = StringName(from: "add_point")
        self._method_add_point_2766148617 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_point_2766148617_name._native_ptr(), 2766148617)
        assert(Curve._method_add_point_2766148617 != nil)
        let _method_remove_point_1286410249_name = StringName(from: "remove_point")
        self._method_remove_point_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_point_1286410249_name._native_ptr(), 1286410249)
        assert(Curve._method_remove_point_1286410249 != nil)
        let _method_clear_points_3218959716_name = StringName(from: "clear_points")
        self._method_clear_points_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_points_3218959716_name._native_ptr(), 3218959716)
        assert(Curve._method_clear_points_3218959716 != nil)
        let _method_get_point_position_2299179447_name = StringName(from: "get_point_position")
        self._method_get_point_position_2299179447 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_position_2299179447_name._native_ptr(), 2299179447)
        assert(Curve._method_get_point_position_2299179447 != nil)
        let _method_set_point_value_1602489585_name = StringName(from: "set_point_value")
        self._method_set_point_value_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_value_1602489585_name._native_ptr(), 1602489585)
        assert(Curve._method_set_point_value_1602489585 != nil)
        let _method_set_point_offset_3780573764_name = StringName(from: "set_point_offset")
        self._method_set_point_offset_3780573764 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_offset_3780573764_name._native_ptr(), 3780573764)
        assert(Curve._method_set_point_offset_3780573764 != nil)
        let _method_sample_3919130443_name = StringName(from: "sample")
        self._method_sample_3919130443 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_sample_3919130443_name._native_ptr(), 3919130443)
        assert(Curve._method_sample_3919130443 != nil)
        let _method_sample_baked_3919130443_name = StringName(from: "sample_baked")
        self._method_sample_baked_3919130443 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_sample_baked_3919130443_name._native_ptr(), 3919130443)
        assert(Curve._method_sample_baked_3919130443 != nil)
        let _method_get_point_left_tangent_2339986948_name = StringName(from: "get_point_left_tangent")
        self._method_get_point_left_tangent_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_left_tangent_2339986948_name._native_ptr(), 2339986948)
        assert(Curve._method_get_point_left_tangent_2339986948 != nil)
        let _method_get_point_right_tangent_2339986948_name = StringName(from: "get_point_right_tangent")
        self._method_get_point_right_tangent_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_right_tangent_2339986948_name._native_ptr(), 2339986948)
        assert(Curve._method_get_point_right_tangent_2339986948 != nil)
        let _method_get_point_left_mode_426950354_name = StringName(from: "get_point_left_mode")
        self._method_get_point_left_mode_426950354 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_left_mode_426950354_name._native_ptr(), 426950354)
        assert(Curve._method_get_point_left_mode_426950354 != nil)
        let _method_get_point_right_mode_426950354_name = StringName(from: "get_point_right_mode")
        self._method_get_point_right_mode_426950354 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_right_mode_426950354_name._native_ptr(), 426950354)
        assert(Curve._method_get_point_right_mode_426950354 != nil)
        let _method_set_point_left_tangent_1602489585_name = StringName(from: "set_point_left_tangent")
        self._method_set_point_left_tangent_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_left_tangent_1602489585_name._native_ptr(), 1602489585)
        assert(Curve._method_set_point_left_tangent_1602489585 != nil)
        let _method_set_point_right_tangent_1602489585_name = StringName(from: "set_point_right_tangent")
        self._method_set_point_right_tangent_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_right_tangent_1602489585_name._native_ptr(), 1602489585)
        assert(Curve._method_set_point_right_tangent_1602489585 != nil)
        let _method_set_point_left_mode_1217242874_name = StringName(from: "set_point_left_mode")
        self._method_set_point_left_mode_1217242874 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_left_mode_1217242874_name._native_ptr(), 1217242874)
        assert(Curve._method_set_point_left_mode_1217242874 != nil)
        let _method_set_point_right_mode_1217242874_name = StringName(from: "set_point_right_mode")
        self._method_set_point_right_mode_1217242874 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_right_mode_1217242874_name._native_ptr(), 1217242874)
        assert(Curve._method_set_point_right_mode_1217242874 != nil)
        let _method_get_min_value_1740695150_name = StringName(from: "get_min_value")
        self._method_get_min_value_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_min_value_1740695150_name._native_ptr(), 1740695150)
        assert(Curve._method_get_min_value_1740695150 != nil)
        let _method_set_min_value_373806689_name = StringName(from: "set_min_value")
        self._method_set_min_value_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_min_value_373806689_name._native_ptr(), 373806689)
        assert(Curve._method_set_min_value_373806689 != nil)
        let _method_get_max_value_1740695150_name = StringName(from: "get_max_value")
        self._method_get_max_value_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_max_value_1740695150_name._native_ptr(), 1740695150)
        assert(Curve._method_get_max_value_1740695150 != nil)
        let _method_set_max_value_373806689_name = StringName(from: "set_max_value")
        self._method_set_max_value_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_max_value_373806689_name._native_ptr(), 373806689)
        assert(Curve._method_set_max_value_373806689 != nil)
        let _method_clean_dupes_3218959716_name = StringName(from: "clean_dupes")
        self._method_clean_dupes_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clean_dupes_3218959716_name._native_ptr(), 3218959716)
        assert(Curve._method_clean_dupes_3218959716 != nil)
        let _method_bake_3218959716_name = StringName(from: "bake")
        self._method_bake_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_bake_3218959716_name._native_ptr(), 3218959716)
        assert(Curve._method_bake_3218959716 != nil)
        let _method_get_bake_resolution_3905245786_name = StringName(from: "get_bake_resolution")
        self._method_get_bake_resolution_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bake_resolution_3905245786_name._native_ptr(), 3905245786)
        assert(Curve._method_get_bake_resolution_3905245786 != nil)
        let _method_set_bake_resolution_1286410249_name = StringName(from: "set_bake_resolution")
        self._method_set_bake_resolution_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bake_resolution_1286410249_name._native_ptr(), 1286410249)
        assert(Curve._method_set_bake_resolution_1286410249 != nil)
    }

    public func get_point_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_point_count(count: Int64)  {
        withUnsafePointer(to: count) { count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(count_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_count_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_point_2766148617,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_point_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_points_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_position_2299179447,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_value_1602489585,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_offset_3780573764,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_sample_3919130443,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_sample_baked_3919130443,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_left_tangent_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_right_tangent_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_left_mode_426950354,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Curve.TangentMode(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_right_mode_426950354,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Curve.TangentMode(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_left_tangent_1602489585,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_right_tangent_1602489585,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_left_mode_1217242874,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_right_mode_1217242874,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_min_value_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_min_value(min: Float64)  {
        withUnsafePointer(to: min) { min_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(min_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_min_value_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_value_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_max_value(max: Float64)  {
        withUnsafePointer(to: max) { max_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_value_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clean_dupes_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_bake_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bake_resolution_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_bake_resolution(resolution: Int64)  {
        withUnsafePointer(to: resolution) { resolution_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(resolution_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bake_resolution_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}