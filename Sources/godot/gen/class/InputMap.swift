import godot_native

fileprivate var __godot_name_InputMap: StringName! = nil

/// Singleton that manages [InputEventAction].
/// 
/// Manages all [InputEventAction] which can be created/modified from the project settings menu [b]Project > Project Settings > Input Map[/b] or in code with [method add_action] and [method action_add_event]. See [method Node._input].
open class InputMap : Object {

    

    public override class var __godot_name: StringName { __godot_name_InputMap }

    static var _method_has_action_2619796661: StringName! = nil
    static var _method_get_actions_2915620761: StringName! = nil
    static var _method_add_action_573731101: StringName! = nil
    static var _method_erase_action_3304788590: StringName! = nil
    static var _method_action_set_deadzone_4135858297: StringName! = nil
    static var _method_action_get_deadzone_1391627649: StringName! = nil
    static var _method_action_add_event_518302593: StringName! = nil
    static var _method_action_has_event_1185871985: StringName! = nil
    static var _method_action_erase_event_518302593: StringName! = nil
    static var _method_action_erase_events_3304788590: StringName! = nil
    static var _method_action_get_events_689397652: StringName! = nil
    static var _method_event_is_action_3193353650: StringName! = nil
    static var _method_load_from_project_settings_3218959716: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_InputMap == nil)
        __godot_name_InputMap = StringName(from: "InputMap")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_has_action_2619796661 = StringName(from: "has_action")
        assert(self._method_has_action_2619796661 != nil)
        self._method_get_actions_2915620761 = StringName(from: "get_actions")
        assert(self._method_get_actions_2915620761 != nil)
        self._method_add_action_573731101 = StringName(from: "add_action")
        assert(self._method_add_action_573731101 != nil)
        self._method_erase_action_3304788590 = StringName(from: "erase_action")
        assert(self._method_erase_action_3304788590 != nil)
        self._method_action_set_deadzone_4135858297 = StringName(from: "action_set_deadzone")
        assert(self._method_action_set_deadzone_4135858297 != nil)
        self._method_action_get_deadzone_1391627649 = StringName(from: "action_get_deadzone")
        assert(self._method_action_get_deadzone_1391627649 != nil)
        self._method_action_add_event_518302593 = StringName(from: "action_add_event")
        assert(self._method_action_add_event_518302593 != nil)
        self._method_action_has_event_1185871985 = StringName(from: "action_has_event")
        assert(self._method_action_has_event_1185871985 != nil)
        self._method_action_erase_event_518302593 = StringName(from: "action_erase_event")
        assert(self._method_action_erase_event_518302593 != nil)
        self._method_action_erase_events_3304788590 = StringName(from: "action_erase_events")
        assert(self._method_action_erase_events_3304788590 != nil)
        self._method_action_get_events_689397652 = StringName(from: "action_get_events")
        assert(self._method_action_get_events_689397652 != nil)
        self._method_event_is_action_3193353650 = StringName(from: "event_is_action")
        assert(self._method_event_is_action_3193353650 != nil)
        self._method_load_from_project_settings_3218959716 = StringName(from: "load_from_project_settings")
        assert(self._method_load_from_project_settings_3218959716 != nil)
    }

    public func has_action(action: StringName) -> UInt8 {
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_action_2619796661._native_ptr(),
                    2619796661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_actions() -> [StringName] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_actions_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [StringName](godot: __resPtr.pointee)
    }
    public func add_action(action: StringName, deadzone: Float64)  {
        withUnsafePointer(to: deadzone) { deadzone_native in
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native), .init(deadzone_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_action_573731101._native_ptr(),
                    573731101)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func erase_action(action: StringName)  {
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_erase_action_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func action_set_deadzone(action: StringName, deadzone: Float64)  {
        withUnsafePointer(to: deadzone) { deadzone_native in
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native), .init(deadzone_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_action_set_deadzone_4135858297._native_ptr(),
                    4135858297)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func action_get_deadzone(action: StringName) -> Float64 {
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_action_get_deadzone_1391627649._native_ptr(),
                    1391627649)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func action_add_event(action: StringName, event: InputEvent)  {
        let event_native = event._native_ptr()
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native), .init(event_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_action_add_event_518302593._native_ptr(),
                    518302593)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func action_has_event(action: StringName, event: InputEvent) -> UInt8 {
        let event_native = event._native_ptr()
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native), .init(event_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_action_has_event_1185871985._native_ptr(),
                    1185871985)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func action_erase_event(action: StringName, event: InputEvent)  {
        let event_native = event._native_ptr()
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native), .init(event_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_action_erase_event_518302593._native_ptr(),
                    518302593)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func action_erase_events(action: StringName)  {
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_action_erase_events_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func action_get_events(action: StringName) -> [InputEvent] {
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_action_get_events_689397652._native_ptr(),
                    689397652)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [InputEvent](godot: __resPtr.pointee)
    }
    public func event_is_action(event: InputEvent, action: StringName, exact_match: UInt8) -> UInt8 {
        withUnsafePointer(to: exact_match) { exact_match_native in
        let action_native = action._native_ptr()
        let event_native = event._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(event_native), .init(action_native), .init(exact_match_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_event_is_action_3193353650._native_ptr(),
                    3193353650)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func load_from_project_settings()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_load_from_project_settings_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}