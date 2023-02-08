/// autogenerated

import godot_native

fileprivate var __godot_name_NodePath: StringName! = nil

/// Pre-parsed scene tree path.
/// 
/// A pre-parsed relative or absolute path in a scene tree, for use with [method Node.get_node] and similar functions. It can reference a node, a resource within a node, or a property of a node or resource. For example, [code]"Path2D/PathFollow2D/Sprite2D:texture:size"[/code] would refer to the [code]size[/code] property of the [code]texture[/code] resource on the node named [code]"Sprite2D"[/code] which is a child of the other named nodes in the path.
///  
/// You will usually just pass a string to [method Node.get_node] and it will be automatically converted, but you may occasionally want to parse a path ahead of time with [NodePath] or the literal syntax [code]^"path"[/code]. Exporting a [NodePath] variable will give you a node selection widget in the properties panel of the editor, which can often be useful.
///  
/// A [NodePath] is composed of a list of slash-separated node names (like a filesystem path) and an optional colon-separated list of "subnames" which can be resources or properties.
///  
/// Some examples of NodePaths include the following:
///  
/// [codeblock]
///  
/// # No leading slash means it is relative to the current node.
///  
/// ^"A" # Immediate child A
///  
/// ^"A/B" # A's child B
///  
/// ^"." # The current node.
///  
/// ^".." # The parent node.
///  
/// ^"../C" # A sibling node C.
///  
/// # A leading slash means it is absolute from the SceneTree.
///  
/// ^"/root" # Equivalent to get_tree().get_root().
///  
/// ^"/root/Main" # If your main scene's root node were named "Main".
///  
/// ^"/root/MyAutoload" # If you have an autoloaded node or scene.
///  
/// [/codeblock]
///  
/// See also [StringName], which is a similar concept for general-purpose string interning.
///  
/// [b]Note:[/b] In the editor, [NodePath] properties are automatically updated when moving, renaming or deleting a node in the scene tree, but they are never updated at runtime.
public class NodePath : BuiltinClass {

    public static var interface: UnsafePointer<GDExtensionInterface>! = nil
    public static var library: GDExtensionClassLibraryPtr! = nil
    
    var interface: UnsafePointer<GDExtensionInterface> { Self.interface }

    

    public class var __godot_name: StringName { __godot_name_NodePath }

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
        NodePath._constructor_0 =  NodePath.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_NODE_PATH, 0)
        assert(NodePath._constructor_0 != nil)
        NodePath._constructor_1 =  NodePath.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_NODE_PATH, 1)
        assert(NodePath._constructor_1 != nil)
        NodePath._constructor_2 =  NodePath.interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_NODE_PATH, 2)
        assert(NodePath._constructor_2 != nil)
        NodePath._destructor =  NodePath.interface.pointee.variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_NODE_PATH)
        assert(NodePath._destructor != nil)
    }

    public class func initialize_godot_name() {
        // At this point constructors for String and StringName
        // must be assigned
        __godot_name_NodePath = StringName(from: "NodePath")
    }

    /// Constructs an empty [NodePath].
    public init() {
        self.opaque = .allocate(byteCount: 8, alignment: 4)
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            Self._constructor_0!(self._native_ptr(), .init(args.baseAddress!))
    }
    /// Constructs a [NodePath] as a copy of the given [NodePath]. [code]NodePath("example")[/code] is equivalent to [code]^"example"[/code].
    public init(from: NodePath) {
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
    /// Creates a NodePath from a string, e.g. [code]"Path2D/PathFollow2D/Sprite2D:texture:size"[/code]. A path is absolute if it starts with a slash. Absolute paths are only valid in the global scene tree, not within individual scenes. In a relative path, [code]"."[/code] and [code]".."[/code] indicate the current node and its parent.
    ///  
    /// The "subnames" optionally included after the path to the target node can point to resources or properties, and can also be nested.
    ///  
    /// Examples of valid NodePaths (assuming that those nodes exist and have the referenced resources or properties):
    ///  
    /// [codeblock]
    ///  
    /// # Points to the Sprite2D node.
    ///  
    /// "Path2D/PathFollow2D/Sprite2D"
    ///  
    /// # Points to the Sprite2D node and its "texture" resource.
    ///  
    /// # get_node() would retrieve "Sprite2D", while get_node_and_resource()
    ///  
    /// # would retrieve both the Sprite2D node and the "texture" resource.
    ///  
    /// "Path2D/PathFollow2D/Sprite2D:texture"
    ///  
    /// # Points to the Sprite2D node and its "position" property.
    ///  
    /// "Path2D/PathFollow2D/Sprite2D:position"
    ///  
    /// # Points to the Sprite2D node and the "x" component of its "position" property.
    ///  
    /// "Path2D/PathFollow2D/Sprite2D:position:x"
    ///  
    /// # Absolute path (from "root")
    ///  
    /// "/root/Level/Path2D"
    ///  
    /// [/codeblock]
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