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

    static var _method_get_cancel_button_1856205918: GDExtensionMethodBindPtr! = nil
    static var _method_set_cancel_button_text_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_cancel_button_text_201670096: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_ConfirmationDialog = StringName(from: "ConfirmationDialog")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_cancel_button_1856205918_name = StringName(from: "get_cancel_button")
        self._method_get_cancel_button_1856205918 = self.interface.pointee.classdb_get_method_bind(__godot_name_ConfirmationDialog._native_ptr(), _method_get_cancel_button_1856205918_name._native_ptr(), 1856205918)
        assert(ConfirmationDialog._method_get_cancel_button_1856205918 != nil)
        let _method_set_cancel_button_text_83702148_name = StringName(from: "set_cancel_button_text")
        self._method_set_cancel_button_text_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_ConfirmationDialog._native_ptr(), _method_set_cancel_button_text_83702148_name._native_ptr(), 83702148)
        assert(ConfirmationDialog._method_set_cancel_button_text_83702148 != nil)
        let _method_get_cancel_button_text_201670096_name = StringName(from: "get_cancel_button_text")
        self._method_get_cancel_button_text_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_ConfirmationDialog._native_ptr(), _method_get_cancel_button_text_201670096_name._native_ptr(), 201670096)
        assert(ConfirmationDialog._method_get_cancel_button_text_201670096 != nil)
    }

    public func get_cancel_button() -> Button {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cancel_button_1856205918,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cancel_button_text_83702148,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cancel_button_text_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
}