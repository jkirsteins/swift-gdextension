import godot_native

fileprivate var __godot_name_HSlider: StringName! = nil

/// Horizontal slider.
/// 
/// Horizontal slider. See [Slider]. This one goes from left (min) to right (max).
///  
/// [b]Note:[/b] The [signal Range.changed] and [signal Range.value_changed] signals are part of the [Range] class which this class inherits from.
open class HSlider : Slider {

    

    public override class var __godot_name: StringName { __godot_name_HSlider }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_HSlider = StringName(from: "HSlider")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}