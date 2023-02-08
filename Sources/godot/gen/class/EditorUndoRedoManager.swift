import godot_native

fileprivate var __godot_name_EditorUndoRedoManager: StringName! = nil

/// Manages undo history of scenes opened in the editor.
/// 
/// [EditorUndoRedoManager] is a manager for [UndoRedo] objects associated with edited scenes. Each scene has its own undo history and [EditorUndoRedoManager] ensures that each action performed in the editor gets associated with a proper scene. For actions not related to scenes ([ProjectSettings] edits, external resources, etc.), a separate global history is used.
///  
/// The usage is mostly the same as [UndoRedo]. You create and commit actions and the manager automatically decides under-the-hood what scenes it belongs to. The scene is deduced based on the first operation in an action, using the object from the operation. The rules are as follows:
///  
/// - If the object is a [Node], use the currently edited scene;
///  
/// - If the object is a built-in resource, use the scene from its path;
///  
/// - If the object is external resource or anything else, use global history.
///  
/// This guessing can sometimes yield false results, so you can provide a custom context object when creating an action.
open class EditorUndoRedoManager : Object {

    public enum SpecialHistory : Int32 {
        case GLOBAL_HISTORY = 0
        case REMOTE_HISTORY = -9
        case INVALID_HISTORY = -99
    }

    public override class var __godot_name: StringName { __godot_name_EditorUndoRedoManager }

    static var _method_create_action_3766330317: GDExtensionMethodBindPtr! = nil
    static var _method_commit_action_3216645846: GDExtensionMethodBindPtr! = nil
    static var _method_is_committing_action_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_add_do_method_1517810467: GDExtensionMethodBindPtr! = nil
    static var _method_add_undo_method_1517810467: GDExtensionMethodBindPtr! = nil
    static var _method_add_do_property_1017172818: GDExtensionMethodBindPtr! = nil
    static var _method_add_undo_property_1017172818: GDExtensionMethodBindPtr! = nil
    static var _method_add_do_reference_3975164845: GDExtensionMethodBindPtr! = nil
    static var _method_add_undo_reference_3975164845: GDExtensionMethodBindPtr! = nil
    static var _method_get_object_history_id_1107568780: GDExtensionMethodBindPtr! = nil
    static var _method_get_history_undo_redo_2417974513: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        __godot_name_EditorUndoRedoManager = StringName(from: "EditorUndoRedoManager")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_create_action_3766330317_name = StringName(from: "create_action")
        self._method_create_action_3766330317 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorUndoRedoManager._native_ptr(), _method_create_action_3766330317_name._native_ptr(), 3766330317)
        assert(EditorUndoRedoManager._method_create_action_3766330317 != nil)
        let _method_commit_action_3216645846_name = StringName(from: "commit_action")
        self._method_commit_action_3216645846 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorUndoRedoManager._native_ptr(), _method_commit_action_3216645846_name._native_ptr(), 3216645846)
        assert(EditorUndoRedoManager._method_commit_action_3216645846 != nil)
        let _method_is_committing_action_36873697_name = StringName(from: "is_committing_action")
        self._method_is_committing_action_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorUndoRedoManager._native_ptr(), _method_is_committing_action_36873697_name._native_ptr(), 36873697)
        assert(EditorUndoRedoManager._method_is_committing_action_36873697 != nil)
        let _method_add_do_method_1517810467_name = StringName(from: "add_do_method")
        self._method_add_do_method_1517810467 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorUndoRedoManager._native_ptr(), _method_add_do_method_1517810467_name._native_ptr(), 1517810467)
        assert(EditorUndoRedoManager._method_add_do_method_1517810467 != nil)
        let _method_add_undo_method_1517810467_name = StringName(from: "add_undo_method")
        self._method_add_undo_method_1517810467 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorUndoRedoManager._native_ptr(), _method_add_undo_method_1517810467_name._native_ptr(), 1517810467)
        assert(EditorUndoRedoManager._method_add_undo_method_1517810467 != nil)
        let _method_add_do_property_1017172818_name = StringName(from: "add_do_property")
        self._method_add_do_property_1017172818 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorUndoRedoManager._native_ptr(), _method_add_do_property_1017172818_name._native_ptr(), 1017172818)
        assert(EditorUndoRedoManager._method_add_do_property_1017172818 != nil)
        let _method_add_undo_property_1017172818_name = StringName(from: "add_undo_property")
        self._method_add_undo_property_1017172818 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorUndoRedoManager._native_ptr(), _method_add_undo_property_1017172818_name._native_ptr(), 1017172818)
        assert(EditorUndoRedoManager._method_add_undo_property_1017172818 != nil)
        let _method_add_do_reference_3975164845_name = StringName(from: "add_do_reference")
        self._method_add_do_reference_3975164845 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorUndoRedoManager._native_ptr(), _method_add_do_reference_3975164845_name._native_ptr(), 3975164845)
        assert(EditorUndoRedoManager._method_add_do_reference_3975164845 != nil)
        let _method_add_undo_reference_3975164845_name = StringName(from: "add_undo_reference")
        self._method_add_undo_reference_3975164845 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorUndoRedoManager._native_ptr(), _method_add_undo_reference_3975164845_name._native_ptr(), 3975164845)
        assert(EditorUndoRedoManager._method_add_undo_reference_3975164845 != nil)
        let _method_get_object_history_id_1107568780_name = StringName(from: "get_object_history_id")
        self._method_get_object_history_id_1107568780 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorUndoRedoManager._native_ptr(), _method_get_object_history_id_1107568780_name._native_ptr(), 1107568780)
        assert(EditorUndoRedoManager._method_get_object_history_id_1107568780 != nil)
        let _method_get_history_undo_redo_2417974513_name = StringName(from: "get_history_undo_redo")
        self._method_get_history_undo_redo_2417974513 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorUndoRedoManager._native_ptr(), _method_get_history_undo_redo_2417974513_name._native_ptr(), 2417974513)
        assert(EditorUndoRedoManager._method_get_history_undo_redo_2417974513 != nil)
    }

    public func create_action(name: godot.String, merge_mode: UndoRedo.MergeMode, custom_context: Object)  {
        withUnsafePointer(to: merge_mode.rawValue) { merge_mode_native in
        let custom_context_native = custom_context._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(merge_mode_native), .init(custom_context_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_action_3766330317,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func commit_action(execute: UInt8)  {
        withUnsafePointer(to: execute) { execute_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(execute_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_commit_action_3216645846,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_committing_action() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_committing_action_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func add_do_method(object: Object, method: StringName)  {
        let method_native = method._native_ptr()
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native), .init(method_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_do_method_1517810467,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_undo_method(object: Object, method: StringName)  {
        let method_native = method._native_ptr()
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native), .init(method_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_undo_method_1517810467,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_do_property(object: Object, property: StringName, value: Variant)  {
        let value_native = value._native_ptr()
        let property_native = property._native_ptr()
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native), .init(property_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_do_property_1017172818,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_undo_property(object: Object, property: StringName, value: Variant)  {
        let value_native = value._native_ptr()
        let property_native = property._native_ptr()
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native), .init(property_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_undo_property_1017172818,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_do_reference(object: Object)  {
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_do_reference_3975164845,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_undo_reference(object: Object)  {
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_undo_reference_3975164845,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_object_history_id(object: Object) -> Int64 {
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_object_history_id_1107568780,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_history_undo_redo(id: Int64) -> UndoRedo {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_history_undo_redo_2417974513,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UndoRedo(godot: __resPtr.pointee)
        }
    }
}