import godot_native

fileprivate var __godot_name_BitMap: StringName! = nil

/// Boolean matrix.
/// 
/// A two-dimensional array of boolean values, can be used to efficiently store a binary matrix (every matrix element takes only one bit) and query the values using natural cartesian coordinates.
open class BitMap : Resource {

    

    public override class var __godot_name: StringName { __godot_name_BitMap }

    static var _method_create_1130785943: GDExtensionMethodBindPtr! = nil
    static var _method_create_from_image_alpha_505265891: GDExtensionMethodBindPtr! = nil
    static var _method_set_bitv_4153096796: GDExtensionMethodBindPtr! = nil
    static var _method_set_bit_1383440665: GDExtensionMethodBindPtr! = nil
    static var _method_get_bitv_3900751641: GDExtensionMethodBindPtr! = nil
    static var _method_get_bit_2522259332: GDExtensionMethodBindPtr! = nil
    static var _method_set_bit_rect_472162941: GDExtensionMethodBindPtr! = nil
    static var _method_get_true_bit_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_3690982128: GDExtensionMethodBindPtr! = nil
    static var _method_resize_1130785943: GDExtensionMethodBindPtr! = nil
    static var _method_grow_mask_3317281434: GDExtensionMethodBindPtr! = nil
    static var _method_convert_to_image_4190603485: GDExtensionMethodBindPtr! = nil
    static var _method_opaque_to_polygons_876132484: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_BitMap = StringName(from: "BitMap")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_create_1130785943_name = StringName(from: "create")
        self._method_create_1130785943 = self.interface.pointee.classdb_get_method_bind(__godot_name_BitMap._native_ptr(), _method_create_1130785943_name._native_ptr(), 1130785943)
        assert(BitMap._method_create_1130785943 != nil)
        let _method_create_from_image_alpha_505265891_name = StringName(from: "create_from_image_alpha")
        self._method_create_from_image_alpha_505265891 = self.interface.pointee.classdb_get_method_bind(__godot_name_BitMap._native_ptr(), _method_create_from_image_alpha_505265891_name._native_ptr(), 505265891)
        assert(BitMap._method_create_from_image_alpha_505265891 != nil)
        let _method_set_bitv_4153096796_name = StringName(from: "set_bitv")
        self._method_set_bitv_4153096796 = self.interface.pointee.classdb_get_method_bind(__godot_name_BitMap._native_ptr(), _method_set_bitv_4153096796_name._native_ptr(), 4153096796)
        assert(BitMap._method_set_bitv_4153096796 != nil)
        let _method_set_bit_1383440665_name = StringName(from: "set_bit")
        self._method_set_bit_1383440665 = self.interface.pointee.classdb_get_method_bind(__godot_name_BitMap._native_ptr(), _method_set_bit_1383440665_name._native_ptr(), 1383440665)
        assert(BitMap._method_set_bit_1383440665 != nil)
        let _method_get_bitv_3900751641_name = StringName(from: "get_bitv")
        self._method_get_bitv_3900751641 = self.interface.pointee.classdb_get_method_bind(__godot_name_BitMap._native_ptr(), _method_get_bitv_3900751641_name._native_ptr(), 3900751641)
        assert(BitMap._method_get_bitv_3900751641 != nil)
        let _method_get_bit_2522259332_name = StringName(from: "get_bit")
        self._method_get_bit_2522259332 = self.interface.pointee.classdb_get_method_bind(__godot_name_BitMap._native_ptr(), _method_get_bit_2522259332_name._native_ptr(), 2522259332)
        assert(BitMap._method_get_bit_2522259332 != nil)
        let _method_set_bit_rect_472162941_name = StringName(from: "set_bit_rect")
        self._method_set_bit_rect_472162941 = self.interface.pointee.classdb_get_method_bind(__godot_name_BitMap._native_ptr(), _method_set_bit_rect_472162941_name._native_ptr(), 472162941)
        assert(BitMap._method_set_bit_rect_472162941 != nil)
        let _method_get_true_bit_count_3905245786_name = StringName(from: "get_true_bit_count")
        self._method_get_true_bit_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_BitMap._native_ptr(), _method_get_true_bit_count_3905245786_name._native_ptr(), 3905245786)
        assert(BitMap._method_get_true_bit_count_3905245786 != nil)
        let _method_get_size_3690982128_name = StringName(from: "get_size")
        self._method_get_size_3690982128 = self.interface.pointee.classdb_get_method_bind(__godot_name_BitMap._native_ptr(), _method_get_size_3690982128_name._native_ptr(), 3690982128)
        assert(BitMap._method_get_size_3690982128 != nil)
        let _method_resize_1130785943_name = StringName(from: "resize")
        self._method_resize_1130785943 = self.interface.pointee.classdb_get_method_bind(__godot_name_BitMap._native_ptr(), _method_resize_1130785943_name._native_ptr(), 1130785943)
        assert(BitMap._method_resize_1130785943 != nil)
        let _method_grow_mask_3317281434_name = StringName(from: "grow_mask")
        self._method_grow_mask_3317281434 = self.interface.pointee.classdb_get_method_bind(__godot_name_BitMap._native_ptr(), _method_grow_mask_3317281434_name._native_ptr(), 3317281434)
        assert(BitMap._method_grow_mask_3317281434 != nil)
        let _method_convert_to_image_4190603485_name = StringName(from: "convert_to_image")
        self._method_convert_to_image_4190603485 = self.interface.pointee.classdb_get_method_bind(__godot_name_BitMap._native_ptr(), _method_convert_to_image_4190603485_name._native_ptr(), 4190603485)
        assert(BitMap._method_convert_to_image_4190603485 != nil)
        let _method_opaque_to_polygons_876132484_name = StringName(from: "opaque_to_polygons")
        self._method_opaque_to_polygons_876132484 = self.interface.pointee.classdb_get_method_bind(__godot_name_BitMap._native_ptr(), _method_opaque_to_polygons_876132484_name._native_ptr(), 876132484)
        assert(BitMap._method_opaque_to_polygons_876132484 != nil)
    }

    public func create(size: Vector2i)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_1130785943,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_from_image_alpha_505265891,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bitv_4153096796,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bit_1383440665,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bitv_3900751641,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bit_2522259332,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bit_rect_472162941,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_true_bit_count_3905245786,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_size_3690982128,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_resize_1130785943,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_grow_mask_3317281434,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_convert_to_image_4190603485,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_opaque_to_polygons_876132484,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PackedVector2Array](godot: __resPtr.pointee)
        }
    }
}