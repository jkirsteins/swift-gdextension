import godot_native

fileprivate var __godot_name_EditorResourcePreview: StringName! = nil

/// Helper to generate previews of resources or files.
/// 
/// This object is used to generate previews for resources of files.
///  
/// [b]Note:[/b] This class shouldn't be instantiated directly. Instead, access the singleton using [method EditorInterface.get_resource_previewer].
public class EditorResourcePreview : Node {

    

    public override class var __godot_name: StringName { __godot_name_EditorResourcePreview }

    static var _method_queue_resource_preview_233177534: GDExtensionMethodBindPtr! = nil
    static var _method_queue_edited_resource_preview_1608376650: GDExtensionMethodBindPtr! = nil
    static var _method_add_preview_generator_332288124: GDExtensionMethodBindPtr! = nil
    static var _method_remove_preview_generator_332288124: GDExtensionMethodBindPtr! = nil
    static var _method_check_for_invalidation_83702148: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_EditorResourcePreview = StringName(from: "EditorResourcePreview")

        let _method_queue_resource_preview_233177534_name = StringName(from: "queue_resource_preview")
        self._method_queue_resource_preview_233177534 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_queue_resource_preview_233177534_name._native_ptr(), 233177534)
        assert(EditorResourcePreview._method_queue_resource_preview_233177534 != nil)
        let _method_queue_edited_resource_preview_1608376650_name = StringName(from: "queue_edited_resource_preview")
        self._method_queue_edited_resource_preview_1608376650 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_queue_edited_resource_preview_1608376650_name._native_ptr(), 1608376650)
        assert(EditorResourcePreview._method_queue_edited_resource_preview_1608376650 != nil)
        let _method_add_preview_generator_332288124_name = StringName(from: "add_preview_generator")
        self._method_add_preview_generator_332288124 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_preview_generator_332288124_name._native_ptr(), 332288124)
        assert(EditorResourcePreview._method_add_preview_generator_332288124 != nil)
        let _method_remove_preview_generator_332288124_name = StringName(from: "remove_preview_generator")
        self._method_remove_preview_generator_332288124 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_preview_generator_332288124_name._native_ptr(), 332288124)
        assert(EditorResourcePreview._method_remove_preview_generator_332288124 != nil)
        let _method_check_for_invalidation_83702148_name = StringName(from: "check_for_invalidation")
        self._method_check_for_invalidation_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_check_for_invalidation_83702148_name._native_ptr(), 83702148)
        assert(EditorResourcePreview._method_check_for_invalidation_83702148 != nil)
    }

    public func queue_resource_preview(path: String, receiver: Object, receiver_func: StringName, userdata: Variant)  {
        withUnsafePointer(to: path) { path_native in
        let userdata_native = userdata._native_ptr()
        let receiver_func_native = receiver_func._native_ptr()
        let receiver_native = receiver._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(receiver_native), .init(receiver_func_native), .init(userdata_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_queue_resource_preview_233177534,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_queue_edited_resource_preview_1608376650,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_preview_generator_332288124,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_preview_generator_332288124,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func check_for_invalidation(path: String)  {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_check_for_invalidation_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}