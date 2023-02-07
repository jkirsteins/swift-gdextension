import godot_native

fileprivate var __godot_name_InstancePlaceholder: StringName! = nil

/// Placeholder for the root [Node] of a [PackedScene].
/// 
/// Turning on the option [b]Load As Placeholder[/b] for an instantiated scene in the editor causes it to be replaced by an [InstancePlaceholder] when running the game, this will not replace the node in the editor. This makes it possible to delay actually loading the scene until calling [method create_instance]. This is useful to avoid loading large scenes all at once by loading parts of it selectively.
///  
/// The [InstancePlaceholder] does not have a transform. This causes any child nodes to be positioned relatively to the [Viewport] from point (0,0), rather than their parent as displayed in the editor. Replacing the placeholder with a scene with a transform will transform children relatively to their parent again.
public class InstancePlaceholder : Node {

    

    public override class var __godot_name: StringName { __godot_name_InstancePlaceholder }

    static var _method_get_stored_values_2230153369: GDExtensionMethodBindPtr! = nil
    static var _method_create_instance_3794612210: GDExtensionMethodBindPtr! = nil
    static var _method_get_instance_path_201670096: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_InstancePlaceholder = StringName(from: "InstancePlaceholder")

        let _method_get_stored_values_2230153369_name = StringName(from: "get_stored_values")
        self._method_get_stored_values_2230153369 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_stored_values_2230153369_name._native_ptr(), 2230153369)
        assert(InstancePlaceholder._method_get_stored_values_2230153369 != nil)
        let _method_create_instance_3794612210_name = StringName(from: "create_instance")
        self._method_create_instance_3794612210 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_instance_3794612210_name._native_ptr(), 3794612210)
        assert(InstancePlaceholder._method_create_instance_3794612210 != nil)
        let _method_get_instance_path_201670096_name = StringName(from: "get_instance_path")
        self._method_get_instance_path_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_instance_path_201670096_name._native_ptr(), 201670096)
        assert(InstancePlaceholder._method_get_instance_path_201670096 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stored_values_2230153369,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_instance_3794612210,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(from: __resPtr.pointee)
        }
    }
    public func get_instance_path() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_instance_path_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
}