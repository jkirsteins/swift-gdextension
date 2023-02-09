import godot_native

fileprivate var __godot_name_InstancePlaceholder: StringName! = nil

/// Placeholder for the root [Node] of a [PackedScene].
/// 
/// Turning on the option [b]Load As Placeholder[/b] for an instantiated scene in the editor causes it to be replaced by an [InstancePlaceholder] when running the game, this will not replace the node in the editor. This makes it possible to delay actually loading the scene until calling [method create_instance]. This is useful to avoid loading large scenes all at once by loading parts of it selectively.
///  
/// The [InstancePlaceholder] does not have a transform. This causes any child nodes to be positioned relatively to the [Viewport] from point (0,0), rather than their parent as displayed in the editor. Replacing the placeholder with a scene with a transform will transform children relatively to their parent again.
open class InstancePlaceholder : Node {

    

    public override class var __godot_name: StringName { __godot_name_InstancePlaceholder }

    static var _method_get_stored_values_2230153369: StringName! = nil
    static var _method_create_instance_3794612210: StringName! = nil
    static var _method_get_instance_path_201670096: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_InstancePlaceholder == nil)
        __godot_name_InstancePlaceholder = StringName(from: "InstancePlaceholder")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_stored_values_2230153369 = StringName(from: "get_stored_values")
        assert(self._method_get_stored_values_2230153369 != nil)
        self._method_create_instance_3794612210 = StringName(from: "create_instance")
        assert(self._method_create_instance_3794612210 != nil)
        self._method_get_instance_path_201670096 = StringName(from: "get_instance_path")
        assert(self._method_get_instance_path_201670096 != nil)
    }

    public func get_stored_values(with_order: UInt8) -> Dictionary {
        withUnsafePointer(to: with_order) { with_order_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(with_order_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_stored_values_2230153369._native_ptr(),
                    2230153369)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
        }
    }
    public func create_instance(replace: UInt8, custom_scene: PackedScene) -> Node {
        withUnsafePointer(to: replace) { replace_native in
        let custom_scene_native = custom_scene._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(replace_native), .init(custom_scene_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_instance_3794612210._native_ptr(),
                    3794612210)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(godot: __resPtr.pointee)
        }
    }
    public func get_instance_path() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_instance_path_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
}