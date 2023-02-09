import godot_native

fileprivate var __godot_name_InputEventMIDI: StringName! = nil

/// Input event for MIDI inputs.
/// 
/// InputEventMIDI allows receiving input events from MIDI devices such as a piano. MIDI stands for Musical Instrument Digital Interface.
///  
/// MIDI signals can be sent over a 5-pin MIDI connector or over USB, if your device supports both be sure to check the settings in the device to see which output it's using.
///  
/// To receive input events from MIDI devices, you need to call [method OS.open_midi_inputs]. You can check which devices are detected using [method OS.get_connected_midi_inputs].
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// func _ready():
///  
///     OS.open_midi_inputs()
///  
///     print(OS.get_connected_midi_inputs())
///  
///  
/// func _input(input_event):
///  
///     if input_event is InputEventMIDI:
///  
///         _print_midi_info(input_event)
///  
///  
/// func _print_midi_info(midi_event: InputEventMIDI):
///  
///     print(midi_event)
///  
///     print("Channel " + str(midi_event.channel))
///  
///     print("Message " + str(midi_event.message))
///  
///     print("Pitch " + str(midi_event.pitch))
///  
///     print("Velocity " + str(midi_event.velocity))
///  
///     print("Instrument " + str(midi_event.instrument))
///  
///     print("Pressure " + str(midi_event.pressure))
///  
///     print("Controller number: " + str(midi_event.controller_number))
///  
///     print("Controller value: " + str(midi_event.controller_value))
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// public override void _Ready()
///  
/// {
///  
///     OS.OpenMidiInputs();
///  
///     GD.Print(OS.GetConnectedMidiInputs());
///  
/// }
///  
///  
/// public override void _Input(InputEvent @event)
///  
/// {
///  
///     if (@event is InputEventMIDI midiEvent)
///  
///     {
///  
///         PrintMIDIInfo(midiEvent);
///  
///     }
///  
/// }
///  
///  
/// private void PrintMIDIInfo(InputEventMIDI midiEvent)
///  
/// {
///  
///     GD.Print(midiEvent);
///  
///     GD.Print($"Channel {midiEvent.Channel}");
///  
///     GD.Print($"Message {midiEvent.Message}");
///  
///     GD.Print($"Pitch {midiEvent.Pitch}");
///  
///     GD.Print($"Velocity {midiEvent.Velocity}");
///  
///     GD.Print($"Instrument {midiEvent.Instrument}");
///  
///     GD.Print($"Pressure {midiEvent.Pressure}");
///  
///     GD.Print($"Controller number: {midiEvent.ControllerNumber}");
///  
///     GD.Print($"Controller value: {midiEvent.ControllerValue}");
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// Note that Godot does not currently support MIDI output, so there is no way to emit MIDI signals from Godot. Only MIDI input works.
open class InputEventMIDI : InputEvent {

    

    public override class var __godot_name: StringName { __godot_name_InputEventMIDI }

    static var _method_set_channel_1286410249: StringName! = nil
    static var _method_get_channel_3905245786: StringName! = nil
    static var _method_set_message_1064271510: StringName! = nil
    static var _method_get_message_1936512097: StringName! = nil
    static var _method_set_pitch_1286410249: StringName! = nil
    static var _method_get_pitch_3905245786: StringName! = nil
    static var _method_set_velocity_1286410249: StringName! = nil
    static var _method_get_velocity_3905245786: StringName! = nil
    static var _method_set_instrument_1286410249: StringName! = nil
    static var _method_get_instrument_3905245786: StringName! = nil
    static var _method_set_pressure_1286410249: StringName! = nil
    static var _method_get_pressure_3905245786: StringName! = nil
    static var _method_set_controller_number_1286410249: StringName! = nil
    static var _method_get_controller_number_3905245786: StringName! = nil
    static var _method_set_controller_value_1286410249: StringName! = nil
    static var _method_get_controller_value_3905245786: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_InputEventMIDI == nil)
        __godot_name_InputEventMIDI = StringName(from: "InputEventMIDI")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_channel_1286410249 = StringName(from: "set_channel")
        assert(self._method_set_channel_1286410249 != nil)
        self._method_get_channel_3905245786 = StringName(from: "get_channel")
        assert(self._method_get_channel_3905245786 != nil)
        self._method_set_message_1064271510 = StringName(from: "set_message")
        assert(self._method_set_message_1064271510 != nil)
        self._method_get_message_1936512097 = StringName(from: "get_message")
        assert(self._method_get_message_1936512097 != nil)
        self._method_set_pitch_1286410249 = StringName(from: "set_pitch")
        assert(self._method_set_pitch_1286410249 != nil)
        self._method_get_pitch_3905245786 = StringName(from: "get_pitch")
        assert(self._method_get_pitch_3905245786 != nil)
        self._method_set_velocity_1286410249 = StringName(from: "set_velocity")
        assert(self._method_set_velocity_1286410249 != nil)
        self._method_get_velocity_3905245786 = StringName(from: "get_velocity")
        assert(self._method_get_velocity_3905245786 != nil)
        self._method_set_instrument_1286410249 = StringName(from: "set_instrument")
        assert(self._method_set_instrument_1286410249 != nil)
        self._method_get_instrument_3905245786 = StringName(from: "get_instrument")
        assert(self._method_get_instrument_3905245786 != nil)
        self._method_set_pressure_1286410249 = StringName(from: "set_pressure")
        assert(self._method_set_pressure_1286410249 != nil)
        self._method_get_pressure_3905245786 = StringName(from: "get_pressure")
        assert(self._method_get_pressure_3905245786 != nil)
        self._method_set_controller_number_1286410249 = StringName(from: "set_controller_number")
        assert(self._method_set_controller_number_1286410249 != nil)
        self._method_get_controller_number_3905245786 = StringName(from: "get_controller_number")
        assert(self._method_get_controller_number_3905245786 != nil)
        self._method_set_controller_value_1286410249 = StringName(from: "set_controller_value")
        assert(self._method_set_controller_value_1286410249 != nil)
        self._method_get_controller_value_3905245786 = StringName(from: "get_controller_value")
        assert(self._method_get_controller_value_3905245786 != nil)
    }

    public func set_channel(channel: Int64)  {
        withUnsafePointer(to: channel) { channel_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(channel_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_channel_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_channel() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_channel_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_message(message: MIDIMessage)  {
        withUnsafePointer(to: message.rawValue) { message_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(message_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_message_1064271510._native_ptr(),
                    1064271510)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_message() -> MIDIMessage {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_message_1936512097._native_ptr(),
                    1936512097)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return MIDIMessage(godot: __resPtr.pointee)
    }
    public func set_pitch(pitch: Int64)  {
        withUnsafePointer(to: pitch) { pitch_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pitch_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_pitch_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_pitch() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_pitch_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_velocity(velocity: Int64)  {
        withUnsafePointer(to: velocity) { velocity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(velocity_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_velocity_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_velocity() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_velocity_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_instrument(instrument: Int64)  {
        withUnsafePointer(to: instrument) { instrument_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instrument_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_instrument_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_instrument() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_instrument_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_pressure(pressure: Int64)  {
        withUnsafePointer(to: pressure) { pressure_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pressure_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_pressure_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_pressure() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_pressure_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_controller_number(controller_number: Int64)  {
        withUnsafePointer(to: controller_number) { controller_number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(controller_number_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_controller_number_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_controller_number() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_controller_number_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_controller_value(controller_value: Int64)  {
        withUnsafePointer(to: controller_value) { controller_value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(controller_value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_controller_value_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_controller_value() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_controller_value_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}