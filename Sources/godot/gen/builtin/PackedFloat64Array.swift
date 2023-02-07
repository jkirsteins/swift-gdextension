/// autogenerated

import godot_native

fileprivate var __godot_name_PackedFloat64Array: StringName! = nil

/// A packed array of 64-bit floating-point values.
/// 
/// An array specifically designed to hold 64-bit floating-point values (double). Packs data tightly, so it saves memory for large array sizes.
///  
/// If you only need to pack 32-bit floats tightly, see [PackedFloat32Array] for a more memory-friendly alternative.
public class PackedFloat64Array : BuiltinClass {

    

    public class var __godot_name: StringName { __godot_name_PackedFloat64Array }

    public static let SIZE = 16;

    public let opaque: UnsafeMutableRawPointer
    
    static var _constructor_0: GDExtensionPtrConstructor? = nil
    static var _constructor_1: GDExtensionPtrConstructor? = nil
    static var _constructor_2: GDExtensionPtrConstructor? = nil
    static var _destructor: GDExtensionPtrDestructor? = nil

    public class func initialize_class() {
        // Init constructors before assigning __godot_name
        PackedFloat64Array._constructor_0 =  PackedFloat64Array.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, 0)
        assert(PackedFloat64Array._constructor_0 != nil)
        PackedFloat64Array._constructor_1 =  PackedFloat64Array.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, 1)
        assert(PackedFloat64Array._constructor_1 != nil)
        PackedFloat64Array._constructor_2 =  PackedFloat64Array.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, 2)
        assert(PackedFloat64Array._constructor_2 != nil)
        PackedFloat64Array._destructor =  PackedFloat64Array.interface.pointee.variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY)
        assert(PackedFloat64Array._destructor != nil)

        // At this point constructors must be assigned
        __godot_name_PackedFloat64Array = StringName(from: "PackedFloat64Array")
    }

    /// Constructs an empty [PackedFloat64Array].
    public init() {
        self.opaque = .allocate(byteCount: 16, alignment: 4)
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            Self._constructor_0!(self._native_ptr(), .init(args.baseAddress!))
    }
    /// Constructs a [PackedFloat64Array] as a copy of the given [PackedFloat64Array].
    public init(from: PackedFloat64Array) {
        self.opaque = .allocate(byteCount: 16, alignment: 4)
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native)
            ])
            // call here
            Self._constructor_1!(self._native_ptr(), .init(args.baseAddress!))
    }
    /// Constructs a new [PackedFloat64Array]. Optionally, you can pass in a generic [Array] that will be converted.
    public init(from: Array) {
        self.opaque = .allocate(byteCount: 16, alignment: 4)
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native)
            ])
            // call here
            Self._constructor_2!(self._native_ptr(), .init(args.baseAddress!))
    }
    public required init(from unsafe: UnsafeRawPointer) {
        self.opaque = .init(mutating: unsafe)
    }
    public required init(from unsafe: UnsafeMutableRawPointer) {
        self.opaque = unsafe
    }

    deinit {
        Self._destructor?(self._native_ptr())
        opaque.deallocate()
    }
}