import godot_native

fileprivate var __godot_name_UndoRedo: StringName! = nil

/// Helper to manage undo/redo operations in the editor or custom tools.
/// 
/// Helper to manage undo/redo operations in the editor or custom tools. It works by registering methods and property changes inside "actions".
///  
/// Common behavior is to create an action, then add do/undo calls to functions or property changes, then committing the action.
///  
/// Here's an example on how to add an action to the Godot editor's own [UndoRedo], from a plugin:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var undo_redo = get_undo_redo() # Method of EditorPlugin.
///  
///  
/// func do_something():
///  
///     pass # Put your code here.
///  
///  
/// func undo_something():
///  
///     pass # Put here the code that reverts what's done by "do_something()".
///  
///  
/// func _on_my_button_pressed():
///  
///     var node = get_node("MyNode2D")
///  
///     undo_redo.create_action("Move the node")
///  
///     undo_redo.add_do_method(self, "do_something")
///  
///     undo_redo.add_undo_method(self, "undo_something")
///  
///     undo_redo.add_do_property(node, "position", Vector2(100,100))
///  
///     undo_redo.add_undo_property(node, "position", node.position)
///  
///     undo_redo.commit_action()
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// private UndoRedo _undoRedo;
///  
///  
/// public override void _Ready()
///  
/// {
///  
///     _undoRedo = GetUndoRedo(); // Method of EditorPlugin.
///  
/// }
///  
///  
/// public void DoSomething()
///  
/// {
///  
///     // Put your code here.
///  
/// }
///  
///  
/// public void UndoSomething()
///  
/// {
///  
///     // Put here the code that reverts what's done by "DoSomething()".
///  
/// }
///  
///  
/// private void OnMyButtonPressed()
///  
/// {
///  
///     var node = GetNode<Node2D>("MyNode2D");
///  
///     _undoRedo.CreateAction("Move the node");
///  
///     _undoRedo.AddDoMethod(new Callable(this, MethodName.DoSomething));
///  
///     _undoRedo.AddUndoMethod(new Callable(this, MethodName.UndoSomething));
///  
///     _undoRedo.AddDoProperty(node, "position", new Vector2(100, 100));
///  
///     _undoRedo.AddUndoProperty(node, "position", node.Position);
///  
///     _undoRedo.CommitAction();
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// [method create_action], [method add_do_method], [method add_undo_method], [method add_do_property], [method add_undo_property], and [method commit_action] should be called one after the other, like in the example. Not doing so could lead to crashes.
///  
/// If you don't need to register a method, you can leave [method add_do_method] and [method add_undo_method] out; the same goes for properties. You can also register more than one method/property.
open class UndoRedo : Object {

    public enum MergeMode : Int32 {
        case MERGE_DISABLE = 0
        case MERGE_ENDS = 1
        case MERGE_ALL = 2
    }

    public override class var __godot_name: StringName { __godot_name_UndoRedo }

    static var _method_create_action_183245820: GDExtensionMethodBindPtr! = nil
    static var _method_commit_action_3216645846: GDExtensionMethodBindPtr! = nil
    static var _method_is_committing_action_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_add_do_method_1611583062: GDExtensionMethodBindPtr! = nil
    static var _method_add_undo_method_1611583062: GDExtensionMethodBindPtr! = nil
    static var _method_add_do_property_1017172818: GDExtensionMethodBindPtr! = nil
    static var _method_add_undo_property_1017172818: GDExtensionMethodBindPtr! = nil
    static var _method_add_do_reference_3975164845: GDExtensionMethodBindPtr! = nil
    static var _method_add_undo_reference_3975164845: GDExtensionMethodBindPtr! = nil
    static var _method_start_force_keep_in_merge_ends_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_end_force_keep_in_merge_ends_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_history_count_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_action_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_get_action_name_990163283: GDExtensionMethodBindPtr! = nil
    static var _method_clear_history_3216645846: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_action_name_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_has_undo_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_has_redo_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_version_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_redo_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_undo_2240911060: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_UndoRedo = StringName(from: "UndoRedo")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_create_action_183245820_name = StringName(from: "create_action")
        self._method_create_action_183245820 = self.interface.pointee.classdb_get_method_bind(__godot_name_UndoRedo._native_ptr(), _method_create_action_183245820_name._native_ptr(), 183245820)
        assert(UndoRedo._method_create_action_183245820 != nil)
        let _method_commit_action_3216645846_name = StringName(from: "commit_action")
        self._method_commit_action_3216645846 = self.interface.pointee.classdb_get_method_bind(__godot_name_UndoRedo._native_ptr(), _method_commit_action_3216645846_name._native_ptr(), 3216645846)
        assert(UndoRedo._method_commit_action_3216645846 != nil)
        let _method_is_committing_action_36873697_name = StringName(from: "is_committing_action")
        self._method_is_committing_action_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_UndoRedo._native_ptr(), _method_is_committing_action_36873697_name._native_ptr(), 36873697)
        assert(UndoRedo._method_is_committing_action_36873697 != nil)
        let _method_add_do_method_1611583062_name = StringName(from: "add_do_method")
        self._method_add_do_method_1611583062 = self.interface.pointee.classdb_get_method_bind(__godot_name_UndoRedo._native_ptr(), _method_add_do_method_1611583062_name._native_ptr(), 1611583062)
        assert(UndoRedo._method_add_do_method_1611583062 != nil)
        let _method_add_undo_method_1611583062_name = StringName(from: "add_undo_method")
        self._method_add_undo_method_1611583062 = self.interface.pointee.classdb_get_method_bind(__godot_name_UndoRedo._native_ptr(), _method_add_undo_method_1611583062_name._native_ptr(), 1611583062)
        assert(UndoRedo._method_add_undo_method_1611583062 != nil)
        let _method_add_do_property_1017172818_name = StringName(from: "add_do_property")
        self._method_add_do_property_1017172818 = self.interface.pointee.classdb_get_method_bind(__godot_name_UndoRedo._native_ptr(), _method_add_do_property_1017172818_name._native_ptr(), 1017172818)
        assert(UndoRedo._method_add_do_property_1017172818 != nil)
        let _method_add_undo_property_1017172818_name = StringName(from: "add_undo_property")
        self._method_add_undo_property_1017172818 = self.interface.pointee.classdb_get_method_bind(__godot_name_UndoRedo._native_ptr(), _method_add_undo_property_1017172818_name._native_ptr(), 1017172818)
        assert(UndoRedo._method_add_undo_property_1017172818 != nil)
        let _method_add_do_reference_3975164845_name = StringName(from: "add_do_reference")
        self._method_add_do_reference_3975164845 = self.interface.pointee.classdb_get_method_bind(__godot_name_UndoRedo._native_ptr(), _method_add_do_reference_3975164845_name._native_ptr(), 3975164845)
        assert(UndoRedo._method_add_do_reference_3975164845 != nil)
        let _method_add_undo_reference_3975164845_name = StringName(from: "add_undo_reference")
        self._method_add_undo_reference_3975164845 = self.interface.pointee.classdb_get_method_bind(__godot_name_UndoRedo._native_ptr(), _method_add_undo_reference_3975164845_name._native_ptr(), 3975164845)
        assert(UndoRedo._method_add_undo_reference_3975164845 != nil)
        let _method_start_force_keep_in_merge_ends_3218959716_name = StringName(from: "start_force_keep_in_merge_ends")
        self._method_start_force_keep_in_merge_ends_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_UndoRedo._native_ptr(), _method_start_force_keep_in_merge_ends_3218959716_name._native_ptr(), 3218959716)
        assert(UndoRedo._method_start_force_keep_in_merge_ends_3218959716 != nil)
        let _method_end_force_keep_in_merge_ends_3218959716_name = StringName(from: "end_force_keep_in_merge_ends")
        self._method_end_force_keep_in_merge_ends_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_UndoRedo._native_ptr(), _method_end_force_keep_in_merge_ends_3218959716_name._native_ptr(), 3218959716)
        assert(UndoRedo._method_end_force_keep_in_merge_ends_3218959716 != nil)
        let _method_get_history_count_2455072627_name = StringName(from: "get_history_count")
        self._method_get_history_count_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name_UndoRedo._native_ptr(), _method_get_history_count_2455072627_name._native_ptr(), 2455072627)
        assert(UndoRedo._method_get_history_count_2455072627 != nil)
        let _method_get_current_action_2455072627_name = StringName(from: "get_current_action")
        self._method_get_current_action_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name_UndoRedo._native_ptr(), _method_get_current_action_2455072627_name._native_ptr(), 2455072627)
        assert(UndoRedo._method_get_current_action_2455072627 != nil)
        let _method_get_action_name_990163283_name = StringName(from: "get_action_name")
        self._method_get_action_name_990163283 = self.interface.pointee.classdb_get_method_bind(__godot_name_UndoRedo._native_ptr(), _method_get_action_name_990163283_name._native_ptr(), 990163283)
        assert(UndoRedo._method_get_action_name_990163283 != nil)
        let _method_clear_history_3216645846_name = StringName(from: "clear_history")
        self._method_clear_history_3216645846 = self.interface.pointee.classdb_get_method_bind(__godot_name_UndoRedo._native_ptr(), _method_clear_history_3216645846_name._native_ptr(), 3216645846)
        assert(UndoRedo._method_clear_history_3216645846 != nil)
        let _method_get_current_action_name_201670096_name = StringName(from: "get_current_action_name")
        self._method_get_current_action_name_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_UndoRedo._native_ptr(), _method_get_current_action_name_201670096_name._native_ptr(), 201670096)
        assert(UndoRedo._method_get_current_action_name_201670096 != nil)
        let _method_has_undo_36873697_name = StringName(from: "has_undo")
        self._method_has_undo_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_UndoRedo._native_ptr(), _method_has_undo_36873697_name._native_ptr(), 36873697)
        assert(UndoRedo._method_has_undo_36873697 != nil)
        let _method_has_redo_36873697_name = StringName(from: "has_redo")
        self._method_has_redo_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_UndoRedo._native_ptr(), _method_has_redo_36873697_name._native_ptr(), 36873697)
        assert(UndoRedo._method_has_redo_36873697 != nil)
        let _method_get_version_3905245786_name = StringName(from: "get_version")
        self._method_get_version_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_UndoRedo._native_ptr(), _method_get_version_3905245786_name._native_ptr(), 3905245786)
        assert(UndoRedo._method_get_version_3905245786 != nil)
        let _method_redo_2240911060_name = StringName(from: "redo")
        self._method_redo_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name_UndoRedo._native_ptr(), _method_redo_2240911060_name._native_ptr(), 2240911060)
        assert(UndoRedo._method_redo_2240911060 != nil)
        let _method_undo_2240911060_name = StringName(from: "undo")
        self._method_undo_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name_UndoRedo._native_ptr(), _method_undo_2240911060_name._native_ptr(), 2240911060)
        assert(UndoRedo._method_undo_2240911060 != nil)
    }

    public func create_action(name: godot.String, merge_mode: UndoRedo.MergeMode)  {
        withUnsafePointer(to: merge_mode.rawValue) { merge_mode_native in
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(merge_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_action_183245820,
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
    public func add_do_method(callable: Callable)  {
        let callable_native = callable._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(callable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_do_method_1611583062,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_undo_method(callable: Callable)  {
        let callable_native = callable._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(callable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_undo_method_1611583062,
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
    public func start_force_keep_in_merge_ends()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_start_force_keep_in_merge_ends_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func end_force_keep_in_merge_ends()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_end_force_keep_in_merge_ends_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_history_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_history_count_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_current_action() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_action_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_action_name(id: Int64) -> godot.String {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_action_name_990163283,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func clear_history(increase_version: UInt8)  {
        withUnsafePointer(to: increase_version) { increase_version_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(increase_version_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_history_3216645846,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_current_action_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_action_name_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func has_undo() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_undo_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_redo() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_redo_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_version() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_version_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func redo() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_redo_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func undo() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_undo_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}