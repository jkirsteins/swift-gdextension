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

    static var _method_travel_3683006648: StringName! = nil
    static var _method_start_3683006648: StringName! = nil
    static var _method_next_3218959716: StringName! = nil
    static var _method_stop_3218959716: StringName! = nil
    static var _method_is_playing_36873697: StringName! = nil
    static var _method_get_current_node_2002593661: StringName! = nil
    static var _method_get_current_play_position_1740695150: StringName! = nil
    static var _method_get_current_length_1740695150: StringName! = nil
    static var _method_get_fading_from_node_2002593661: StringName! = nil
    static var _method_get_travel_path_1139954409: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AnimationNodeStateMachinePlayback == nil)
        __godot_name_AnimationNodeStateMachinePlayback = StringName(from: "AnimationNodeStateMachinePlayback")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_travel_3683006648 = StringName(from: "travel")
        assert(self._method_travel_3683006648 != nil)
        self._method_start_3683006648 = StringName(from: "start")
        assert(self._method_start_3683006648 != nil)
        self._method_next_3218959716 = StringName(from: "next")
        assert(self._method_next_3218959716 != nil)
        self._method_stop_3218959716 = StringName(from: "stop")
        assert(self._method_stop_3218959716 != nil)
        self._method_is_playing_36873697 = StringName(from: "is_playing")
        assert(self._method_is_playing_36873697 != nil)
        self._method_get_current_node_2002593661 = StringName(from: "get_current_node")
        assert(self._method_get_current_node_2002593661 != nil)
        self._method_get_current_play_position_1740695150 = StringName(from: "get_current_play_position")
        assert(self._method_get_current_play_position_1740695150 != nil)
        self._method_get_current_length_1740695150 = StringName(from: "get_current_length")
        assert(self._method_get_current_length_1740695150 != nil)
        self._method_get_fading_from_node_2002593661 = StringName(from: "get_fading_from_node")
        assert(self._method_get_fading_from_node_2002593661 != nil)
        self._method_get_travel_path_1139954409 = StringName(from: "get_travel_path")
        assert(self._method_get_travel_path_1139954409 != nil)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_travel_3683006648._native_ptr(),
                    3683006648)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_start_3683006648._native_ptr(),
                    3683006648)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_next_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_stop_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_playing_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_current_node_2002593661._native_ptr(),
                    2002593661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_current_play_position_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_current_length_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fading_from_node_2002593661._native_ptr(),
                    2002593661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_travel_path_1139954409._native_ptr(),
                    1139954409)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
}