import godot_native

fileprivate var __godot_name_EditorResourcePreview: StringName! = nil

/// Helper to generate previews of resources or files.
/// 
/// This object is used to generate previews for resources of files.
///  
/// [b]Note:[/b] This class shouldn't be instantiated directly. Instead, access the singleton using [method EditorInterface.get_resource_previewer].
open class EditorResourcePreview : Node {

    

    public override class var __godot_name: StringName { __godot_name_EditorResourcePreview }

    static var _method_queue_resource_preview_233177534: StringName! = nil
    static var _method_queue_edited_resource_preview_1608376650: StringName! = nil
    static var _method_add_preview_generator_332288124: StringName! = nil
    static var _method_remove_preview_generator_332288124: StringName! = nil
    static var _method_check_for_invalidation_83702148: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_EditorResourcePreview == nil)
        __godot_name_EditorResourcePreview = StringName(from: "EditorResourcePreview")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_queue_resource_preview_233177534 = StringName(from: "queue_resource_preview")
        assert(self._method_queue_resource_preview_233177534 != nil)
        self._method_queue_edited_resource_preview_1608376650 = StringName(from: "queue_edited_resource_preview")
        assert(self._method_queue_edited_resource_preview_1608376650 != nil)
        self._method_add_preview_generator_332288124 = StringName(from: "add_preview_generator")
        assert(self._method_add_preview_generator_332288124 != nil)
        self._method_remove_preview_generator_332288124 = StringName(from: "remove_preview_generator")
        assert(self._method_remove_preview_generator_332288124 != nil)
        self._method_check_for_invalidation_83702148 = StringName(from: "check_for_invalidation")
        assert(self._method_check_for_invalidation_83702148 != nil)
    }

    public func queue_resource_preview(path: godot.String, receiver: Object, receiver_func: StringName, userdata: Variant)  {
        let userdata_native = userdata._native_ptr()
        let receiver_func_native = receiver_func._native_ptr()
        let receiver_native = receiver._native_ptr()
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(receiver_native), .init(receiver_func_native), .init(userdata_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_queue_resource_preview_233177534._native_ptr(),
                    233177534)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func queue_edited_resource_preview(resource: Resource, receiver: Object, receiver_func: StringName, userdata: Variant)  {
        let userdata_native = userdata._native_ptr()
        let receiver_func_native = receiver_func._native_ptr()
        let receiver_native = receiver._native_ptr()
        let resource_native = resource._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(resource_native), .init(receiver_native), .init(receiver_func_native), .init(userdata_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_queue_edited_resource_preview_1608376650._native_ptr(),
                    1608376650)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_preview_generator(generator: EditorResourcePreviewGenerator)  {
        let generator_native = generator._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(generator_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_preview_generator_332288124._native_ptr(),
                    332288124)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_preview_generator(generator: EditorResourcePreviewGenerator)  {
        let generator_native = generator._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(generator_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_preview_generator_332288124._native_ptr(),
                    332288124)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func check_for_invalidation(path: godot.String)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_check_for_invalidation_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}