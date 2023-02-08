import godot_native

fileprivate var __godot_name_ScriptCreateDialog: StringName! = nil

/// The Editor's popup dialog for creating new [Script] files.
/// 
/// The [ScriptCreateDialog] creates script files according to a given template for a given scripting language. The standard use is to configure its fields prior to calling one of the [method Window.popup] methods.
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// func _ready():
///  
///     var dialog = ScriptCreateDialog.new();
///  
///     dialog.config("Node", "res://new_node.gd") # For in-engine types.
///  
///     dialog.config("\"res://base_node.gd\"", "res://derived_node.gd") # For script types.
///  
///     dialog.popup_centered()
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// public override void _Ready()
///  
/// {
///  
///     var dialog = new ScriptCreateDialog();
///  
///     dialog.Config("Node", "res://NewNode.cs"); // For in-engine types.
///  
///     dialog.Config("\"res://BaseNode.cs\"", "res://DerivedNode.cs"); // For script types.
///  
///     dialog.PopupCentered();
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
open class ScriptCreateDialog : ConfirmationDialog {

    

    public override class var __godot_name: StringName { __godot_name_ScriptCreateDialog }

    static var _method_config_4210001628: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        __godot_name_ScriptCreateDialog = StringName(from: "ScriptCreateDialog")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_config_4210001628_name = StringName(from: "config")
        self._method_config_4210001628 = self.interface.pointee.classdb_get_method_bind(__godot_name_ScriptCreateDialog._native_ptr(), _method_config_4210001628_name._native_ptr(), 4210001628)
        assert(ScriptCreateDialog._method_config_4210001628 != nil)
    }

    public func config(inherits: godot.String, path: godot.String, built_in_enabled: UInt8, load_enabled: UInt8)  {
        withUnsafePointer(to: load_enabled) { load_enabled_native in
        withUnsafePointer(to: built_in_enabled) { built_in_enabled_native in
        let path_native = path._native_ptr()
        let inherits_native = inherits._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(inherits_native), .init(path_native), .init(built_in_enabled_native), .init(load_enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_config_4210001628,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
}