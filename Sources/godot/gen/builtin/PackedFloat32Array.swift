/// autogenerated

import godot_native

fileprivate var __godot_name_PackedFloat32Array: StringName! = nil

/// A packed array of 32-bit floating-point values.
/// 
/// An array specifically designed to hold 32-bit floating-point values (float). Packs data tightly, so it saves memory for large array sizes.
///  
/// If you need to pack 64-bit floats tightly, see [PackedFloat64Array].
public class PackedFloat32Array : BuiltinClass {

    

    public class var __godot_name: StringName { __godot_name_PackedFloat32Array }

    public static let SIZE = 16;

    public let opaque: UnsafeMutableRawPointer
    
    static var _constructor_0: GDExtensionPtrConstructor? = nil
    static var _constructor_1: GDExtensionPtrConstructor? = nil
    static var _constructor_2: GDExtensionPtrConstructor? = nil
    static var _destructor: GDExtensionPtrDestructor? = nil

    public class func initialize_class() {
        // Init constructors before assigning __godot_name
        PackedFloat32Array._constructor_0 =  PackedFloat32Array.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY, 0)
        assert(PackedFloat32Array._constructor_0 != nil)
        PackedFloat32Array._constructor_1 =  PackedFloat32Array.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY, 1)
        assert(PackedFloat32Array._constructor_1 != nil)
        PackedFloat32Array._constructor_2 =  PackedFloat32Array.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY, 2)
        assert(PackedFloat32Array._constructor_2 != nil)
        PackedFloat32Array._destructor =  PackedFloat32Array.interface.pointee.variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY)
        assert(PackedFloat32Array._destructor != nil)

        // At this point constructors must be assigned
        __godot_name_PackedFloat32Array = StringName(from: "PackedFloat32Array")
    }

    /// Constructs an empty [PackedFloat32Array].
    public init() {
        self.opaque = .allocate(byteCount: 16, alignment: 4)
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            Self._constructor_0!(self._native_ptr(), .init(args.baseAddress!))
    }
    /// Constructs a [PackedFloat32Array] as a copy of the given [PackedFloat32Array].
    public init(from: PackedFloat32Array) {
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
    /// Constructs a new [PackedFloat32Array]. Optionally, you can pass in a generic [Array] that will be converted.
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