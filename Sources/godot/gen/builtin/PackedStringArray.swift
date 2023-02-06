/// autogenerated

import godot_native

fileprivate var __godot_name_PackedStringArray: StringName! = nil

/// A packed array of [String]s.
/// 
/// An array specifically designed to hold [String]s. Packs data tightly, so it saves memory for large array sizes.
///  
/// If you want to join the strings in the array, use [method String.join].
///  
/// [codeblock]
///  
/// var string_array = PackedStringArray(["hello", "world"])
///  
/// var string = " ".join(string_array)
///  
/// print(string) # "hello world"
///  
/// [/codeblock]
public class PackedStringArray : BuiltinClass {
    public class var __godot_name: StringName { __godot_name_PackedStringArray }

    public static let SIZE = 16;

    public let opaque: UnsafeMutableRawPointer
    
    static var _constructor_0: GDExtensionPtrConstructor? = nil
    static var _constructor_1: GDExtensionPtrConstructor? = nil
    static var _constructor_2: GDExtensionPtrConstructor? = nil
    static var _destructor: GDExtensionPtrDestructor? = nil

    public class func initialize_class() {
        // Init constructors before assigning __godot_name
        PackedStringArray._constructor_0 =  PackedStringArray.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, 0)
        assert(PackedStringArray._constructor_0 != nil)
        PackedStringArray._constructor_1 =  PackedStringArray.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, 1)
        assert(PackedStringArray._constructor_1 != nil)
        PackedStringArray._constructor_2 =  PackedStringArray.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, 2)
        assert(PackedStringArray._constructor_2 != nil)
        PackedStringArray._destructor =  PackedStringArray.interface.pointee.variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)
        assert(PackedStringArray._destructor != nil)

        // At this point constructors must be assigned
        __godot_name_PackedStringArray = StringName(from: "PackedStringArray")
    }

    /// Constructs an empty [PackedStringArray].
    public init() {
        self.opaque = .allocate(byteCount: Self.SIZE, alignment: 4)
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
        Self._constructor_0!(self._native_ptr(), .init(args.baseAddress!))
    }
    /// Constructs a [PackedStringArray] as a copy of the given [PackedStringArray].
    public init(from: PackedStringArray) {
        self.opaque = .allocate(byteCount: Self.SIZE, alignment: 4)
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(from._native_ptr())
        ])
        Self._constructor_1!(self._native_ptr(), .init(args.baseAddress!))
    }
    /// Constructs a new [PackedStringArray]. Optionally, you can pass in a generic [Array] that will be converted.
    public init(from: Array) {
        self.opaque = .allocate(byteCount: Self.SIZE, alignment: 4)
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(from._native_ptr())
        ])
        Self._constructor_2!(self._native_ptr(), .init(args.baseAddress!))
    }
        init(from unsafe: UnsafeRawPointer) {
            self.opaque = .init(mutating: unsafe)
        }
        
        init(from unsafe: UnsafeMutableRawPointer) {
            self.opaque = unsafe
        }

    deinit {
        Self._destructor?(self._native_ptr())
        opaque.deallocate()
    }
}