import godot_native
fileprivate var __godot_name_Variant: StringName! = nil
/// The most important data type in Godot.
/// 
/// In computer programming, a Variant class is a class that is designed to store a variety of other types. Dynamic programming languages like PHP, Lua, JavaScript and GDScript like to use them to store variables' data on the backend. With these Variants, properties are able to change value types freely.
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var foo = 2 # foo is dynamically an integer
///  
/// foo = "Now foo is a string!"
///  
/// foo = RefCounted.new() # foo is an Object
///  
/// var bar: int = 2 # bar is a statically typed integer.
///  
/// # bar = "Uh oh! I can't make static variables become a different type!"
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// // ... but C# is statically typed. Once a variable has a type it cannot be changed. However you can use the var keyword in methods to let the compiler decide the type automatically.
///  
/// var foo = 2; // Foo is a 32-bit integer (int). Be cautious, integers in GDScript are 64-bit and the direct C# equivalent is "long".
///  
/// // foo = "foo was and will always be an integer. It cannot be turned into a string!";
///  
/// var boo = "Boo is a string!";
///  
/// var ref = new Reference(); // var is especially useful when used together with a constructor.
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// Godot tracks all scripting API variables within Variants. Without even realizing it, you use Variants all the time. When a particular language enforces its own rules for keeping data typed, then that language is applying its own custom logic over the base Variant scripting API.
///  
/// - GDScript automatically wrap values in them. It keeps all data in plain Variants by default and then optionally enforces custom static typing rules on variable types.
///  
/// - C# is statically typed, but uses the Mono [code]object[/code] type in place of Godot's Variant class when it needs to represent a dynamic value. [code]object[/code] is the Mono runtime's equivalent of the same concept.
///  
/// The global [method @GlobalScope.typeof] function returns the enumerated value of the Variant type stored in the current variable (see [enum Variant.Type]).
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var foo = 2
///  
/// match typeof(foo):
///  
///     TYPE_NIL:
///  
///         print("foo is null")
///  
///     TYPE_INTEGER:
///  
///         print("foo is an integer")
///  
///     TYPE_OBJECT:
///  
///         # Note that Objects are their own special category.
///  
///         # To get the name of the underlying Object type, you need the `get_class()` method.
///  
///         print("foo is a(n) %s" % foo.get_class()) # inject the class name into a formatted string.
///  
///         # Note also that there is not yet any way to get a script's `class_name` string easily.
///  
///         # To fetch that value, you can parse the [code]res://.godot/global_script_class_cache.cfg[/code] file with the [ConfigFile] API.
///  
///         # Open your project.godot file to see it up close.
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// int foo = 2;
///  
/// if (foo == null)
///  
/// {
///  
///     GD.Print("foo is null");
///  
/// }
///  
/// if (foo is int)
///  
/// {
///  
///     GD.Print("foo is an integer");
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// A Variant takes up only 20 bytes and can store almost any engine datatype inside of it. Variants are rarely used to hold information for long periods of time. Instead, they are used mainly for communication, editing, serialization and moving data around.
///  
/// Godot has specifically invested in making its Variant class as flexible as possible; so much so that it is used for a multitude of operations to facilitate communication between all of Godot's systems.
///  
/// A Variant:
///  
/// - Can store almost any datatype.
///  
/// - Can perform operations between many variants. GDScript uses Variant as its atomic/native datatype.
///  
/// - Can be hashed, so it can be compared quickly to other variants.
///  
/// - Can be used to convert safely between datatypes.
///  
/// - Can be used to abstract calling methods and their arguments. Godot exports all its functions through variants.
///  
/// - Can be used to defer calls or move data between threads.
///  
/// - Can be serialized as binary and stored to disk, or transferred via network.
///  
/// - Can be serialized to text and use it for printing values and editable settings.
///  
/// - Can work as an exported property, so the editor can edit it universally.
///  
/// - Can be used for dictionaries, arrays, parsers, etc.
///  
/// [b]Containers (Array and Dictionary):[/b] Both are implemented using variants. A [Dictionary] can match any datatype used as key to any other datatype. An [Array] just holds an array of Variants. Of course, a Variant can also hold a [Dictionary] and an [Array] inside, making it even more flexible.
///  
/// Modifications to a container will modify all references to it. A [Mutex] should be created to lock it if multi-threaded access is desired.
import godot_native
public class Variant : BuiltinClass {
    public class var __godot_name: StringName { __godot_name_Variant }
    public static var interface: UnsafePointer<GDExtensionInterface>! = nil
    public static var library: GDExtensionClassLibraryPtr! = nil
    
    var interface: UnsafePointer<GDExtensionInterface> { Self.interface }
    public static let SIZE = 40
    public let opaque: UnsafeMutableRawPointer
    
    public class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library
        __godot_name_Variant = StringName(from: "Variant")
    }
    public init() {
        self.opaque = Self.interface.pointee.mem_alloc(Self.SIZE)!
    }
    public required init(godot unsafePtr: UnsafeRawPointer) {
        self.opaque = .init(mutating: unsafePtr)
    }
    deinit {
        self.interface.pointee.variant_destroy(opaque)
        self.interface.pointee.mem_free(opaque)
    }
}