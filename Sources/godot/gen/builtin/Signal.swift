/// autogenerated

import godot_native

fileprivate var __godot_name_Signal: StringName! = nil

/// Built-in type representing a signal defined in an object.
/// 
/// [Signal] is a built-in [Variant] type that represents a signal of an [Object] instance. Like all [Variant] types, it can be stored in variables and passed to functions. Signals allow all connected [Callable]s (and by extension their respective objects) to listen and react to events, without directly referencing one another. This keeps the code flexible and easier to manage.
///  
/// In GDScript, signals can be declared with the [code]signal[/code] keyword. In C#, you may use the [code][Signal][/code] attribute on a delegate.
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// signal attacked
///  
///  
/// # Additional arguments may be declared.
///  
/// # These arguments must be passed when the signal is emitted.
///  
/// signal item_dropped(item_name, amount)
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// [Signal]
///  
/// delegate void AttackedEventHandler();
///  
///  
/// // Additional arguments may be declared.
///  
/// // These arguments must be passed when the signal is emitted.
///  
/// [Signal]
///  
/// delegate void ItemDroppedEventHandler(string itemName, int amount);
///  
/// [/csharp]
///  
/// [/codeblocks]
public class Signal : BuiltinClass {

    

    public class var __godot_name: StringName { __godot_name_Signal }

    public static let SIZE = 16;

    public let opaque: UnsafeMutableRawPointer
    
    static var _constructor_0: GDExtensionPtrConstructor? = nil
    static var _constructor_1: GDExtensionPtrConstructor? = nil
    static var _constructor_2: GDExtensionPtrConstructor? = nil
    static var _destructor: GDExtensionPtrDestructor? = nil

    public class func initialize_class() {
        // Init constructors before assigning __godot_name
        Signal._constructor_0 =  Signal.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_SIGNAL, 0)
        assert(Signal._constructor_0 != nil)
        Signal._constructor_1 =  Signal.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_SIGNAL, 1)
        assert(Signal._constructor_1 != nil)
        Signal._constructor_2 =  Signal.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_SIGNAL, 2)
        assert(Signal._constructor_2 != nil)
        Signal._destructor =  Signal.interface.pointee.variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_SIGNAL)
        assert(Signal._destructor != nil)

        // At this point constructors must be assigned
        __godot_name_Signal = StringName(from: "Signal")
    }

    /// Constructs an empty [Signal] with no object nor signal name bound.
    public init() {
        self.opaque = .allocate(byteCount: 16, alignment: 4)
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            Self._constructor_0!(self._native_ptr(), .init(args.baseAddress!))
    }
    /// Constructs a [Signal] as a copy of the given [Signal].
    public init(from: Signal) {
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
    /// Creates a new [Signal] named [param signal] in the specified [param object].
    public init(object: Object, signal: StringName) {
        self.opaque = .allocate(byteCount: 16, alignment: 4)
        let signal_native = signal._native_ptr()
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native), .init(signal_native)
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