import godot_native

fileprivate var __godot_name_ConfirmationDialog: StringName! = nil

/// Dialog for confirmation of actions.
/// 
/// Dialog for confirmation of actions. This dialog inherits from [AcceptDialog], but has by default an OK and Cancel button (in host OS order).
///  
/// To get cancel action, you can use:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// get_cancel_button().pressed.connect(self.canceled)
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// GetCancelButton().Pressed += Canceled;
///  
/// [/csharp]
///  
/// [/codeblocks]
open class ConfirmationDialog : AcceptDialog {

    

    public override class var __godot_name: StringName { __godot_name_ConfirmationDialog }

    static var _method_get_cancel_button_1856205918: StringName! = nil
    static var _method_set_cancel_button_text_83702148: StringName! = nil
    static var _method_get_cancel_button_text_201670096: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ConfirmationDialog == nil)
        __godot_name_ConfirmationDialog = StringName(from: "ConfirmationDialog")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_cancel_button_1856205918 = StringName(from: "get_cancel_button")
        assert(self._method_get_cancel_button_1856205918 != nil)
        self._method_set_cancel_button_text_83702148 = StringName(from: "set_cancel_button_text")
        assert(self._method_set_cancel_button_text_83702148 != nil)
        self._method_get_cancel_button_text_201670096 = StringName(from: "get_cancel_button_text")
        assert(self._method_get_cancel_button_text_201670096 != nil)
    }

    public func get_cancel_button() -> Button {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cancel_button_1856205918._native_ptr(),
                    1856205918)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Button(godot: __resPtr.pointee)
    }
    public func set_cancel_button_text(text: godot.String)  {
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_cancel_button_text_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_cancel_button_text() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cancel_button_text_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
}