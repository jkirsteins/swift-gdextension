import godot_native

fileprivate var __godot_name_InputEventKey: StringName! = nil

/// Input event type for keyboard events.
/// 
/// Stores key presses on the keyboard. Supports key presses, key releases and [member echo] events.
///  
/// [b]Note:[/b] Events received from the keyboard usually have all properties set. Event mappings should have only one of the [member keycode], [member physical_keycode] or [member unicode] set.
///  
/// When events are compared, properties are checked in the following priority - [member keycode], [member physical_keycode] and [member unicode], events with the first matching value will be considered equal.
open class InputEventKey : InputEventWithModifiers {

    

    public override class var __godot_name: StringName { __godot_name_InputEventKey }

    static var _method_set_pressed_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_keycode_888074362: GDExtensionMethodBindPtr! = nil
    static var _method_get_keycode_1585896689: GDExtensionMethodBindPtr! = nil
    static var _method_set_physical_keycode_888074362: GDExtensionMethodBindPtr! = nil
    static var _method_get_physical_keycode_1585896689: GDExtensionMethodBindPtr! = nil
    static var _method_set_key_label_888074362: GDExtensionMethodBindPtr! = nil
    static var _method_get_key_label_1585896689: GDExtensionMethodBindPtr! = nil
    static var _method_set_unicode_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_unicode_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_echo_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_keycode_with_modifiers_1585896689: GDExtensionMethodBindPtr! = nil
    static var _method_get_physical_keycode_with_modifiers_1585896689: GDExtensionMethodBindPtr! = nil
    static var _method_get_key_label_with_modifiers_1585896689: GDExtensionMethodBindPtr! = nil
    static var _method_as_text_keycode_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_as_text_physical_keycode_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_as_text_key_label_201670096: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_InputEventKey = StringName(from: "InputEventKey")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_pressed_2586408642_name = StringName(from: "set_pressed")
        self._method_set_pressed_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventKey._native_ptr(), _method_set_pressed_2586408642_name._native_ptr(), 2586408642)
        assert(InputEventKey._method_set_pressed_2586408642 != nil)
        let _method_set_keycode_888074362_name = StringName(from: "set_keycode")
        self._method_set_keycode_888074362 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventKey._native_ptr(), _method_set_keycode_888074362_name._native_ptr(), 888074362)
        assert(InputEventKey._method_set_keycode_888074362 != nil)
        let _method_get_keycode_1585896689_name = StringName(from: "get_keycode")
        self._method_get_keycode_1585896689 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventKey._native_ptr(), _method_get_keycode_1585896689_name._native_ptr(), 1585896689)
        assert(InputEventKey._method_get_keycode_1585896689 != nil)
        let _method_set_physical_keycode_888074362_name = StringName(from: "set_physical_keycode")
        self._method_set_physical_keycode_888074362 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventKey._native_ptr(), _method_set_physical_keycode_888074362_name._native_ptr(), 888074362)
        assert(InputEventKey._method_set_physical_keycode_888074362 != nil)
        let _method_get_physical_keycode_1585896689_name = StringName(from: "get_physical_keycode")
        self._method_get_physical_keycode_1585896689 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventKey._native_ptr(), _method_get_physical_keycode_1585896689_name._native_ptr(), 1585896689)
        assert(InputEventKey._method_get_physical_keycode_1585896689 != nil)
        let _method_set_key_label_888074362_name = StringName(from: "set_key_label")
        self._method_set_key_label_888074362 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventKey._native_ptr(), _method_set_key_label_888074362_name._native_ptr(), 888074362)
        assert(InputEventKey._method_set_key_label_888074362 != nil)
        let _method_get_key_label_1585896689_name = StringName(from: "get_key_label")
        self._method_get_key_label_1585896689 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventKey._native_ptr(), _method_get_key_label_1585896689_name._native_ptr(), 1585896689)
        assert(InputEventKey._method_get_key_label_1585896689 != nil)
        let _method_set_unicode_1286410249_name = StringName(from: "set_unicode")
        self._method_set_unicode_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventKey._native_ptr(), _method_set_unicode_1286410249_name._native_ptr(), 1286410249)
        assert(InputEventKey._method_set_unicode_1286410249 != nil)
        let _method_get_unicode_3905245786_name = StringName(from: "get_unicode")
        self._method_get_unicode_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventKey._native_ptr(), _method_get_unicode_3905245786_name._native_ptr(), 3905245786)
        assert(InputEventKey._method_get_unicode_3905245786 != nil)
        let _method_set_echo_2586408642_name = StringName(from: "set_echo")
        self._method_set_echo_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventKey._native_ptr(), _method_set_echo_2586408642_name._native_ptr(), 2586408642)
        assert(InputEventKey._method_set_echo_2586408642 != nil)
        let _method_get_keycode_with_modifiers_1585896689_name = StringName(from: "get_keycode_with_modifiers")
        self._method_get_keycode_with_modifiers_1585896689 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventKey._native_ptr(), _method_get_keycode_with_modifiers_1585896689_name._native_ptr(), 1585896689)
        assert(InputEventKey._method_get_keycode_with_modifiers_1585896689 != nil)
        let _method_get_physical_keycode_with_modifiers_1585896689_name = StringName(from: "get_physical_keycode_with_modifiers")
        self._method_get_physical_keycode_with_modifiers_1585896689 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventKey._native_ptr(), _method_get_physical_keycode_with_modifiers_1585896689_name._native_ptr(), 1585896689)
        assert(InputEventKey._method_get_physical_keycode_with_modifiers_1585896689 != nil)
        let _method_get_key_label_with_modifiers_1585896689_name = StringName(from: "get_key_label_with_modifiers")
        self._method_get_key_label_with_modifiers_1585896689 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventKey._native_ptr(), _method_get_key_label_with_modifiers_1585896689_name._native_ptr(), 1585896689)
        assert(InputEventKey._method_get_key_label_with_modifiers_1585896689 != nil)
        let _method_as_text_keycode_201670096_name = StringName(from: "as_text_keycode")
        self._method_as_text_keycode_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventKey._native_ptr(), _method_as_text_keycode_201670096_name._native_ptr(), 201670096)
        assert(InputEventKey._method_as_text_keycode_201670096 != nil)
        let _method_as_text_physical_keycode_201670096_name = StringName(from: "as_text_physical_keycode")
        self._method_as_text_physical_keycode_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventKey._native_ptr(), _method_as_text_physical_keycode_201670096_name._native_ptr(), 201670096)
        assert(InputEventKey._method_as_text_physical_keycode_201670096 != nil)
        let _method_as_text_key_label_201670096_name = StringName(from: "as_text_key_label")
        self._method_as_text_key_label_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventKey._native_ptr(), _method_as_text_key_label_201670096_name._native_ptr(), 201670096)
        assert(InputEventKey._method_as_text_key_label_201670096 != nil)
    }

    public func set_pressed(pressed: UInt8)  {
        withUnsafePointer(to: pressed) { pressed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pressed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pressed_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_keycode(keycode: Key)  {
        withUnsafePointer(to: keycode.rawValue) { keycode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keycode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_keycode_888074362,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_keycode() -> Key {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_keycode_1585896689,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Key(godot: __resPtr.pointee)
    }
    public func set_physical_keycode(physical_keycode: Key)  {
        withUnsafePointer(to: physical_keycode.rawValue) { physical_keycode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(physical_keycode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_physical_keycode_888074362,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_physical_keycode() -> Key {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_physical_keycode_1585896689,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Key(godot: __resPtr.pointee)
    }
    public func set_key_label(key_label: Key)  {
        withUnsafePointer(to: key_label.rawValue) { key_label_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(key_label_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_key_label_888074362,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_key_label() -> Key {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_key_label_1585896689,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Key(godot: __resPtr.pointee)
    }
    public func set_unicode(unicode: Int64)  {
        withUnsafePointer(to: unicode) { unicode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(unicode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_unicode_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_unicode() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_unicode_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_echo(echo: UInt8)  {
        withUnsafePointer(to: echo) { echo_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(echo_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_echo_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_keycode_with_modifiers() -> Key {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_keycode_with_modifiers_1585896689,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Key(godot: __resPtr.pointee)
    }
    public func get_physical_keycode_with_modifiers() -> Key {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_physical_keycode_with_modifiers_1585896689,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Key(godot: __resPtr.pointee)
    }
    public func get_key_label_with_modifiers() -> Key {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_key_label_with_modifiers_1585896689,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Key(godot: __resPtr.pointee)
    }
    public func as_text_keycode() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_as_text_keycode_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func as_text_physical_keycode() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_as_text_physical_keycode_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func as_text_key_label() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_as_text_key_label_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
}