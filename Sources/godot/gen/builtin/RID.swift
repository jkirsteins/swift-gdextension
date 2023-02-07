/// autogenerated

import godot_native

fileprivate var __godot_name_RID: StringName! = nil

/// Handle for a [Resource]'s unique ID.
/// 
/// The RID [Variant] type is used to access a low-level resource by its unique ID. RIDs are opaque, which means they do not grant access to the resource by themselves. They are used by the low-level server classes, such as [DisplayServer], [RenderingServer], [TextServer], etc.
///  
/// A low-level resource may correspond to a high-level [Resource], such as [Texture] or [Mesh].
public class RID : BuiltinClass {

    

    public class var __godot_name: StringName { __godot_name_RID }

    public static let SIZE = 8;

    public let opaque: UnsafeMutableRawPointer
    
    static var _constructor_0: GDExtensionPtrConstructor? = nil
    static var _constructor_1: GDExtensionPtrConstructor? = nil
    static var _destructor: GDExtensionPtrDestructor? = nil

    public class func initialize_class() {
        // Init constructors before assigning __godot_name
        RID._constructor_0 =  RID.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RID, 0)
        assert(RID._constructor_0 != nil)
        RID._constructor_1 =  RID.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RID, 1)
        assert(RID._constructor_1 != nil)
        RID._destructor =  RID.interface.pointee.variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_RID)
        assert(RID._destructor != nil)

        // At this point constructors must be assigned
        __godot_name_RID = StringName(from: "RID")
    }

    /// Constructs an empty [RID] with the invalid ID [code]0[/code].
    public init() {
        self.opaque = .allocate(byteCount: 8, alignment: 4)
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            Self._constructor_0!(self._native_ptr(), .init(args.baseAddress!))
    }
    /// Constructs a [RID] as a copy of the given [RID].
    public init(from: RID) {
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