import godot_native

fileprivate var __godot_name_InputMap: StringName! = nil

/// Singleton that manages [InputEventAction].
/// 
/// Manages all [InputEventAction] which can be created/modified from the project settings menu [b]Project > Project Settings > Input Map[/b] or in code with [method add_action] and [method action_add_event]. See [method Node._input].
public class InputMap : Object {

    

    public override class var __godot_name: StringName { __godot_name_InputMap }

    static var _method_has_action_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_get_actions_2915620761: GDExtensionMethodBindPtr! = nil
    static var _method_add_action_573731101: GDExtensionMethodBindPtr! = nil
    static var _method_erase_action_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_action_set_deadzone_4135858297: GDExtensionMethodBindPtr! = nil
    static var _method_action_get_deadzone_1391627649: GDExtensionMethodBindPtr! = nil
    static var _method_action_add_event_518302593: GDExtensionMethodBindPtr! = nil
    static var _method_action_has_event_1185871985: GDExtensionMethodBindPtr! = nil
    static var _method_action_erase_event_518302593: GDExtensionMethodBindPtr! = nil
    static var _method_action_erase_events_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_action_get_events_689397652: GDExtensionMethodBindPtr! = nil
    static var _method_event_is_action_3193353650: GDExtensionMethodBindPtr! = nil
    static var _method_load_from_project_settings_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_InputMap = StringName(from: "InputMap")

        let _method_has_action_2619796661_name = StringName(from: "has_action")
        self._method_has_action_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_action_2619796661_name._native_ptr(), 2619796661)
        assert(InputMap._method_has_action_2619796661 != nil)
        let _method_get_actions_2915620761_name = StringName(from: "get_actions")
        self._method_get_actions_2915620761 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_actions_2915620761_name._native_ptr(), 2915620761)
        assert(InputMap._method_get_actions_2915620761 != nil)
        let _method_add_action_573731101_name = StringName(from: "add_action")
        self._method_add_action_573731101 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_action_573731101_name._native_ptr(), 573731101)
        assert(InputMap._method_add_action_573731101 != nil)
        let _method_erase_action_3304788590_name = StringName(from: "erase_action")
        self._method_erase_action_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_erase_action_3304788590_name._native_ptr(), 3304788590)
        assert(InputMap._method_erase_action_3304788590 != nil)
        let _method_action_set_deadzone_4135858297_name = StringName(from: "action_set_deadzone")
        self._method_action_set_deadzone_4135858297 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_action_set_deadzone_4135858297_name._native_ptr(), 4135858297)
        assert(InputMap._method_action_set_deadzone_4135858297 != nil)
        let _method_action_get_deadzone_1391627649_name = StringName(from: "action_get_deadzone")
        self._method_action_get_deadzone_1391627649 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_action_get_deadzone_1391627649_name._native_ptr(), 1391627649)
        assert(InputMap._method_action_get_deadzone_1391627649 != nil)
        let _method_action_add_event_518302593_name = StringName(from: "action_add_event")
        self._method_action_add_event_518302593 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_action_add_event_518302593_name._native_ptr(), 518302593)
        assert(InputMap._method_action_add_event_518302593 != nil)
        let _method_action_has_event_1185871985_name = StringName(from: "action_has_event")
        self._method_action_has_event_1185871985 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_action_has_event_1185871985_name._native_ptr(), 1185871985)
        assert(InputMap._method_action_has_event_1185871985 != nil)
        let _method_action_erase_event_518302593_name = StringName(from: "action_erase_event")
        self._method_action_erase_event_518302593 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_action_erase_event_518302593_name._native_ptr(), 518302593)
        assert(InputMap._method_action_erase_event_518302593 != nil)
        let _method_action_erase_events_3304788590_name = StringName(from: "action_erase_events")
        self._method_action_erase_events_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_action_erase_events_3304788590_name._native_ptr(), 3304788590)
        assert(InputMap._method_action_erase_events_3304788590 != nil)
        let _method_action_get_events_689397652_name = StringName(from: "action_get_events")
        self._method_action_get_events_689397652 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_action_get_events_689397652_name._native_ptr(), 689397652)
        assert(InputMap._method_action_get_events_689397652 != nil)
        let _method_event_is_action_3193353650_name = StringName(from: "event_is_action")
        self._method_event_is_action_3193353650 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_event_is_action_3193353650_name._native_ptr(), 3193353650)
        assert(InputMap._method_event_is_action_3193353650 != nil)
        let _method_load_from_project_settings_3218959716_name = StringName(from: "load_from_project_settings")
        self._method_load_from_project_settings_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_load_from_project_settings_3218959716_name._native_ptr(), 3218959716)
        assert(InputMap._method_load_from_project_settings_3218959716 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_action_2619796661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_actions() -> [StringName] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_actions_2915620761,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [StringName](from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_action_573731101,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_erase_action_3304788590,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_action_set_deadzone_4135858297,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_action_get_deadzone_1391627649,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_action_add_event_518302593,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_action_has_event_1185871985,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_action_erase_event_518302593,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_action_erase_events_3304788590,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_action_get_events_689397652,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [InputEvent](from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_event_is_action_3193353650,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func load_from_project_settings()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_load_from_project_settings_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}