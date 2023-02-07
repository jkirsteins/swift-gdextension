import godot_native

fileprivate var __godot_name_Curve2D: StringName! = nil

/// Describes a Bézier curve in 2D space.
/// 
/// This class describes a Bézier curve in 2D space. It is mainly used to give a shape to a [Path2D], but can be manually sampled for other purposes.
///  
/// It keeps a cache of precalculated points along the curve, to speed up further calculations.
public class Curve2D : Resource {

    

    public override class var __godot_name: StringName { __godot_name_Curve2D }

    static var _method_get_point_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_count_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_add_point_2437345566: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_position_163021252: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_position_2299179447: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_in_163021252: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_in_2299179447: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_out_163021252: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_out_2299179447: GDExtensionMethodBindPtr! = nil
    static var _method_remove_point_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_clear_points_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_sample_26514310: GDExtensionMethodBindPtr! = nil
    static var _method_samplef_3588506812: GDExtensionMethodBindPtr! = nil
    static var _method_set_bake_interval_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_bake_interval_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_baked_length_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_sample_baked_3750540263: GDExtensionMethodBindPtr! = nil
    static var _method_sample_baked_with_rotation_255128112: GDExtensionMethodBindPtr! = nil
    static var _method_get_baked_points_2961356807: GDExtensionMethodBindPtr! = nil
    static var _method_get_closest_point_2656412154: GDExtensionMethodBindPtr! = nil
    static var _method_get_closest_offset_2276447920: GDExtensionMethodBindPtr! = nil
    static var _method_tessellate_958145977: GDExtensionMethodBindPtr! = nil
    static var _method_tessellate_even_length_4229237857: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Curve2D = StringName(from: "Curve2D")

        let _method_get_point_count_3905245786_name = StringName(from: "get_point_count")
        self._method_get_point_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_count_3905245786_name._native_ptr(), 3905245786)
        assert(Curve2D._method_get_point_count_3905245786 != nil)
        let _method_set_point_count_1286410249_name = StringName(from: "set_point_count")
        self._method_set_point_count_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_count_1286410249_name._native_ptr(), 1286410249)
        assert(Curve2D._method_set_point_count_1286410249 != nil)
        let _method_add_point_2437345566_name = StringName(from: "add_point")
        self._method_add_point_2437345566 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_point_2437345566_name._native_ptr(), 2437345566)
        assert(Curve2D._method_add_point_2437345566 != nil)
        let _method_set_point_position_163021252_name = StringName(from: "set_point_position")
        self._method_set_point_position_163021252 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_position_163021252_name._native_ptr(), 163021252)
        assert(Curve2D._method_set_point_position_163021252 != nil)
        let _method_get_point_position_2299179447_name = StringName(from: "get_point_position")
        self._method_get_point_position_2299179447 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_position_2299179447_name._native_ptr(), 2299179447)
        assert(Curve2D._method_get_point_position_2299179447 != nil)
        let _method_set_point_in_163021252_name = StringName(from: "set_point_in")
        self._method_set_point_in_163021252 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_in_163021252_name._native_ptr(), 163021252)
        assert(Curve2D._method_set_point_in_163021252 != nil)
        let _method_get_point_in_2299179447_name = StringName(from: "get_point_in")
        self._method_get_point_in_2299179447 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_in_2299179447_name._native_ptr(), 2299179447)
        assert(Curve2D._method_get_point_in_2299179447 != nil)
        let _method_set_point_out_163021252_name = StringName(from: "set_point_out")
        self._method_set_point_out_163021252 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_out_163021252_name._native_ptr(), 163021252)
        assert(Curve2D._method_set_point_out_163021252 != nil)
        let _method_get_point_out_2299179447_name = StringName(from: "get_point_out")
        self._method_get_point_out_2299179447 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_out_2299179447_name._native_ptr(), 2299179447)
        assert(Curve2D._method_get_point_out_2299179447 != nil)
        let _method_remove_point_1286410249_name = StringName(from: "remove_point")
        self._method_remove_point_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_point_1286410249_name._native_ptr(), 1286410249)
        assert(Curve2D._method_remove_point_1286410249 != nil)
        let _method_clear_points_3218959716_name = StringName(from: "clear_points")
        self._method_clear_points_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_points_3218959716_name._native_ptr(), 3218959716)
        assert(Curve2D._method_clear_points_3218959716 != nil)
        let _method_sample_26514310_name = StringName(from: "sample")
        self._method_sample_26514310 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_sample_26514310_name._native_ptr(), 26514310)
        assert(Curve2D._method_sample_26514310 != nil)
        let _method_samplef_3588506812_name = StringName(from: "samplef")
        self._method_samplef_3588506812 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_samplef_3588506812_name._native_ptr(), 3588506812)
        assert(Curve2D._method_samplef_3588506812 != nil)
        let _method_set_bake_interval_373806689_name = StringName(from: "set_bake_interval")
        self._method_set_bake_interval_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bake_interval_373806689_name._native_ptr(), 373806689)
        assert(Curve2D._method_set_bake_interval_373806689 != nil)
        let _method_get_bake_interval_1740695150_name = StringName(from: "get_bake_interval")
        self._method_get_bake_interval_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bake_interval_1740695150_name._native_ptr(), 1740695150)
        assert(Curve2D._method_get_bake_interval_1740695150 != nil)
        let _method_get_baked_length_1740695150_name = StringName(from: "get_baked_length")
        self._method_get_baked_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_baked_length_1740695150_name._native_ptr(), 1740695150)
        assert(Curve2D._method_get_baked_length_1740695150 != nil)
        let _method_sample_baked_3750540263_name = StringName(from: "sample_baked")
        self._method_sample_baked_3750540263 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_sample_baked_3750540263_name._native_ptr(), 3750540263)
        assert(Curve2D._method_sample_baked_3750540263 != nil)
        let _method_sample_baked_with_rotation_255128112_name = StringName(from: "sample_baked_with_rotation")
        self._method_sample_baked_with_rotation_255128112 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_sample_baked_with_rotation_255128112_name._native_ptr(), 255128112)
        assert(Curve2D._method_sample_baked_with_rotation_255128112 != nil)
        let _method_get_baked_points_2961356807_name = StringName(from: "get_baked_points")
        self._method_get_baked_points_2961356807 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_baked_points_2961356807_name._native_ptr(), 2961356807)
        assert(Curve2D._method_get_baked_points_2961356807 != nil)
        let _method_get_closest_point_2656412154_name = StringName(from: "get_closest_point")
        self._method_get_closest_point_2656412154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_closest_point_2656412154_name._native_ptr(), 2656412154)
        assert(Curve2D._method_get_closest_point_2656412154 != nil)
        let _method_get_closest_offset_2276447920_name = StringName(from: "get_closest_offset")
        self._method_get_closest_offset_2276447920 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_closest_offset_2276447920_name._native_ptr(), 2276447920)
        assert(Curve2D._method_get_closest_offset_2276447920 != nil)
        let _method_tessellate_958145977_name = StringName(from: "tessellate")
        self._method_tessellate_958145977 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_tessellate_958145977_name._native_ptr(), 958145977)
        assert(Curve2D._method_tessellate_958145977 != nil)
        let _method_tessellate_even_length_4229237857_name = StringName(from: "tessellate_even_length")
        self._method_tessellate_even_length_4229237857 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_tessellate_even_length_4229237857_name._native_ptr(), 4229237857)
        assert(Curve2D._method_tessellate_even_length_4229237857 != nil)
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
    public func add_point(position: Vector2, `in`: Vector2, out: Vector2, index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let out_native = out._native_ptr()
        let in_native = `in`._native_ptr()
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native), .init(in_native), .init(out_native), .init(index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_point_2437345566,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_point_position(idx: Int64, position: Vector2)  {
        withUnsafePointer(to: idx) { idx_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_position_163021252,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_point_position(idx: Int64) -> Vector2 {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
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
    public func set_point_in(idx: Int64, position: Vector2)  {
        withUnsafePointer(to: idx) { idx_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_in_163021252,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_point_in(idx: Int64) -> Vector2 {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_in_2299179447,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
    }
    public func set_point_out(idx: Int64, position: Vector2)  {
        withUnsafePointer(to: idx) { idx_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_out_163021252,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_point_out(idx: Int64) -> Vector2 {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_out_2299179447,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
    }
    public func remove_point(idx: Int64)  {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
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
    public func sample(idx: Int64, t: Float64) -> Vector2 {
        withUnsafePointer(to: t) { t_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(t_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_sample_26514310,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
        }
    }
    public func samplef(fofs: Float64) -> Vector2 {
        withUnsafePointer(to: fofs) { fofs_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fofs_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_samplef_3588506812,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
    }
    public func set_bake_interval(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bake_interval_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bake_interval() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bake_interval_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func get_baked_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_baked_length_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func sample_baked(offset: Float64, cubic: UInt8) -> Vector2 {
        withUnsafePointer(to: cubic) { cubic_native in
        withUnsafePointer(to: offset) { offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native), .init(cubic_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_sample_baked_3750540263,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
        }
    }
    public func sample_baked_with_rotation(offset: Float64, cubic: UInt8) -> Transform2D {
        withUnsafePointer(to: cubic) { cubic_native in
        withUnsafePointer(to: offset) { offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native), .init(cubic_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_sample_baked_with_rotation_255128112,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(from: __resPtr.pointee)
        }
        }
    }
    public func get_baked_points() -> PackedVector2Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_baked_points_2961356807,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(from: __resPtr.pointee)
    }
    public func get_closest_point(to_point: Vector2) -> Vector2 {
        let to_point_native = to_point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_closest_point_2656412154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func get_closest_offset(to_point: Vector2) -> Float64 {
        let to_point_native = to_point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_closest_offset_2276447920,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func tessellate(max_stages: Int64, tolerance_degrees: Float64) -> PackedVector2Array {
        withUnsafePointer(to: tolerance_degrees) { tolerance_degrees_native in
        withUnsafePointer(to: max_stages) { max_stages_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_stages_native), .init(tolerance_degrees_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tessellate_958145977,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(from: __resPtr.pointee)
        }
        }
    }
    public func tessellate_even_length(max_stages: Int64, tolerance_length: Float64) -> PackedVector2Array {
        withUnsafePointer(to: tolerance_length) { tolerance_length_native in
        withUnsafePointer(to: max_stages) { max_stages_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_stages_native), .init(tolerance_length_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tessellate_even_length_4229237857,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(from: __resPtr.pointee)
        }
        }
    }
}