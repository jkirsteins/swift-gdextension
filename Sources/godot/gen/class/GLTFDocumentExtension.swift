import godot_native

fileprivate var __godot_name_GLTFDocumentExtension: StringName! = nil

/// MISSING
/// 
/// MISSING
open class GLTFDocumentExtension : Resource {

    

    public override class var __godot_name: StringName { __godot_name_GLTFDocumentExtension }

    static var _method__import_preflight_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_supported_extensions_0: GDExtensionMethodBindPtr! = nil
    static var _method__parse_node_extensions_0: GDExtensionMethodBindPtr! = nil
    static var _method__generate_scene_node_0: GDExtensionMethodBindPtr! = nil
    static var _method__import_post_parse_0: GDExtensionMethodBindPtr! = nil
    static var _method__import_node_0: GDExtensionMethodBindPtr! = nil
    static var _method__import_post_0: GDExtensionMethodBindPtr! = nil
    static var _method__export_preflight_0: GDExtensionMethodBindPtr! = nil
    static var _method__convert_scene_node_0: GDExtensionMethodBindPtr! = nil
    static var _method__export_node_0: GDExtensionMethodBindPtr! = nil
    static var _method__export_post_0: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_GLTFDocumentExtension = StringName(from: "GLTFDocumentExtension")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    public func _import_preflight(state: GLTFState, extensions: PackedStringArray) -> Error {
        let extensions_native = extensions._native_ptr()
        let state_native = state._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(state_native), .init(extensions_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__import_preflight_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func _get_supported_extensions() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_supported_extensions_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func _parse_node_extensions(state: GLTFState, gltf_node: GLTFNode, extensions: Dictionary) -> Error {
        let extensions_native = extensions._native_ptr()
        let gltf_node_native = gltf_node._native_ptr()
        let state_native = state._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(state_native), .init(gltf_node_native), .init(extensions_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__parse_node_extensions_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func _generate_scene_node(state: GLTFState, gltf_node: GLTFNode, scene_parent: Node) -> Node3D {
        let scene_parent_native = scene_parent._native_ptr()
        let gltf_node_native = gltf_node._native_ptr()
        let state_native = state._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(state_native), .init(gltf_node_native), .init(scene_parent_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__generate_scene_node_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node3D(godot: __resPtr.pointee)
    }
    public func _import_post_parse(state: GLTFState) -> Error {
        let state_native = state._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(state_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__import_post_parse_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func _import_node(state: GLTFState, gltf_node: GLTFNode, json: Dictionary, node: Node) -> Error {
        let node_native = node._native_ptr()
        let json_native = json._native_ptr()
        let gltf_node_native = gltf_node._native_ptr()
        let state_native = state._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(state_native), .init(gltf_node_native), .init(json_native), .init(node_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__import_node_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func _import_post(state: GLTFState, root: Node) -> Error {
        let root_native = root._native_ptr()
        let state_native = state._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(state_native), .init(root_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__import_post_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func _export_preflight(state: GLTFState, root: Node) -> Error {
        let root_native = root._native_ptr()
        let state_native = state._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(state_native), .init(root_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__export_preflight_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func _convert_scene_node(state: GLTFState, gltf_node: GLTFNode, scene_node: Node)  {
        let scene_node_native = scene_node._native_ptr()
        let gltf_node_native = gltf_node._native_ptr()
        let state_native = state._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(state_native), .init(gltf_node_native), .init(scene_node_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__convert_scene_node_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _export_node(state: GLTFState, gltf_node: GLTFNode, json: Dictionary, node: Node) -> Error {
        let node_native = node._native_ptr()
        let json_native = json._native_ptr()
        let gltf_node_native = gltf_node._native_ptr()
        let state_native = state._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(state_native), .init(gltf_node_native), .init(json_native), .init(node_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__export_node_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func _export_post(state: GLTFState) -> Error {
        let state_native = state._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(state_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__export_post_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
}