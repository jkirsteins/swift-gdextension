import godot_native

fileprivate var __godot_name_VSplitContainer: StringName! = nil

/// Vertical split container.
/// 
/// Vertical split container. See [SplitContainer]. This goes from top to bottom.
open class VSplitContainer : SplitContainer {

    

    public override class var __godot_name: StringName { __godot_name_VSplitContainer }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VSplitContainer == nil)
        __godot_name_VSplitContainer = StringName(from: "VSplitContainer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}