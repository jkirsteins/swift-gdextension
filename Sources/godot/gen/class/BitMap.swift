import godot_native

fileprivate var __godot_name_BitMap: StringName! = nil

/// Boolean matrix.
/// 
/// A two-dimensional array of boolean values, can be used to efficiently store a binary matrix (every matrix element takes only one bit) and query the values using natural cartesian coordinates.
open class BitMap : Resource {

    

    public override class var __godot_name: StringName { __godot_name_BitMap }

    static var _method_create_1130785943: StringName! = nil
    static var _method_create_from_image_alpha_505265891: StringName! = nil
    static var _method_set_bitv_4153096796: StringName! = nil
    static var _method_set_bit_1383440665: StringName! = nil
    static var _method_get_bitv_3900751641: StringName! = nil
    static var _method_get_bit_2522259332: StringName! = nil
    static var _method_set_bit_rect_472162941: StringName! = nil
    static var _method_get_true_bit_count_3905245786: StringName! = nil
    static var _method_get_size_3690982128: StringName! = nil
    static var _method_resize_1130785943: StringName! = nil
    static var _method_grow_mask_3317281434: StringName! = nil
    static var _method_convert_to_image_4190603485: StringName! = nil
    static var _method_opaque_to_polygons_876132484: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_BitMap == nil)
        __godot_name_BitMap = StringName(from: "BitMap")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_create_1130785943 = StringName(from: "create")
        assert(self._method_create_1130785943 != nil)
        self._method_create_from_image_alpha_505265891 = StringName(from: "create_from_image_alpha")
        assert(self._method_create_from_image_alpha_505265891 != nil)
        self._method_set_bitv_4153096796 = StringName(from: "set_bitv")
        assert(self._method_set_bitv_4153096796 != nil)
        self._method_set_bit_1383440665 = StringName(from: "set_bit")
        assert(self._method_set_bit_1383440665 != nil)
        self._method_get_bitv_3900751641 = StringName(from: "get_bitv")
        assert(self._method_get_bitv_3900751641 != nil)
        self._method_get_bit_2522259332 = StringName(from: "get_bit")
        assert(self._method_get_bit_2522259332 != nil)
        self._method_set_bit_rect_472162941 = StringName(from: "set_bit_rect")
        assert(self._method_set_bit_rect_472162941 != nil)
        self._method_get_true_bit_count_3905245786 = StringName(from: "get_true_bit_count")
        assert(self._method_get_true_bit_count_3905245786 != nil)
        self._method_get_size_3690982128 = StringName(from: "get_size")
        assert(self._method_get_size_3690982128 != nil)
        self._method_resize_1130785943 = StringName(from: "resize")
        assert(self._method_resize_1130785943 != nil)
        self._method_grow_mask_3317281434 = StringName(from: "grow_mask")
        assert(self._method_grow_mask_3317281434 != nil)
        self._method_convert_to_image_4190603485 = StringName(from: "convert_to_image")
        assert(self._method_convert_to_image_4190603485 != nil)
        self._method_opaque_to_polygons_876132484 = StringName(from: "opaque_to_polygons")
        assert(self._method_opaque_to_polygons_876132484 != nil)
    }

    public func create(size: Vector2i)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_1130785943._native_ptr(),
                    1130785943)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func create_from_image_alpha(image: Image, threshold: Float64)  {
        withUnsafePointer(to: threshold) { threshold_native in
        let image_native = image._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(image_native), .init(threshold_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_from_image_alpha_505265891._native_ptr(),
                    505265891)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_bitv(position: Vector2i, bit: UInt8)  {
        withUnsafePointer(to: bit) { bit_native in
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native), .init(bit_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bitv_4153096796._native_ptr(),
                    4153096796)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_bit(x: Int64, y: Int64, bit: UInt8)  {
        withUnsafePointer(to: bit) { bit_native in
        withUnsafePointer(to: y) { y_native in
        withUnsafePointer(to: x) { x_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(x_native), .init(y_native), .init(bit_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bit_1383440665._native_ptr(),
                    1383440665)
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
    }
    public func get_bitv(position: Vector2i) -> UInt8 {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bitv_3900751641._native_ptr(),
                    3900751641)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_bit(x: Int64, y: Int64) -> UInt8 {
        withUnsafePointer(to: y) { y_native in
        withUnsafePointer(to: x) { x_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(x_native), .init(y_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bit_2522259332._native_ptr(),
                    2522259332)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
        }
    }
    public func set_bit_rect(rect: Rect2i, bit: UInt8)  {
        withUnsafePointer(to: bit) { bit_native in
        let rect_native = rect._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rect_native), .init(bit_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bit_rect_472162941._native_ptr(),
                    472162941)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_true_bit_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_true_bit_count_3905245786._native_ptr(),
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
    public func get_size() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_size_3690982128._native_ptr(),
                    3690982128)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func resize(new_size: Vector2i)  {
        let new_size_native = new_size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(new_size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_resize_1130785943._native_ptr(),
                    1130785943)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func grow_mask(pixels: Int64, rect: Rect2i)  {
        withUnsafePointer(to: pixels) { pixels_native in
        let rect_native = rect._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pixels_native), .init(rect_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_grow_mask_3317281434._native_ptr(),
                    3317281434)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func convert_to_image() -> Image {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_convert_to_image_4190603485._native_ptr(),
                    4190603485)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image(godot: __resPtr.pointee)
    }
    public func opaque_to_polygons(rect: Rect2i, epsilon: Float64) -> [PackedVector2Array] {
        withUnsafePointer(to: epsilon) { epsilon_native in
        let rect_native = rect._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rect_native), .init(epsilon_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_opaque_to_polygons_876132484._native_ptr(),
                    876132484)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PackedVector2Array](godot: __resPtr.pointee)
        }
    }
}