/// autogenerated

import godot_native

fileprivate var __godot_name_PackedInt64Array: StringName! = nil

/// A packed array of 64-bit integers.
/// 
/// An array specifically designed to hold 64-bit integer values. Packs data tightly, so it saves memory for large array sizes.
///  
/// [b]Note:[/b] This type stores signed 64-bit integers, which means it can take values in the interval [code][-2^63, 2^63 - 1][/code], i.e. [code][-9223372036854775808, 9223372036854775807][/code]. Exceeding those bounds will wrap around. If you only need to pack 32-bit integers tightly, see [PackedInt32Array] for a more memory-friendly alternative.
public class PackedInt64Array : BuiltinClass {

    

    public class var __godot_name: StringName { __godot_name_PackedInt64Array }

    public static let SIZE = 16;

    public let opaque: UnsafeMutableRawPointer
    
    static var _constructor_0: GDExtensionPtrConstructor? = nil
    static var _constructor_1: GDExtensionPtrConstructor? = nil
    static var _constructor_2: GDExtensionPtrConstructor? = nil
    static var _destructor: GDExtensionPtrDestructor? = nil

    public class func initialize_class() {
        // Init constructors before assigning __godot_name
        PackedInt64Array._constructor_0 =  PackedInt64Array.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, 0)
        assert(PackedInt64Array._constructor_0 != nil)
        PackedInt64Array._constructor_1 =  PackedInt64Array.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, 1)
        assert(PackedInt64Array._constructor_1 != nil)
        PackedInt64Array._constructor_2 =  PackedInt64Array.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY, 2)
        assert(PackedInt64Array._constructor_2 != nil)
        PackedInt64Array._destructor =  PackedInt64Array.interface.pointee.variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)
        assert(PackedInt64Array._destructor != nil)

        // At this point constructors must be assigned
        __godot_name_PackedInt64Array = StringName(from: "PackedInt64Array")
    }

    /// Constructs an empty [PackedInt64Array].
    public init() {
        self.opaque = .allocate(byteCount: 16, alignment: 4)
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            Self._constructor_0!(self._native_ptr(), .init(args.baseAddress!))
    }
    /// Constructs a [PackedInt64Array] as a copy of the given [PackedInt64Array].
    public init(from: PackedInt64Array) {
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
    /// Constructs a new [PackedInt64Array]. Optionally, you can pass in a generic [Array] that will be converted.
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