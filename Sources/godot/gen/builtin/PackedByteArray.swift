/// autogenerated

import godot_native

fileprivate var __godot_name_PackedByteArray: StringName! = nil

/// A packed array of bytes.
/// 
/// An array specifically designed to hold bytes. Packs data tightly, so it saves memory for large array sizes.
///  
/// [PackedByteArray] also provides methods to encode/decode various types to/from bytes. The way values are encoded is an implementation detail and shouldn't be relied upon when interacting with external apps.
public class PackedByteArray : BuiltinClass {

    public static var interface: UnsafePointer<GDExtensionInterface>! = nil
    public static var library: GDExtensionClassLibraryPtr! = nil
    
    var interface: UnsafePointer<GDExtensionInterface> { Self.interface }

    

    public class var __godot_name: StringName { __godot_name_PackedByteArray }

    public static let SIZE = 16;

    public let opaque: UnsafeMutableRawPointer
    
    static var _constructor_0: GDExtensionPtrConstructor? = nil
    static var _constructor_1: GDExtensionPtrConstructor? = nil
    static var _constructor_2: GDExtensionPtrConstructor? = nil
    static var _destructor: GDExtensionPtrDestructor? = nil

    public class func initialize_class(_ ginit: GodotInitializer, _: GDExtensionInitializationLevel) {
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        // Init constructors before assigning __godot_name
        PackedByteArray._constructor_0 =  PackedByteArray.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, 0)
        assert(PackedByteArray._constructor_0 != nil)
        PackedByteArray._constructor_1 =  PackedByteArray.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, 1)
        assert(PackedByteArray._constructor_1 != nil)
        PackedByteArray._constructor_2 =  PackedByteArray.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, 2)
        assert(PackedByteArray._constructor_2 != nil)
        PackedByteArray._destructor =  PackedByteArray.interface.pointee.variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)
        assert(PackedByteArray._destructor != nil)
    }

    public class func initialize_godot_name() {
        // At this point constructors for String and StringName
        // must be assigned
        __godot_name_PackedByteArray = StringName(from: "PackedByteArray")
    }

    /// Constructs an empty [PackedByteArray].
    public init() {
        self.opaque = .allocate(byteCount: 16, alignment: 4)
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            Self._constructor_0!(self._native_ptr(), .init(args.baseAddress!))
    }
    /// Constructs a [PackedByteArray] as a copy of the given [PackedByteArray].
    public init(from: PackedByteArray) {
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
    /// Constructs a new [PackedByteArray]. Optionally, you can pass in a generic [Array] that will be converted.
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
    public required init(godot unsafe: UnsafeRawPointer) {
        self.opaque = .init(mutating: unsafe)
    }
    public required init(godot unsafe: UnsafeMutableRawPointer) {
        self.opaque = unsafe
    }

    deinit {
        Self._destructor?(self._native_ptr())
        opaque.deallocate()
    }
}