import godot_native

fileprivate var __godot_name_AnimationNodeStateMachinePlayback: StringName! = nil

/// Playback control for [AnimationNodeStateMachine].
/// 
/// Allows control of [AnimationTree] state machines created with [AnimationNodeStateMachine]. Retrieve with [code]$AnimationTree.get("parameters/playback")[/code].
///  
/// [b]Example:[/b]
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var state_machine = $AnimationTree.get("parameters/playback")
///  
/// state_machine.travel("some_state")
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// var stateMachine = GetNode<AnimationTree>("AnimationTree").Get("parameters/playback") as AnimationNodeStateMachinePlayback;
///  
/// stateMachine.Travel("some_state");
///  
/// [/csharp]
///  
/// [/codeblocks]
open class AnimationNodeStateMachinePlayback : Resource {

    

    public override class var __godot_name: StringName { __godot_name_AnimationNodeStateMachinePlayback }

    static var _method_travel_3683006648: GDExtensionMethodBindPtr! = nil
    static var _method_start_3683006648: GDExtensionMethodBindPtr! = nil
    static var _method_next_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_stop_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_is_playing_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_node_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_play_position_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_length_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_fading_from_node_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_get_travel_path_1139954409: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AnimationNodeStateMachinePlayback = StringName(from: "AnimationNodeStateMachinePlayback")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_travel_3683006648_name = StringName(from: "travel")
        self._method_travel_3683006648 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachinePlayback._native_ptr(), _method_travel_3683006648_name._native_ptr(), 3683006648)
        assert(AnimationNodeStateMachinePlayback._method_travel_3683006648 != nil)
        let _method_start_3683006648_name = StringName(from: "start")
        self._method_start_3683006648 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachinePlayback._native_ptr(), _method_start_3683006648_name._native_ptr(), 3683006648)
        assert(AnimationNodeStateMachinePlayback._method_start_3683006648 != nil)
        let _method_next_3218959716_name = StringName(from: "next")
        self._method_next_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachinePlayback._native_ptr(), _method_next_3218959716_name._native_ptr(), 3218959716)
        assert(AnimationNodeStateMachinePlayback._method_next_3218959716 != nil)
        let _method_stop_3218959716_name = StringName(from: "stop")
        self._method_stop_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachinePlayback._native_ptr(), _method_stop_3218959716_name._native_ptr(), 3218959716)
        assert(AnimationNodeStateMachinePlayback._method_stop_3218959716 != nil)
        let _method_is_playing_36873697_name = StringName(from: "is_playing")
        self._method_is_playing_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachinePlayback._native_ptr(), _method_is_playing_36873697_name._native_ptr(), 36873697)
        assert(AnimationNodeStateMachinePlayback._method_is_playing_36873697 != nil)
        let _method_get_current_node_2002593661_name = StringName(from: "get_current_node")
        self._method_get_current_node_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachinePlayback._native_ptr(), _method_get_current_node_2002593661_name._native_ptr(), 2002593661)
        assert(AnimationNodeStateMachinePlayback._method_get_current_node_2002593661 != nil)
        let _method_get_current_play_position_1740695150_name = StringName(from: "get_current_play_position")
        self._method_get_current_play_position_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachinePlayback._native_ptr(), _method_get_current_play_position_1740695150_name._native_ptr(), 1740695150)
        assert(AnimationNodeStateMachinePlayback._method_get_current_play_position_1740695150 != nil)
        let _method_get_current_length_1740695150_name = StringName(from: "get_current_length")
        self._method_get_current_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachinePlayback._native_ptr(), _method_get_current_length_1740695150_name._native_ptr(), 1740695150)
        assert(AnimationNodeStateMachinePlayback._method_get_current_length_1740695150 != nil)
        let _method_get_fading_from_node_2002593661_name = StringName(from: "get_fading_from_node")
        self._method_get_fading_from_node_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachinePlayback._native_ptr(), _method_get_fading_from_node_2002593661_name._native_ptr(), 2002593661)
        assert(AnimationNodeStateMachinePlayback._method_get_fading_from_node_2002593661 != nil)
        let _method_get_travel_path_1139954409_name = StringName(from: "get_travel_path")
        self._method_get_travel_path_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachinePlayback._native_ptr(), _method_get_travel_path_1139954409_name._native_ptr(), 1139954409)
        assert(AnimationNodeStateMachinePlayback._method_get_travel_path_1139954409 != nil)
    }

    public func travel(to_node: StringName, reset_on_teleport: UInt8)  {
        withUnsafePointer(to: reset_on_teleport) { reset_on_teleport_native in
        let to_node_native = to_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(to_node_native), .init(reset_on_teleport_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_travel_3683006648,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func start(node: StringName, reset: UInt8)  {
        withUnsafePointer(to: reset) { reset_native in
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native), .init(reset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_start_3683006648,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func next()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_next_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
    public func is_playing() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_playing_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_current_node() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_node_2002593661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
    public func get_current_play_position() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_play_position_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_current_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_length_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_fading_from_node() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fading_from_node_2002593661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
    public func get_travel_path() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_travel_path_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
}