/// autogenerated

import godot_native

fileprivate var __godot_name_StringName: StringName! = nil

/// An optimized string type for unique names.
/// 
/// [StringName]s are immutable strings designed for general-purpose representation of unique names (also called "string interning"). [StringName] ensures that only one instance of a given name exists (so two [StringName]s with the same value are the same object). Comparing them is much faster than with regular [String]s, because only the pointers are compared, not the whole strings.
///  
/// You will usually just pass a [String] to methods expecting a [StringName] and it will be automatically converted, but you may occasionally want to construct a [StringName] ahead of time with [StringName] or, in GDScript, the literal syntax [code]&"example"[/code].
///  
/// See also [NodePath], which is a similar concept specifically designed to store pre-parsed node paths.
///  
/// Some string methods have corresponding variations. Variations suffixed with [code]n[/code] ([method countn], [method findn], [method replacen], etc.) are [b]case-insensitive[/b] (they make no distinction between uppercase and lowercase letters). Method variations prefixed with [code]r[/code] ([method rfind], [method rsplit], etc.) are reversed, and start from the end of the string, instead of the beginning.
///  
/// [b]Note:[/b] In a boolean context, a [StringName] will evaluate to [code]false[/code] if it is empty ([code]StringName("")[/code]). Otherwise, a [StringName] will always evaluate to [code]true[/code].
public class StringName : BuiltinClass {

    public static var interface: UnsafePointer<GDExtensionInterface>! = nil
    public static var library: GDExtensionClassLibraryPtr! = nil
    
    var interface: UnsafePointer<GDExtensionInterface> { Self.interface }

    

    public class var __godot_name: StringName { __godot_name_StringName }

    public static let SIZE = 8;

    public let opaque: UnsafeMutableRawPointer
    
    static var _constructor_0: GDExtensionPtrConstructor? = nil
    static var _constructor_1: GDExtensionPtrConstructor? = nil
    static var _constructor_2: GDExtensionPtrConstructor? = nil
    static var _destructor: GDExtensionPtrDestructor? = nil

    public class func initialize_class(_ ginit: GodotInitializer, _: GDExtensionInitializationLevel) {
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        // Init constructors before assigning __godot_name
        StringName._constructor_0 =  StringName.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_STRING_NAME, 0)
        assert(StringName._constructor_0 != nil)
        StringName._constructor_1 =  StringName.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_STRING_NAME, 1)
        assert(StringName._constructor_1 != nil)
        StringName._constructor_2 =  StringName.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_STRING_NAME, 2)
        assert(StringName._constructor_2 != nil)
        StringName._destructor =  StringName.interface.pointee.variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_STRING_NAME)
        assert(StringName._destructor != nil)
    }

    public class func initialize_godot_name() {
        // At this point constructors for String and StringName
        // must be assigned
        __godot_name_StringName = StringName(from: "StringName")
    }

    /// Constructs an empty [StringName].
    public init() {
        self.opaque = .allocate(byteCount: 8, alignment: 4)
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            Self._constructor_0!(self._native_ptr(), .init(args.baseAddress!))
    }
    /// Constructs a [StringName] as a copy of the given [StringName].
    public init(from: StringName) {
        self.opaque = .allocate(byteCount: 8, alignment: 4)
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native)
            ])
            // call here
            Self._constructor_1!(self._native_ptr(), .init(args.baseAddress!))
    }
    /// Creates a new [StringName] from the given [String]. In GDScript, [code]StringName("example")[/code] is equivalent to [code]&"example"[/code].
    public init(from: godot.String) {
        self.opaque = .allocate(byteCount: 8, alignment: 4)
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