import godot_native

fileprivate var __godot_name_Tween: StringName! = nil

/// Lightweight object used for general-purpose animation via script, using [Tweener]s.
/// 
/// Tweens are mostly useful for animations requiring a numerical property to be interpolated over a range of values. The name [i]tween[/i] comes from [i]in-betweening[/i], an animation technique where you specify [i]keyframes[/i] and the computer interpolates the frames that appear between them. Animating something with a [Tween] is called tweening.
///  
/// [Tween] is more suited than [AnimationPlayer] for animations where you don't know the final values in advance. For example, interpolating a dynamically-chosen camera zoom value is best done with a [Tween]; it would be difficult to do the same thing with an [AnimationPlayer] node. Tweens are also more light-weight than [AnimationPlayer], so they are very much suited for simple animations or general tasks that don't require visual tweaking provided by the editor. They can be used in a fire-and-forget manner for some logic that normally would be done by code. You can e.g. make something shoot periodically by using a looped [CallbackTweener] with a delay.
///  
/// A [Tween] can be created by using either [method SceneTree.create_tween] or [method Node.create_tween]. [Tween]s created manually (i.e. by using [code]Tween.new()[/code]) are invalid and can't be used for tweening values.
///  
/// A tween animation is created by adding [Tweener]s to the [Tween] object, using [method tween_property], [method tween_interval], [method tween_callback] or [method tween_method]:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var tween = get_tree().create_tween()
///  
/// tween.tween_property($Sprite, "modulate", Color.RED, 1)
///  
/// tween.tween_property($Sprite, "scale", Vector2(), 1)
///  
/// tween.tween_callback($Sprite.queue_free)
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// Tween tween = GetTree().CreateTween();
///  
/// tween.TweenProperty(GetNode("Sprite"), "modulate", Colors.Red, 1.0f);
///  
/// tween.TweenProperty(GetNode("Sprite"), "scale", Vector2.Zero, 1.0f);
///  
/// tween.TweenCallback(Callable.From(GetNode("Sprite").QueueFree));
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// This sequence will make the [code]$Sprite[/code] node turn red, then shrink, before finally calling [method Node.queue_free] to free the sprite. [Tweener]s are executed one after another by default. This behavior can be changed using [method parallel] and [method set_parallel].
///  
/// When a [Tweener] is created with one of the [code]tween_*[/code] methods, a chained method call can be used to tweak the properties of this [Tweener]. For example, if you want to set a different transition type in the above example, you can use [method set_trans]:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var tween = get_tree().create_tween()
///  
/// tween.tween_property($Sprite, "modulate", Color.RED, 1).set_trans(Tween.TRANS_SINE)
///  
/// tween.tween_property($Sprite, "scale", Vector2(), 1).set_trans(Tween.TRANS_BOUNCE)
///  
/// tween.tween_callback($Sprite.queue_free)
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// Tween tween = GetTree().CreateTween();
///  
/// tween.TweenProperty(GetNode("Sprite"), "modulate", Colors.Red, 1.0f).SetTrans(Tween.TransitionType.Sine);
///  
/// tween.TweenProperty(GetNode("Sprite"), "scale", Vector2.Zero, 1.0f).SetTrans(Tween.TransitionType.Bounce);
///  
/// tween.TweenCallback(Callable.From(GetNode("Sprite").QueueFree));
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// Most of the [Tween] methods can be chained this way too. In the following example the [Tween] is bound to the running script's node and a default transition is set for its [Tweener]s:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var tween = get_tree().create_tween().bind_node(self).set_trans(Tween.TRANS_ELASTIC)
///  
/// tween.tween_property($Sprite, "modulate", Color.RED, 1)
///  
/// tween.tween_property($Sprite, "scale", Vector2(), 1)
///  
/// tween.tween_callback($Sprite.queue_free)
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// var tween = GetTree().CreateTween().BindNode(this).SetTrans(Tween.TransitionType.Elastic);
///  
/// tween.TweenProperty(GetNode("Sprite"), "modulate", Colors.Red, 1.0f);
///  
/// tween.TweenProperty(GetNode("Sprite"), "scale", Vector2.Zero, 1.0f);
///  
/// tween.TweenCallback(Callable.From(GetNode("Sprite").QueueFree));
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// Another interesting use for [Tween]s is animating arbitrary sets of objects:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var tween = create_tween()
///  
/// for sprite in get_children():
///  
///     tween.tween_property(sprite, "position", Vector2(0, 0), 1)
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// Tween tween = CreateTween();
///  
/// foreach (Node sprite in GetChildren())
///  
///     tween.TweenProperty(sprite, "position", Vector2.Zero, 1.0f);
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// In the example above, all children of a node are moved one after another to position (0, 0).
///  
/// You should avoid using more than one [Tween] per object's property. If two or more tweens animate one property at the same time, the last one created will take priority and assign the final value. If you want to interrupt and restart an animation, consider assigning the [Tween] to a variable:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var tween
///  
/// func animate():
///  
///     if tween:
///  
///         tween.kill() # Abort the previous animation.
///  
///     tween = create_tween()
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// private Tween _tween;
///  
///  
/// public void Animate()
///  
/// {
///  
///     if (_tween != null)
///  
///         _tween.Kill(); // Abort the previous animation
///  
///     _tween = CreateTween();
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// Some [Tweener]s use transitions and eases. The first accepts a [enum TransitionType] constant, and refers to the way the timing of the animation is handled (see [url=https://easings.net/]easings.net[/url] for some examples). The second accepts an [enum EaseType] constant, and controls where the [code]trans_type[/code] is applied to the interpolation (in the beginning, the end, or both). If you don't know which transition and easing to pick, you can try different [enum TransitionType] constants with [constant EASE_IN_OUT], and use the one that looks best.
///  
/// [url=https://raw.githubusercontent.com/godotengine/godot-docs/master/img/tween_cheatsheet.png]Tween easing and transition types cheatsheet[/url]
///  
/// [b]Note:[/b] All [Tween]s will automatically start by default. To prevent a [Tween] from autostarting, you can call [method stop] immediately after it is created.
///  
/// [b]Note:[/b] [Tween]s are processing after all of nodes in the current frame, i.e. after [method Node._process] or [method Node._physics_process] (depending on [enum TweenProcessMode]).
open class Tween : RefCounted {

    public enum TweenProcessMode : Int32 {
        case TWEEN_PROCESS_PHYSICS = 0
        case TWEEN_PROCESS_IDLE = 1
    }
    public enum TweenPauseMode : Int32 {
        case TWEEN_PAUSE_BOUND = 0
        case TWEEN_PAUSE_STOP = 1
        case TWEEN_PAUSE_PROCESS = 2
    }
    public enum TransitionType : Int32 {
        case TRANS_LINEAR = 0
        case TRANS_SINE = 1
        case TRANS_QUINT = 2
        case TRANS_QUART = 3
        case TRANS_QUAD = 4
        case TRANS_EXPO = 5
        case TRANS_ELASTIC = 6
        case TRANS_CUBIC = 7
        case TRANS_CIRC = 8
        case TRANS_BOUNCE = 9
        case TRANS_BACK = 10
    }
    public enum EaseType : Int32 {
        case EASE_IN = 0
        case EASE_OUT = 1
        case EASE_IN_OUT = 2
        case EASE_OUT_IN = 3
    }

    public override class var __godot_name: StringName { __godot_name_Tween }

    static var _method_tween_property_4049770449: GDExtensionMethodBindPtr! = nil
    static var _method_tween_interval_413360199: GDExtensionMethodBindPtr! = nil
    static var _method_tween_callback_1540176488: GDExtensionMethodBindPtr! = nil
    static var _method_tween_method_2337877153: GDExtensionMethodBindPtr! = nil
    static var _method_custom_step_330693286: GDExtensionMethodBindPtr! = nil
    static var _method_stop_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_pause_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_play_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_kill_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_total_elapsed_time_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_is_running_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_is_valid_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_bind_node_2946786331: GDExtensionMethodBindPtr! = nil
    static var _method_set_process_mode_855258840: GDExtensionMethodBindPtr! = nil
    static var _method_set_pause_mode_3363368837: GDExtensionMethodBindPtr! = nil
    static var _method_set_parallel_1942052223: GDExtensionMethodBindPtr! = nil
    static var _method_set_loops_2670836414: GDExtensionMethodBindPtr! = nil
    static var _method_set_speed_scale_3961971106: GDExtensionMethodBindPtr! = nil
    static var _method_set_trans_3965963875: GDExtensionMethodBindPtr! = nil
    static var _method_set_ease_1208117252: GDExtensionMethodBindPtr! = nil
    static var _method_parallel_3426978995: GDExtensionMethodBindPtr! = nil
    static var _method_chain_3426978995: GDExtensionMethodBindPtr! = nil
    static var _method_interpolate_value_3452526450: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Tween = StringName(from: "Tween")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_tween_property_4049770449_name = StringName(from: "tween_property")
        self._method_tween_property_4049770449 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_tween_property_4049770449_name._native_ptr(), 4049770449)
        assert(Tween._method_tween_property_4049770449 != nil)
        let _method_tween_interval_413360199_name = StringName(from: "tween_interval")
        self._method_tween_interval_413360199 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_tween_interval_413360199_name._native_ptr(), 413360199)
        assert(Tween._method_tween_interval_413360199 != nil)
        let _method_tween_callback_1540176488_name = StringName(from: "tween_callback")
        self._method_tween_callback_1540176488 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_tween_callback_1540176488_name._native_ptr(), 1540176488)
        assert(Tween._method_tween_callback_1540176488 != nil)
        let _method_tween_method_2337877153_name = StringName(from: "tween_method")
        self._method_tween_method_2337877153 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_tween_method_2337877153_name._native_ptr(), 2337877153)
        assert(Tween._method_tween_method_2337877153 != nil)
        let _method_custom_step_330693286_name = StringName(from: "custom_step")
        self._method_custom_step_330693286 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_custom_step_330693286_name._native_ptr(), 330693286)
        assert(Tween._method_custom_step_330693286 != nil)
        let _method_stop_3218959716_name = StringName(from: "stop")
        self._method_stop_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_stop_3218959716_name._native_ptr(), 3218959716)
        assert(Tween._method_stop_3218959716 != nil)
        let _method_pause_3218959716_name = StringName(from: "pause")
        self._method_pause_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_pause_3218959716_name._native_ptr(), 3218959716)
        assert(Tween._method_pause_3218959716 != nil)
        let _method_play_3218959716_name = StringName(from: "play")
        self._method_play_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_play_3218959716_name._native_ptr(), 3218959716)
        assert(Tween._method_play_3218959716 != nil)
        let _method_kill_3218959716_name = StringName(from: "kill")
        self._method_kill_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_kill_3218959716_name._native_ptr(), 3218959716)
        assert(Tween._method_kill_3218959716 != nil)
        let _method_get_total_elapsed_time_1740695150_name = StringName(from: "get_total_elapsed_time")
        self._method_get_total_elapsed_time_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_get_total_elapsed_time_1740695150_name._native_ptr(), 1740695150)
        assert(Tween._method_get_total_elapsed_time_1740695150 != nil)
        let _method_is_running_2240911060_name = StringName(from: "is_running")
        self._method_is_running_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_is_running_2240911060_name._native_ptr(), 2240911060)
        assert(Tween._method_is_running_2240911060 != nil)
        let _method_is_valid_2240911060_name = StringName(from: "is_valid")
        self._method_is_valid_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_is_valid_2240911060_name._native_ptr(), 2240911060)
        assert(Tween._method_is_valid_2240911060 != nil)
        let _method_bind_node_2946786331_name = StringName(from: "bind_node")
        self._method_bind_node_2946786331 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_bind_node_2946786331_name._native_ptr(), 2946786331)
        assert(Tween._method_bind_node_2946786331 != nil)
        let _method_set_process_mode_855258840_name = StringName(from: "set_process_mode")
        self._method_set_process_mode_855258840 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_set_process_mode_855258840_name._native_ptr(), 855258840)
        assert(Tween._method_set_process_mode_855258840 != nil)
        let _method_set_pause_mode_3363368837_name = StringName(from: "set_pause_mode")
        self._method_set_pause_mode_3363368837 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_set_pause_mode_3363368837_name._native_ptr(), 3363368837)
        assert(Tween._method_set_pause_mode_3363368837 != nil)
        let _method_set_parallel_1942052223_name = StringName(from: "set_parallel")
        self._method_set_parallel_1942052223 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_set_parallel_1942052223_name._native_ptr(), 1942052223)
        assert(Tween._method_set_parallel_1942052223 != nil)
        let _method_set_loops_2670836414_name = StringName(from: "set_loops")
        self._method_set_loops_2670836414 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_set_loops_2670836414_name._native_ptr(), 2670836414)
        assert(Tween._method_set_loops_2670836414 != nil)
        let _method_set_speed_scale_3961971106_name = StringName(from: "set_speed_scale")
        self._method_set_speed_scale_3961971106 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_set_speed_scale_3961971106_name._native_ptr(), 3961971106)
        assert(Tween._method_set_speed_scale_3961971106 != nil)
        let _method_set_trans_3965963875_name = StringName(from: "set_trans")
        self._method_set_trans_3965963875 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_set_trans_3965963875_name._native_ptr(), 3965963875)
        assert(Tween._method_set_trans_3965963875 != nil)
        let _method_set_ease_1208117252_name = StringName(from: "set_ease")
        self._method_set_ease_1208117252 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_set_ease_1208117252_name._native_ptr(), 1208117252)
        assert(Tween._method_set_ease_1208117252 != nil)
        let _method_parallel_3426978995_name = StringName(from: "parallel")
        self._method_parallel_3426978995 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_parallel_3426978995_name._native_ptr(), 3426978995)
        assert(Tween._method_parallel_3426978995 != nil)
        let _method_chain_3426978995_name = StringName(from: "chain")
        self._method_chain_3426978995 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_chain_3426978995_name._native_ptr(), 3426978995)
        assert(Tween._method_chain_3426978995 != nil)
        let _method_interpolate_value_3452526450_name = StringName(from: "interpolate_value")
        self._method_interpolate_value_3452526450 = self.interface.pointee.classdb_get_method_bind(__godot_name_Tween._native_ptr(), _method_interpolate_value_3452526450_name._native_ptr(), 3452526450)
        assert(Tween._method_interpolate_value_3452526450 != nil)
    }

    public func tween_property(object: Object, property: NodePath, final_val: Variant, duration: Float64) -> PropertyTweener {
        withUnsafePointer(to: duration) { duration_native in
        let final_val_native = final_val._native_ptr()
        let property_native = property._native_ptr()
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native), .init(property_native), .init(final_val_native), .init(duration_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tween_property_4049770449,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PropertyTweener(godot: __resPtr.pointee)
        }
    }
    public func tween_interval(time: Float64) -> IntervalTweener {
        withUnsafePointer(to: time) { time_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(time_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tween_interval_413360199,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return IntervalTweener(godot: __resPtr.pointee)
        }
    }
    public func tween_callback(callback: Callable) -> CallbackTweener {
        let callback_native = callback._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(callback_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tween_callback_1540176488,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CallbackTweener(godot: __resPtr.pointee)
    }
    public func tween_method(method: Callable, from: Variant, to: Variant, duration: Float64) -> MethodTweener {
        withUnsafePointer(to: duration) { duration_native in
        let to_native = to._native_ptr()
        let from_native = from._native_ptr()
        let method_native = method._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(method_native), .init(from_native), .init(to_native), .init(duration_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_tween_method_2337877153,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MethodTweener(godot: __resPtr.pointee)
        }
    }
    public func custom_step(delta: Float64) -> UInt8 {
        withUnsafePointer(to: delta) { delta_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(delta_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_custom_step_330693286,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func stop()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_stop_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func pause()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_pause_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func play()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_play_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func kill()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_kill_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_total_elapsed_time() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_total_elapsed_time_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func is_running() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_running_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func is_valid() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_valid_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func bind_node(node: Node) -> Tween {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_bind_node_2946786331,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Tween(godot: __resPtr.pointee)
    }
    public func set_process_mode(mode: Tween.TweenProcessMode) -> Tween {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_process_mode_855258840,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Tween(godot: __resPtr.pointee)
        }
    }
    public func set_pause_mode(mode: Tween.TweenPauseMode) -> Tween {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pause_mode_3363368837,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Tween(godot: __resPtr.pointee)
        }
    }
    public func set_parallel(parallel: UInt8) -> Tween {
        withUnsafePointer(to: parallel) { parallel_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parallel_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_parallel_1942052223,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Tween(godot: __resPtr.pointee)
        }
    }
    public func set_loops(loops: Int64) -> Tween {
        withUnsafePointer(to: loops) { loops_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(loops_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_loops_2670836414,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Tween(godot: __resPtr.pointee)
        }
    }
    public func set_speed_scale(speed: Float64) -> Tween {
        withUnsafePointer(to: speed) { speed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(speed_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_speed_scale_3961971106,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Tween(godot: __resPtr.pointee)
        }
    }
    public func set_trans(trans: Tween.TransitionType) -> Tween {
        withUnsafePointer(to: trans.rawValue) { trans_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(trans_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_trans_3965963875,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Tween(godot: __resPtr.pointee)
        }
    }
    public func set_ease(ease: Tween.EaseType) -> Tween {
        withUnsafePointer(to: ease.rawValue) { ease_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ease_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ease_1208117252,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Tween(godot: __resPtr.pointee)
        }
    }
    public func parallel() -> Tween {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_parallel_3426978995,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Tween(godot: __resPtr.pointee)
    }
    public func chain() -> Tween {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_chain_3426978995,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Tween(godot: __resPtr.pointee)
    }
    public func interpolate_value(initial_value: Variant, delta_value: Variant, elapsed_time: Float64, duration: Float64, trans_type: Tween.TransitionType, ease_type: Tween.EaseType) -> Variant {
        withUnsafePointer(to: duration) { duration_native in
        withUnsafePointer(to: elapsed_time) { elapsed_time_native in
        withUnsafePointer(to: ease_type.rawValue) { ease_type_native in
        withUnsafePointer(to: trans_type.rawValue) { trans_type_native in
        let delta_value_native = delta_value._native_ptr()
        let initial_value_native = initial_value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(initial_value_native), .init(delta_value_native), .init(elapsed_time_native), .init(duration_native), .init(trans_type_native), .init(ease_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_interpolate_value_3452526450,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
        }
        }
        }
        }
    }
}