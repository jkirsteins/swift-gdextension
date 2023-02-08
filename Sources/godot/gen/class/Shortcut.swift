import godot_native

fileprivate var __godot_name_Shortcut: StringName! = nil

/// A shortcut for binding input.
/// 
/// Shortcuts are commonly used for interacting with a [Control] element from an [InputEvent] (also known as hotkeys).
///  
/// One shortcut can contain multiple [InputEvent]'s, allowing the possibility of triggering one action with multiple different inputs.
open class Shortcut : Resource {

    

    public override class var __godot_name: StringName { __godot_name_Shortcut }

    static var _method_set_events_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_get_events_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_has_valid_event_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_matches_event_3738334489: GDExtensionMethodBindPtr! = nil
    static var _method_get_as_text_201670096: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Shortcut = StringName(from: "Shortcut")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_events_381264803_name = StringName(from: "set_events")
        self._method_set_events_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name_Shortcut._native_ptr(), _method_set_events_381264803_name._native_ptr(), 381264803)
        assert(Shortcut._method_set_events_381264803 != nil)
        let _method_get_events_3995934104_name = StringName(from: "get_events")
        self._method_get_events_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name_Shortcut._native_ptr(), _method_get_events_3995934104_name._native_ptr(), 3995934104)
        assert(Shortcut._method_get_events_3995934104 != nil)
        let _method_has_valid_event_36873697_name = StringName(from: "has_valid_event")
        self._method_has_valid_event_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Shortcut._native_ptr(), _method_has_valid_event_36873697_name._native_ptr(), 36873697)
        assert(Shortcut._method_has_valid_event_36873697 != nil)
        let _method_matches_event_3738334489_name = StringName(from: "matches_event")
        self._method_matches_event_3738334489 = self.interface.pointee.classdb_get_method_bind(__godot_name_Shortcut._native_ptr(), _method_matches_event_3738334489_name._native_ptr(), 3738334489)
        assert(Shortcut._method_matches_event_3738334489 != nil)
        let _method_get_as_text_201670096_name = StringName(from: "get_as_text")
        self._method_get_as_text_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_Shortcut._native_ptr(), _method_get_as_text_201670096_name._native_ptr(), 201670096)
        assert(Shortcut._method_get_as_text_201670096 != nil)
    }

    public func set_events(events: Array)  {
        let events_native = events._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(events_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_events_381264803,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_events() -> Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_events_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(godot: __resPtr.pointee)
    }
    public func has_valid_event() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_valid_event_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func matches_event(event: InputEvent) -> UInt8 {
        let event_native = event._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(event_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_matches_event_3738334489,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_as_text() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_as_text_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
}