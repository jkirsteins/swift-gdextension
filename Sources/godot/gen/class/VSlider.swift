import godot_native

fileprivate var __godot_name_VSlider: StringName! = nil

/// Vertical slider.
/// 
/// Vertical slider. See [Slider]. This one goes from bottom (min) to top (max).
///  
/// [b]Note:[/b] The [signal Range.changed] and [signal Range.value_changed] signals are part of the [Range] class which this class inherits from.
public class VSlider : Slider {

    

    public override class var __godot_name: StringName { __godot_name_VSlider }

    
    
    public override class func initialize_class() {
        __godot_name_VSlider = StringName(from: "VSlider")

        
    }

    
}