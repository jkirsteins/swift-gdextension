import godot_native

fileprivate var __godot_name_HSplitContainer: StringName! = nil

/// Horizontal split container.
/// 
/// Horizontal split container. See [SplitContainer]. This goes from left to right.
open class HSplitContainer : SplitContainer {

    

    public override class var __godot_name: StringName { __godot_name_HSplitContainer }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_HSplitContainer == nil)
        __godot_name_HSplitContainer = StringName(from: "HSplitContainer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}