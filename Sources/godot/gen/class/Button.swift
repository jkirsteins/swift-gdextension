import godot_native

fileprivate var __godot_name_Button: StringName! = nil

/// Standard themed Button.
/// 
/// Button is the standard themed button. It can contain text and an icon, and will display them according to the current [Theme].
///  
/// [b]Example of creating a button and assigning an action when pressed by code:[/b]
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// func _ready():
///  
///     var button = Button.new()
///  
///     button.text = "Click me"
///  
///     button.pressed.connect(self._button_pressed)
///  
///     add_child(button)
///  
///  
/// func _button_pressed():
///  
///     print("Hello world!")
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// public override void _Ready()
///  
/// {
///  
///     var button = new Button();
///  
///     button.Text = "Click me";
///  
///     button.Pressed += ButtonPressed;
///  
///     AddChild(button);
///  
/// }
///  
///  
/// private void ButtonPressed()
///  
/// {
///  
///     GD.Print("Hello world!");
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// Buttons (like all Control nodes) can also be created in the editor, but some situations may require creating them from code.
///  
/// See also [BaseButton] which contains common properties and methods associated with this node.
///  
/// [b]Note:[/b] Buttons do not interpret touch input and therefore don't support multitouch, since mouse emulation can only press one button at a given time. Use [TouchScreenButton] for buttons that trigger gameplay movement or actions, as [TouchScreenButton] supports multitouch.
open class Button : BaseButton {

    

    public override class var __godot_name: StringName { __godot_name_Button }

    static var _method_set_text_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_overrun_behavior_1008890932: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_overrun_behavior_3779142101: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_direction_119160795: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_direction_797257663: GDExtensionMethodBindPtr! = nil
    static var _method_set_language_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_language_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_button_icon_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_button_icon_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_set_flat_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_flat_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_clip_text_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_clip_text_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_alignment_2312603777: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_alignment_341400642: GDExtensionMethodBindPtr! = nil
    static var _method_set_icon_alignment_2312603777: GDExtensionMethodBindPtr! = nil
    static var _method_get_icon_alignment_341400642: GDExtensionMethodBindPtr! = nil
    static var _method_set_expand_icon_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_expand_icon_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Button = StringName(from: "Button")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_text_83702148_name = StringName(from: "set_text")
        self._method_set_text_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_Button._native_ptr(), _method_set_text_83702148_name._native_ptr(), 83702148)
        assert(Button._method_set_text_83702148 != nil)
        let _method_get_text_201670096_name = StringName(from: "get_text")
        self._method_get_text_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_Button._native_ptr(), _method_get_text_201670096_name._native_ptr(), 201670096)
        assert(Button._method_get_text_201670096 != nil)
        let _method_set_text_overrun_behavior_1008890932_name = StringName(from: "set_text_overrun_behavior")
        self._method_set_text_overrun_behavior_1008890932 = self.interface.pointee.classdb_get_method_bind(__godot_name_Button._native_ptr(), _method_set_text_overrun_behavior_1008890932_name._native_ptr(), 1008890932)
        assert(Button._method_set_text_overrun_behavior_1008890932 != nil)
        let _method_get_text_overrun_behavior_3779142101_name = StringName(from: "get_text_overrun_behavior")
        self._method_get_text_overrun_behavior_3779142101 = self.interface.pointee.classdb_get_method_bind(__godot_name_Button._native_ptr(), _method_get_text_overrun_behavior_3779142101_name._native_ptr(), 3779142101)
        assert(Button._method_get_text_overrun_behavior_3779142101 != nil)
        let _method_set_text_direction_119160795_name = StringName(from: "set_text_direction")
        self._method_set_text_direction_119160795 = self.interface.pointee.classdb_get_method_bind(__godot_name_Button._native_ptr(), _method_set_text_direction_119160795_name._native_ptr(), 119160795)
        assert(Button._method_set_text_direction_119160795 != nil)
        let _method_get_text_direction_797257663_name = StringName(from: "get_text_direction")
        self._method_get_text_direction_797257663 = self.interface.pointee.classdb_get_method_bind(__godot_name_Button._native_ptr(), _method_get_text_direction_797257663_name._native_ptr(), 797257663)
        assert(Button._method_get_text_direction_797257663 != nil)
        let _method_set_language_83702148_name = StringName(from: "set_language")
        self._method_set_language_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_Button._native_ptr(), _method_set_language_83702148_name._native_ptr(), 83702148)
        assert(Button._method_set_language_83702148 != nil)
        let _method_get_language_201670096_name = StringName(from: "get_language")
        self._method_get_language_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_Button._native_ptr(), _method_get_language_201670096_name._native_ptr(), 201670096)
        assert(Button._method_get_language_201670096 != nil)
        let _method_set_button_icon_4051416890_name = StringName(from: "set_button_icon")
        self._method_set_button_icon_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name_Button._native_ptr(), _method_set_button_icon_4051416890_name._native_ptr(), 4051416890)
        assert(Button._method_set_button_icon_4051416890 != nil)
        let _method_get_button_icon_3635182373_name = StringName(from: "get_button_icon")
        self._method_get_button_icon_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name_Button._native_ptr(), _method_get_button_icon_3635182373_name._native_ptr(), 3635182373)
        assert(Button._method_get_button_icon_3635182373 != nil)
        let _method_set_flat_2586408642_name = StringName(from: "set_flat")
        self._method_set_flat_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_Button._native_ptr(), _method_set_flat_2586408642_name._native_ptr(), 2586408642)
        assert(Button._method_set_flat_2586408642 != nil)
        let _method_is_flat_36873697_name = StringName(from: "is_flat")
        self._method_is_flat_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Button._native_ptr(), _method_is_flat_36873697_name._native_ptr(), 36873697)
        assert(Button._method_is_flat_36873697 != nil)
        let _method_set_clip_text_2586408642_name = StringName(from: "set_clip_text")
        self._method_set_clip_text_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_Button._native_ptr(), _method_set_clip_text_2586408642_name._native_ptr(), 2586408642)
        assert(Button._method_set_clip_text_2586408642 != nil)
        let _method_get_clip_text_36873697_name = StringName(from: "get_clip_text")
        self._method_get_clip_text_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Button._native_ptr(), _method_get_clip_text_36873697_name._native_ptr(), 36873697)
        assert(Button._method_get_clip_text_36873697 != nil)
        let _method_set_text_alignment_2312603777_name = StringName(from: "set_text_alignment")
        self._method_set_text_alignment_2312603777 = self.interface.pointee.classdb_get_method_bind(__godot_name_Button._native_ptr(), _method_set_text_alignment_2312603777_name._native_ptr(), 2312603777)
        assert(Button._method_set_text_alignment_2312603777 != nil)
        let _method_get_text_alignment_341400642_name = StringName(from: "get_text_alignment")
        self._method_get_text_alignment_341400642 = self.interface.pointee.classdb_get_method_bind(__godot_name_Button._native_ptr(), _method_get_text_alignment_341400642_name._native_ptr(), 341400642)
        assert(Button._method_get_text_alignment_341400642 != nil)
        let _method_set_icon_alignment_2312603777_name = StringName(from: "set_icon_alignment")
        self._method_set_icon_alignment_2312603777 = self.interface.pointee.classdb_get_method_bind(__godot_name_Button._native_ptr(), _method_set_icon_alignment_2312603777_name._native_ptr(), 2312603777)
        assert(Button._method_set_icon_alignment_2312603777 != nil)
        let _method_get_icon_alignment_341400642_name = StringName(from: "get_icon_alignment")
        self._method_get_icon_alignment_341400642 = self.interface.pointee.classdb_get_method_bind(__godot_name_Button._native_ptr(), _method_get_icon_alignment_341400642_name._native_ptr(), 341400642)
        assert(Button._method_get_icon_alignment_341400642 != nil)
        let _method_set_expand_icon_2586408642_name = StringName(from: "set_expand_icon")
        self._method_set_expand_icon_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_Button._native_ptr(), _method_set_expand_icon_2586408642_name._native_ptr(), 2586408642)
        assert(Button._method_set_expand_icon_2586408642 != nil)
        let _method_is_expand_icon_36873697_name = StringName(from: "is_expand_icon")
        self._method_is_expand_icon_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Button._native_ptr(), _method_is_expand_icon_36873697_name._native_ptr(), 36873697)
        assert(Button._method_is_expand_icon_36873697 != nil)
    }

    public func set_text(text: godot.String)  {
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_text_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_text() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_text_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_text_overrun_behavior(overrun_behavior: TextServer.OverrunBehavior)  {
        withUnsafePointer(to: overrun_behavior.rawValue) { overrun_behavior_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(overrun_behavior_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_text_overrun_behavior_1008890932,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_text_overrun_behavior() -> TextServer.OverrunBehavior {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_text_overrun_behavior_3779142101,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.OverrunBehavior(godot: __resPtr.pointee)
    }
    public func set_text_direction(direction: Control.TextDirection)  {
        withUnsafePointer(to: direction.rawValue) { direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(direction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_text_direction_119160795,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_text_direction() -> Control.TextDirection {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_text_direction_797257663,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control.TextDirection(godot: __resPtr.pointee)
    }
    public func set_language(language: godot.String)  {
        let language_native = language._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(language_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_language_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_language() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_language_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_button_icon(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_button_icon_4051416890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_button_icon() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_button_icon_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func set_flat(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_flat_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_flat() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_flat_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_clip_text(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_clip_text_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_clip_text() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_clip_text_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_text_alignment(alignment: HorizontalAlignment)  {
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(alignment_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_text_alignment_2312603777,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_text_alignment() -> HorizontalAlignment {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_text_alignment_341400642,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return HorizontalAlignment(godot: __resPtr.pointee)
    }
    public func set_icon_alignment(icon_alignment: HorizontalAlignment)  {
        withUnsafePointer(to: icon_alignment.rawValue) { icon_alignment_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(icon_alignment_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_icon_alignment_2312603777,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_icon_alignment() -> HorizontalAlignment {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_icon_alignment_341400642,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return HorizontalAlignment(godot: __resPtr.pointee)
    }
    public func set_expand_icon(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_expand_icon_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_expand_icon() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_expand_icon_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}