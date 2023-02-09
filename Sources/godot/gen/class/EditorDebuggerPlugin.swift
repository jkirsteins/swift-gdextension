import godot_native

fileprivate var __godot_name_EditorDebuggerPlugin: StringName! = nil

/// A base class to implement debugger plugins.
/// 
/// [EditorDebuggerPlugin] provides functions related to the editor side of the debugger.
///  
/// To interact with the debugger, an instance of this class must be added to the editor via [method EditorPlugin.add_debugger_plugin].
///  
/// Once added, the [method _setup_session] callback will be called for every [EditorDebuggerSession] available to the plugin, and when new ones are created (the sessions may be inactive during this stage).
///  
/// You can retrieve the available [EditorDebuggerSession]s via [method get_sessions] or get a specific one via [method get_session].
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// @tool
///  
/// extends EditorPlugin
///  
///  
/// class ExampleEditorDebugger extends EditorDebuggerPlugin:
///  
///  
///     func _has_capture(prefix):
///  
///         # Return true if you wish to handle message with this prefix.
///  
///         return prefix == "my_plugin"
///  
///  
///     func _capture(message, data, session_id):
///  
///         if message == "my_plugin:ping":
///  
///             get_session(session_id).send_message("my_plugin:echo", data)
///  
///  
///     func _setup_session(session_id):
///  
///         # Add a new tab in the debugger session UI containing a label.
///  
///         var label = Label.new()
///  
///         label.name = "Example plugin"
///  
///         label.text = "Example plugin"
///  
///         var session = get_session(session_id)
///  
///         # Listens to the session started and stopped signals.
///  
///         session.started.connect(func (): print("Session started"))
///  
///         session.stopped.connect(func (): print("Session stopped"))
///  
///         session.add_session_tab(label)
///  
///  
/// var debugger = ExampleEditorDebugger.new()
///  
///  
/// func _enter_tree():
///  
///     add_debugger_plugin(debugger)
///  
///  
/// func _exit_tree():
///  
///     remove_debugger_plugin(debugger)
///  
/// [/gdscript]
///  
/// [/codeblocks]
open class EditorDebuggerPlugin : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_EditorDebuggerPlugin }

    static var _method__setup_session_0: StringName! = nil
    static var _method__has_capture_0: StringName! = nil
    static var _method__capture_0: StringName! = nil
    static var _method_get_session_3061968499: StringName! = nil
    static var _method_get_sessions_2915620761: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_EditorDebuggerPlugin == nil)
        __godot_name_EditorDebuggerPlugin = StringName(from: "EditorDebuggerPlugin")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_session_3061968499 = StringName(from: "get_session")
        assert(self._method_get_session_3061968499 != nil)
        self._method_get_sessions_2915620761 = StringName(from: "get_sessions")
        assert(self._method_get_sessions_2915620761 != nil)
    }

    public func _setup_session(session_id: Int64)  {
        withUnsafePointer(to: session_id) { session_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(session_id_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
    }
    public func _has_capture(capture: godot.String) -> UInt8 {
        let capture_native = capture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(capture_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _capture(message: godot.String, data: Array, session_id: Int64) -> UInt8 {
        withUnsafePointer(to: session_id) { session_id_native in
        let data_native = data._native_ptr()
        let message_native = message._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(message_native), .init(data_native), .init(session_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func get_session(id: Int64) -> EditorDebuggerSession {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_session_3061968499._native_ptr(),
                    3061968499)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return EditorDebuggerSession(godot: __resPtr.pointee)
        }
    }
    public func get_sessions() -> Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sessions_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
    }
}