import godot_native

fileprivate var __godot_name_AcceptDialog: StringName! = nil

/// Base dialog for user notification.
/// 
/// This dialog is useful for small notifications to the user about an event. It can only be accepted or closed, with the same result.
public class AcceptDialog : Window {

    

    public override class var __godot_name: StringName { __godot_name_AcceptDialog }

    static var _method_get_ok_button_1856205918: GDExtensionMethodBindPtr! = nil
    static var _method_get_label_566733104: GDExtensionMethodBindPtr! = nil
    static var _method_set_hide_on_ok_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_hide_on_ok_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_close_on_escape_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_close_on_escape_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_add_button_4158837846: GDExtensionMethodBindPtr! = nil
    static var _method_add_cancel_button_242045556: GDExtensionMethodBindPtr! = nil
    static var _method_remove_button_1496901182: GDExtensionMethodBindPtr! = nil
    static var _method_register_text_enter_1496901182: GDExtensionMethodBindPtr! = nil
    static var _method_set_text_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_text_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_autowrap_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_has_autowrap_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_ok_button_text_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_ok_button_text_201670096: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AcceptDialog = StringName(from: "AcceptDialog")

        let _method_get_ok_button_1856205918_name = StringName(from: "get_ok_button")
        self._method_get_ok_button_1856205918 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ok_button_1856205918_name._native_ptr(), 1856205918)
        assert(AcceptDialog._method_get_ok_button_1856205918 != nil)
        let _method_get_label_566733104_name = StringName(from: "get_label")
        self._method_get_label_566733104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_label_566733104_name._native_ptr(), 566733104)
        assert(AcceptDialog._method_get_label_566733104 != nil)
        let _method_set_hide_on_ok_2586408642_name = StringName(from: "set_hide_on_ok")
        self._method_set_hide_on_ok_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_hide_on_ok_2586408642_name._native_ptr(), 2586408642)
        assert(AcceptDialog._method_set_hide_on_ok_2586408642 != nil)
        let _method_get_hide_on_ok_36873697_name = StringName(from: "get_hide_on_ok")
        self._method_get_hide_on_ok_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_hide_on_ok_36873697_name._native_ptr(), 36873697)
        assert(AcceptDialog._method_get_hide_on_ok_36873697 != nil)
        let _method_set_close_on_escape_2586408642_name = StringName(from: "set_close_on_escape")
        self._method_set_close_on_escape_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_close_on_escape_2586408642_name._native_ptr(), 2586408642)
        assert(AcceptDialog._method_set_close_on_escape_2586408642 != nil)
        let _method_get_close_on_escape_36873697_name = StringName(from: "get_close_on_escape")
        self._method_get_close_on_escape_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_close_on_escape_36873697_name._native_ptr(), 36873697)
        assert(AcceptDialog._method_get_close_on_escape_36873697 != nil)
        let _method_add_button_4158837846_name = StringName(from: "add_button")
        self._method_add_button_4158837846 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_button_4158837846_name._native_ptr(), 4158837846)
        assert(AcceptDialog._method_add_button_4158837846 != nil)
        let _method_add_cancel_button_242045556_name = StringName(from: "add_cancel_button")
        self._method_add_cancel_button_242045556 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_cancel_button_242045556_name._native_ptr(), 242045556)
        assert(AcceptDialog._method_add_cancel_button_242045556 != nil)
        let _method_remove_button_1496901182_name = StringName(from: "remove_button")
        self._method_remove_button_1496901182 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_button_1496901182_name._native_ptr(), 1496901182)
        assert(AcceptDialog._method_remove_button_1496901182 != nil)
        let _method_register_text_enter_1496901182_name = StringName(from: "register_text_enter")
        self._method_register_text_enter_1496901182 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_register_text_enter_1496901182_name._native_ptr(), 1496901182)
        assert(AcceptDialog._method_register_text_enter_1496901182 != nil)
        let _method_set_text_83702148_name = StringName(from: "set_text")
        self._method_set_text_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_text_83702148_name._native_ptr(), 83702148)
        assert(AcceptDialog._method_set_text_83702148 != nil)
        let _method_get_text_201670096_name = StringName(from: "get_text")
        self._method_get_text_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_text_201670096_name._native_ptr(), 201670096)
        assert(AcceptDialog._method_get_text_201670096 != nil)
        let _method_set_autowrap_2586408642_name = StringName(from: "set_autowrap")
        self._method_set_autowrap_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_autowrap_2586408642_name._native_ptr(), 2586408642)
        assert(AcceptDialog._method_set_autowrap_2586408642 != nil)
        let _method_has_autowrap_2240911060_name = StringName(from: "has_autowrap")
        self._method_has_autowrap_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_autowrap_2240911060_name._native_ptr(), 2240911060)
        assert(AcceptDialog._method_has_autowrap_2240911060 != nil)
        let _method_set_ok_button_text_83702148_name = StringName(from: "set_ok_button_text")
        self._method_set_ok_button_text_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ok_button_text_83702148_name._native_ptr(), 83702148)
        assert(AcceptDialog._method_set_ok_button_text_83702148 != nil)
        let _method_get_ok_button_text_201670096_name = StringName(from: "get_ok_button_text")
        self._method_get_ok_button_text_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ok_button_text_201670096_name._native_ptr(), 201670096)
        assert(AcceptDialog._method_get_ok_button_text_201670096 != nil)
    }

    public func get_ok_button() -> Button {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ok_button_1856205918,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Button(from: __resPtr.pointee)
    }
    public func get_label() -> Label {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_label_566733104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Label(from: __resPtr.pointee)
    }
    public func set_hide_on_ok(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_hide_on_ok_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_hide_on_ok() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_hide_on_ok_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_close_on_escape(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_close_on_escape_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_close_on_escape() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_close_on_escape_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func add_button(text: String, right: UInt8, action: String) -> Button {
        withUnsafePointer(to: action) { action_native in
        withUnsafePointer(to: right) { right_native in
        withUnsafePointer(to: text) { text_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native), .init(right_native), .init(action_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_button_4158837846,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Button(from: __resPtr.pointee)
        }
        }
        }
    }
    public func add_cancel_button(name: String) -> Button {
        withUnsafePointer(to: name) { name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_cancel_button_242045556,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Button(from: __resPtr.pointee)
        }
    }
    public func remove_button(button: Control)  {
        let button_native = button._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(button_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_button_1496901182,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func register_text_enter(line_edit: Control)  {
        let line_edit_native = line_edit._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_edit_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_register_text_enter_1496901182,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_text(text: String)  {
        withUnsafePointer(to: text) { text_native in
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
    }
    public func get_text() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_text_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_autowrap(autowrap: UInt8)  {
        withUnsafePointer(to: autowrap) { autowrap_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(autowrap_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_autowrap_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func has_autowrap() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_autowrap_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_ok_button_text(text: String)  {
        withUnsafePointer(to: text) { text_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ok_button_text_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ok_button_text() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ok_button_text_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
}