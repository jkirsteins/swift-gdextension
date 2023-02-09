import godot_native

fileprivate var __godot_name_MainLoop: StringName! = nil

/// Abstract base class for the game's main loop.
/// 
/// [MainLoop] is the abstract base class for a Godot project's game loop. It is inherited by [SceneTree], which is the default game loop implementation used in Godot projects, though it is also possible to write and use one's own [MainLoop] subclass instead of the scene tree.
///  
/// Upon the application start, a [MainLoop] implementation must be provided to the OS; otherwise, the application will exit. This happens automatically (and a [SceneTree] is created) unless a [MainLoop] [Script] is provided from the command line (with e.g. [code]godot -s my_loop.gd[/code] or the "Main Loop Type" project setting is overwritten.
///  
/// Here is an example script implementing a simple [MainLoop]:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// class_name CustomMainLoop
///  
/// extends MainLoop
///  
///  
/// var time_elapsed = 0
///  
///  
/// func _initialize():
///  
///     print("Initialized:")
///  
///     print("  Starting time: %s" % str(time_elapsed))
///  
///  
/// func _process(delta):
///  
///     time_elapsed += delta
///  
///     # Return true to end the main loop.
///  
///     return Input.get_mouse_button_mask() != 0 || Input.is_key_pressed(KEY_ESCAPE)
///  
///  
/// func _finalize():
///  
///     print("Finalized:")
///  
///     print("  End time: %s" % str(time_elapsed))
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// using Godot;
///  
///  
/// public partial class CustomMainLoop : MainLoop
///  
/// {
///  
///     private double _timeElapsed = 0;
///  
///  
///     public override void _Initialize()
///  
///     {
///  
///         GD.Print("Initialized:");
///  
///         GD.Print($"  Starting Time: {_timeElapsed}");
///  
///     }
///  
///  
///     public override bool _Process(double delta)
///  
///     {
///  
///         _timeElapsed += delta;
///  
///         // Return true to end the main loop.
///  
///         return Input.GetMouseButtonMask() != 0 || Input.IsKeyPressed(Key.Escape);
///  
///     }
///  
///  
///     private void _Finalize()
///  
///     {
///  
///         GD.Print("Finalized:");
///  
///         GD.Print($"  End Time: {_timeElapsed}");
///  
///     }
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
open class MainLoop : Object {

    

    public override class var __godot_name: StringName { __godot_name_MainLoop }

    static var _method__initialize_0: StringName! = nil
    static var _method__physics_process_0: StringName! = nil
    static var _method__process_0: StringName! = nil
    static var _method__finalize_0: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_MainLoop == nil)
        __godot_name_MainLoop = StringName(from: "MainLoop")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    public func _initialize()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _physics_process(delta: Float64) -> UInt8 {
        withUnsafePointer(to: delta) { delta_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(delta_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func _process(delta: Float64) -> UInt8 {
        withUnsafePointer(to: delta) { delta_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(delta_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func _finalize()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
}