import godot_native

fileprivate var __godot_name_Object: StringName! = nil

/// Base class for all other classes in the engine.
/// 
/// An advanced [Variant] type. All classes in the engine inherit from Object. Each class may define new properties, methods or signals, which are available to all inheriting classes. For example, a [Sprite2D] instance is able to call [method Node.add_child] because it inherits from [Node].
///  
/// You can create new instances, using [code]Object.new()[/code] in GDScript, or [code]new Object[/code] in C#.
///  
/// To delete an Object instance, call [method free]. This is necessary for most classes inheriting Object, because they do not manage memory on their own, and will otherwise cause memory leaks when no longer in use. There are a few classes that perform memory management. For example, [RefCounted] (and by extension [Resource]) deletes itself when no longer referenced, and [Node] deletes its children when freed.
///  
/// Objects can have a [Script] attached to them. Once the [Script] is instantiated, it effectively acts as an extension to the base class, allowing it to define and inherit new properties, methods and signals.
///  
/// Inside a [Script], [method _get_property_list] may be overridden to customize properties in several ways. This allows them to be available to the editor, display as lists of options, sub-divide into groups, save on disk, etc. Scripting languages offer easier ways to customize properties, such as with the [annotation @GDScript.@export] annotation.
///  
/// Godot is very dynamic. An object's script, and therefore its properties, methods and signals, can be changed at run-time. Because of this, there can be occasions where, for example, a property required by a method may not exist. To prevent run-time errors, see methods such as [method set], [method get], [method call], [method has_method], [method has_signal], etc. Note that these methods are [b]much[/b] slower than direct references.
///  
/// In GDScript, you can also check if a given property, method, or signal name exists in an object with the [code]in[/code] operator:
///  
/// [codeblock]
///  
/// var node = Node.new()
///  
/// print("name" in node)         # Prints true
///  
/// print("get_parent" in node)   # Prints true
///  
/// print("tree_entered" in node) # Prints true
///  
/// print("unknown" in node)      # Prints false
///  
/// [/codeblock]
///  
/// Notifications are [int] constants commonly sent and received by objects. For example, on every rendered frame, the [SceneTree] notifies nodes inside the tree with a [constant Node.NOTIFICATION_PROCESS]. The nodes receive it and may call [method Node._process] to update. To make use of notifications, see [method notification] and [method _notification].
///  
/// Lastly, every object can also contain metadata (data about data). [method set_meta] can be useful to store information that the object itself does not depend on. To keep your code clean, making excessive use of metadata is discouraged.
///  
/// [b]Note:[/b] Unlike references to a [RefCounted], references to an object stored in a variable can become invalid without being set to [code]null[/code]. To check if an object has been deleted, do [i]not[/i] compare it against [code]null[/code]. Instead, use [method @GlobalScope.is_instance_valid]. It's also recommended to inherit from [RefCounted] for classes storing data instead of [Object].
///  
/// [b]Note:[/b] The [code]script[/code] is not exposed like most properties. To set or get an object's [Script] in code, use [method set_script] and [method get_script], respectively.
public class Object : Wrapped {

    public enum ConnectFlags : Int32 {
        case CONNECT_DEFERRED = 1
        case CONNECT_PERSIST = 2
        case CONNECT_ONE_SHOT = 4
        case CONNECT_REFERENCE_COUNTED = 8
    }

    public override class var __godot_name: StringName { __godot_name_Object }

    static var _method_get_class_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_is_class_3927539163: GDExtensionMethodBindPtr! = nil
    static var _method_set_3776071444: GDExtensionMethodBindPtr! = nil
    static var _method_get_2760726917: GDExtensionMethodBindPtr! = nil
    static var _method_set_indexed_3500910842: GDExtensionMethodBindPtr! = nil
    static var _method_get_indexed_4006125091: GDExtensionMethodBindPtr! = nil
    static var _method_get_property_list_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_get_method_list_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_property_can_revert_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_property_get_revert_2760726917: GDExtensionMethodBindPtr! = nil
    static var _method_notification_4023243586: GDExtensionMethodBindPtr! = nil
    static var _method_to_string_2841200299: GDExtensionMethodBindPtr! = nil
    static var _method_get_instance_id_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_script_1114965689: GDExtensionMethodBindPtr! = nil
    static var _method_get_script_1214101251: GDExtensionMethodBindPtr! = nil
    static var _method_set_meta_3776071444: GDExtensionMethodBindPtr! = nil
    static var _method_remove_meta_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_meta_3990617847: GDExtensionMethodBindPtr! = nil
    static var _method_has_meta_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_get_meta_list_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_add_user_signal_3780025912: GDExtensionMethodBindPtr! = nil
    static var _method_has_user_signal_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_emit_signal_4047867050: GDExtensionMethodBindPtr! = nil
    static var _method_call_3400424181: GDExtensionMethodBindPtr! = nil
    static var _method_call_deferred_3400424181: GDExtensionMethodBindPtr! = nil
    static var _method_set_deferred_3776071444: GDExtensionMethodBindPtr! = nil
    static var _method_callv_1260104456: GDExtensionMethodBindPtr! = nil
    static var _method_has_method_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_has_signal_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_get_signal_list_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_get_signal_connection_list_3147814860: GDExtensionMethodBindPtr! = nil
    static var _method_get_incoming_connections_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_connect_1469446357: GDExtensionMethodBindPtr! = nil
    static var _method_disconnect_1874754934: GDExtensionMethodBindPtr! = nil
    static var _method_is_connected_768136979: GDExtensionMethodBindPtr! = nil
    static var _method_set_block_signals_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_blocking_signals_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_notify_property_list_changed_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_message_translation_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_can_translate_messages_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_tr_2475554935: GDExtensionMethodBindPtr! = nil
    static var _method_tr_n_4021311862: GDExtensionMethodBindPtr! = nil
    static var _method_is_queued_for_deletion_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Object = StringName(from: "Object")

        let _method_get_class_201670096_name = StringName(from: "get_class")
        self._method_get_class_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_class_201670096_name._native_ptr(), 201670096)
        assert(Object._method_get_class_201670096 != nil)
        let _method_is_class_3927539163_name = StringName(from: "is_class")
        self._method_is_class_3927539163 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_class_3927539163_name._native_ptr(), 3927539163)
        assert(Object._method_is_class_3927539163 != nil)
        let _method_set_3776071444_name = StringName(from: "set")
        self._method_set_3776071444 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_3776071444_name._native_ptr(), 3776071444)
        assert(Object._method_set_3776071444 != nil)
        let _method_get_2760726917_name = StringName(from: "get")
        self._method_get_2760726917 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_2760726917_name._native_ptr(), 2760726917)
        assert(Object._method_get_2760726917 != nil)
        let _method_set_indexed_3500910842_name = StringName(from: "set_indexed")
        self._method_set_indexed_3500910842 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_indexed_3500910842_name._native_ptr(), 3500910842)
        assert(Object._method_set_indexed_3500910842 != nil)
        let _method_get_indexed_4006125091_name = StringName(from: "get_indexed")
        self._method_get_indexed_4006125091 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_indexed_4006125091_name._native_ptr(), 4006125091)
        assert(Object._method_get_indexed_4006125091 != nil)
        let _method_get_property_list_3995934104_name = StringName(from: "get_property_list")
        self._method_get_property_list_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_property_list_3995934104_name._native_ptr(), 3995934104)
        assert(Object._method_get_property_list_3995934104 != nil)
        let _method_get_method_list_3995934104_name = StringName(from: "get_method_list")
        self._method_get_method_list_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_method_list_3995934104_name._native_ptr(), 3995934104)
        assert(Object._method_get_method_list_3995934104 != nil)
        let _method_property_can_revert_2619796661_name = StringName(from: "property_can_revert")
        self._method_property_can_revert_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_property_can_revert_2619796661_name._native_ptr(), 2619796661)
        assert(Object._method_property_can_revert_2619796661 != nil)
        let _method_property_get_revert_2760726917_name = StringName(from: "property_get_revert")
        self._method_property_get_revert_2760726917 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_property_get_revert_2760726917_name._native_ptr(), 2760726917)
        assert(Object._method_property_get_revert_2760726917 != nil)
        let _method_notification_4023243586_name = StringName(from: "notification")
        self._method_notification_4023243586 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_notification_4023243586_name._native_ptr(), 4023243586)
        assert(Object._method_notification_4023243586 != nil)
        let _method_to_string_2841200299_name = StringName(from: "to_string")
        self._method_to_string_2841200299 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_to_string_2841200299_name._native_ptr(), 2841200299)
        assert(Object._method_to_string_2841200299 != nil)
        let _method_get_instance_id_3905245786_name = StringName(from: "get_instance_id")
        self._method_get_instance_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_instance_id_3905245786_name._native_ptr(), 3905245786)
        assert(Object._method_get_instance_id_3905245786 != nil)
        let _method_set_script_1114965689_name = StringName(from: "set_script")
        self._method_set_script_1114965689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_script_1114965689_name._native_ptr(), 1114965689)
        assert(Object._method_set_script_1114965689 != nil)
        let _method_get_script_1214101251_name = StringName(from: "get_script")
        self._method_get_script_1214101251 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_script_1214101251_name._native_ptr(), 1214101251)
        assert(Object._method_get_script_1214101251 != nil)
        let _method_set_meta_3776071444_name = StringName(from: "set_meta")
        self._method_set_meta_3776071444 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_meta_3776071444_name._native_ptr(), 3776071444)
        assert(Object._method_set_meta_3776071444 != nil)
        let _method_remove_meta_3304788590_name = StringName(from: "remove_meta")
        self._method_remove_meta_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_meta_3304788590_name._native_ptr(), 3304788590)
        assert(Object._method_remove_meta_3304788590 != nil)
        let _method_get_meta_3990617847_name = StringName(from: "get_meta")
        self._method_get_meta_3990617847 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_meta_3990617847_name._native_ptr(), 3990617847)
        assert(Object._method_get_meta_3990617847 != nil)
        let _method_has_meta_2619796661_name = StringName(from: "has_meta")
        self._method_has_meta_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_meta_2619796661_name._native_ptr(), 2619796661)
        assert(Object._method_has_meta_2619796661 != nil)
        let _method_get_meta_list_1139954409_name = StringName(from: "get_meta_list")
        self._method_get_meta_list_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_meta_list_1139954409_name._native_ptr(), 1139954409)
        assert(Object._method_get_meta_list_1139954409 != nil)
        let _method_add_user_signal_3780025912_name = StringName(from: "add_user_signal")
        self._method_add_user_signal_3780025912 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_user_signal_3780025912_name._native_ptr(), 3780025912)
        assert(Object._method_add_user_signal_3780025912 != nil)
        let _method_has_user_signal_2619796661_name = StringName(from: "has_user_signal")
        self._method_has_user_signal_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_user_signal_2619796661_name._native_ptr(), 2619796661)
        assert(Object._method_has_user_signal_2619796661 != nil)
        let _method_emit_signal_4047867050_name = StringName(from: "emit_signal")
        self._method_emit_signal_4047867050 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_emit_signal_4047867050_name._native_ptr(), 4047867050)
        assert(Object._method_emit_signal_4047867050 != nil)
        let _method_call_3400424181_name = StringName(from: "call")
        self._method_call_3400424181 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_call_3400424181_name._native_ptr(), 3400424181)
        assert(Object._method_call_3400424181 != nil)
        let _method_call_deferred_3400424181_name = StringName(from: "call_deferred")
        self._method_call_deferred_3400424181 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_call_deferred_3400424181_name._native_ptr(), 3400424181)
        assert(Object._method_call_deferred_3400424181 != nil)
        let _method_set_deferred_3776071444_name = StringName(from: "set_deferred")
        self._method_set_deferred_3776071444 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_deferred_3776071444_name._native_ptr(), 3776071444)
        assert(Object._method_set_deferred_3776071444 != nil)
        let _method_callv_1260104456_name = StringName(from: "callv")
        self._method_callv_1260104456 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_callv_1260104456_name._native_ptr(), 1260104456)
        assert(Object._method_callv_1260104456 != nil)
        let _method_has_method_2619796661_name = StringName(from: "has_method")
        self._method_has_method_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_method_2619796661_name._native_ptr(), 2619796661)
        assert(Object._method_has_method_2619796661 != nil)
        let _method_has_signal_2619796661_name = StringName(from: "has_signal")
        self._method_has_signal_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_signal_2619796661_name._native_ptr(), 2619796661)
        assert(Object._method_has_signal_2619796661 != nil)
        let _method_get_signal_list_3995934104_name = StringName(from: "get_signal_list")
        self._method_get_signal_list_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_signal_list_3995934104_name._native_ptr(), 3995934104)
        assert(Object._method_get_signal_list_3995934104 != nil)
        let _method_get_signal_connection_list_3147814860_name = StringName(from: "get_signal_connection_list")
        self._method_get_signal_connection_list_3147814860 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_signal_connection_list_3147814860_name._native_ptr(), 3147814860)
        assert(Object._method_get_signal_connection_list_3147814860 != nil)
        let _method_get_incoming_connections_3995934104_name = StringName(from: "get_incoming_connections")
        self._method_get_incoming_connections_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_incoming_connections_3995934104_name._native_ptr(), 3995934104)
        assert(Object._method_get_incoming_connections_3995934104 != nil)
        let _method_connect_1469446357_name = StringName(from: "connect")
        self._method_connect_1469446357 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_connect_1469446357_name._native_ptr(), 1469446357)
        assert(Object._method_connect_1469446357 != nil)
        let _method_disconnect_1874754934_name = StringName(from: "disconnect")
        self._method_disconnect_1874754934 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_disconnect_1874754934_name._native_ptr(), 1874754934)
        assert(Object._method_disconnect_1874754934 != nil)
        let _method_is_connected_768136979_name = StringName(from: "is_connected")
        self._method_is_connected_768136979 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_connected_768136979_name._native_ptr(), 768136979)
        assert(Object._method_is_connected_768136979 != nil)
        let _method_set_block_signals_2586408642_name = StringName(from: "set_block_signals")
        self._method_set_block_signals_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_block_signals_2586408642_name._native_ptr(), 2586408642)
        assert(Object._method_set_block_signals_2586408642 != nil)
        let _method_is_blocking_signals_36873697_name = StringName(from: "is_blocking_signals")
        self._method_is_blocking_signals_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_blocking_signals_36873697_name._native_ptr(), 36873697)
        assert(Object._method_is_blocking_signals_36873697 != nil)
        let _method_notify_property_list_changed_3218959716_name = StringName(from: "notify_property_list_changed")
        self._method_notify_property_list_changed_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_notify_property_list_changed_3218959716_name._native_ptr(), 3218959716)
        assert(Object._method_notify_property_list_changed_3218959716 != nil)
        let _method_set_message_translation_2586408642_name = StringName(from: "set_message_translation")
        self._method_set_message_translation_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_message_translation_2586408642_name._native_ptr(), 2586408642)
        assert(Object._method_set_message_translation_2586408642 != nil)
        let _method_can_translate_messages_36873697_name = StringName(from: "can_translate_messages")
        self._method_can_translate_messages_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_can_translate_messages_36873697_name._native_ptr(), 36873697)
        assert(Object._method_can_translate_messages_36873697 != nil)
        let _method_tr_2475554935_name = StringName(from: "tr")
        self._method_tr_2475554935 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_tr_2475554935_name._native_ptr(), 2475554935)
        assert(Object._method_tr_2475554935 != nil)
        let _method_tr_n_4021311862_name = StringName(from: "tr_n")
        self._method_tr_n_4021311862 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_tr_n_4021311862_name._native_ptr(), 4021311862)
        assert(Object._method_tr_n_4021311862 != nil)
        let _method_is_queued_for_deletion_36873697_name = StringName(from: "is_queued_for_deletion")
        self._method_is_queued_for_deletion_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_queued_for_deletion_36873697_name._native_ptr(), 36873697)
        assert(Object._method_is_queued_for_deletion_36873697 != nil)
    }

    public func get_class() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_class_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func is_class(`class`: String) -> UInt8 {
        withUnsafePointer(to: `class`) { class_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_class_3927539163,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set(property: StringName, value: Variant)  {
        let value_native = value._native_ptr()
        let property_native = property._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(property_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_3776071444,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get(property: StringName) -> Variant {
        let property_native = property._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(property_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_2760726917,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
    public func set_indexed(property_path: NodePath, value: Variant)  {
        let value_native = value._native_ptr()
        let property_path_native = property_path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(property_path_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_indexed_3500910842,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_indexed(property_path: NodePath) -> Variant {
        let property_path_native = property_path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(property_path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_indexed_4006125091,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
    public func get_property_list() -> [Dictionary] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_property_list_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
    }
    public func get_method_list() -> [Dictionary] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_method_list_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
    }
    public func property_can_revert(property: StringName) -> UInt8 {
        let property_native = property._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(property_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_property_can_revert_2619796661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func property_get_revert(property: StringName) -> Variant {
        let property_native = property._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(property_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_property_get_revert_2760726917,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
    public func notification(what: Int64, reversed: UInt8)  {
        withUnsafePointer(to: reversed) { reversed_native in
        withUnsafePointer(to: what) { what_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(what_native), .init(reversed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_notification_4023243586,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func to_string() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_to_string_2841200299,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func get_instance_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_instance_id_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_script(script: Variant)  {
        let script_native = script._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(script_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_script_1114965689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_script() -> Variant {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_script_1214101251,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
    public func set_meta(name: StringName, value: Variant)  {
        let value_native = value._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_meta_3776071444,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_meta(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_meta_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_meta(name: StringName, `default`: Variant) -> Variant {
        let default_native = `default`._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(default_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_meta_3990617847,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
    public func has_meta(name: StringName) -> UInt8 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_meta_2619796661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_meta_list() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_meta_list_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func add_user_signal(signal: String, arguments: Array)  {
        withUnsafePointer(to: signal) { signal_native in
        let arguments_native = arguments._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(signal_native), .init(arguments_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_user_signal_3780025912,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func has_user_signal(signal: StringName) -> UInt8 {
        let signal_native = signal._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(signal_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_user_signal_2619796661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func emit_signal(signal: StringName) -> Error {
        let signal_native = signal._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(signal_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_emit_signal_4047867050,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
    }
    public func call(method: StringName) -> Variant {
        let method_native = method._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(method_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_call_3400424181,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
    public func call_deferred(method: StringName) -> Variant {
        let method_native = method._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(method_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_call_deferred_3400424181,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
    public func set_deferred(property: StringName, value: Variant)  {
        let value_native = value._native_ptr()
        let property_native = property._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(property_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_deferred_3776071444,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func callv(method: StringName, arg_array: Array) -> Variant {
        let arg_array_native = arg_array._native_ptr()
        let method_native = method._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(method_native), .init(arg_array_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_callv_1260104456,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
    public func has_method(method: StringName) -> UInt8 {
        let method_native = method._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(method_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_method_2619796661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func has_signal(signal: StringName) -> UInt8 {
        let signal_native = signal._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(signal_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_signal_2619796661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_signal_list() -> [Dictionary] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_signal_list_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
    }
    public func get_signal_connection_list(signal: StringName) -> [Dictionary] {
        let signal_native = signal._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(signal_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_signal_connection_list_3147814860,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
    }
    public func get_incoming_connections() -> [Dictionary] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_incoming_connections_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
    }
    public func connect(signal: StringName, callable: Callable, flags: Int64) -> Error {
        withUnsafePointer(to: flags) { flags_native in
        let callable_native = callable._native_ptr()
        let signal_native = signal._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(signal_native), .init(callable_native), .init(flags_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_connect_1469446357,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func disconnect(signal: StringName, callable: Callable)  {
        let callable_native = callable._native_ptr()
        let signal_native = signal._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(signal_native), .init(callable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_disconnect_1874754934,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func is_connected(signal: StringName, callable: Callable) -> UInt8 {
        let callable_native = callable._native_ptr()
        let signal_native = signal._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(signal_native), .init(callable_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_connected_768136979,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_block_signals(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_block_signals_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_blocking_signals() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_blocking_signals_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func notify_property_list_changed()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_notify_property_list_changed_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_message_translation(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_message_translation_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func can_translate_messages() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_can_translate_messages_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func tr(message: StringName, context: StringName) -> String {
        let context_native = context._native_ptr()
        let message_native = message._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(message_native), .init(context_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tr_2475554935,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func tr_n(message: StringName, plural_message: StringName, n: Int64, context: StringName) -> String {
        withUnsafePointer(to: n) { n_native in
        let context_native = context._native_ptr()
        let plural_message_native = plural_message._native_ptr()
        let message_native = message._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(message_native), .init(plural_message_native), .init(n_native), .init(context_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tr_n_4021311862,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func is_queued_for_deletion() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_queued_for_deletion_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}