import godot_native

fileprivate var __godot_name_OggPacketSequence: StringName! = nil

/// MISSING
/// 
/// MISSING
open class OggPacketSequence : Resource {

    

    public override class var __godot_name: StringName { __godot_name_OggPacketSequence }

    static var _method_set_packet_data_381264803: StringName! = nil
    static var _method_get_packet_data_3995934104: StringName! = nil
    static var _method_set_packet_granule_positions_3709968205: StringName! = nil
    static var _method_get_packet_granule_positions_235988956: StringName! = nil
    static var _method_set_sampling_rate_373806689: StringName! = nil
    static var _method_get_sampling_rate_1740695150: StringName! = nil
    static var _method_get_length_1740695150: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_OggPacketSequence == nil)
        __godot_name_OggPacketSequence = StringName(from: "OggPacketSequence")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_packet_data_381264803 = StringName(from: "set_packet_data")
        assert(self._method_set_packet_data_381264803 != nil)
        self._method_get_packet_data_3995934104 = StringName(from: "get_packet_data")
        assert(self._method_get_packet_data_3995934104 != nil)
        self._method_set_packet_granule_positions_3709968205 = StringName(from: "set_packet_granule_positions")
        assert(self._method_set_packet_granule_positions_3709968205 != nil)
        self._method_get_packet_granule_positions_235988956 = StringName(from: "get_packet_granule_positions")
        assert(self._method_get_packet_granule_positions_235988956 != nil)
        self._method_set_sampling_rate_373806689 = StringName(from: "set_sampling_rate")
        assert(self._method_set_sampling_rate_373806689 != nil)
        self._method_get_sampling_rate_1740695150 = StringName(from: "get_sampling_rate")
        assert(self._method_get_sampling_rate_1740695150 != nil)
        self._method_get_length_1740695150 = StringName(from: "get_length")
        assert(self._method_get_length_1740695150 != nil)
    }

    public func set_packet_data(packet_data: [Array])  {
        let packet_data_native = packet_data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(packet_data_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_packet_data_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_packet_data() -> [Array] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_packet_data_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Array](godot: __resPtr.pointee)
    }
    public func set_packet_granule_positions(granule_positions: PackedInt64Array)  {
        let granule_positions_native = granule_positions._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(granule_positions_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_packet_granule_positions_3709968205._native_ptr(),
                    3709968205)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_packet_granule_positions() -> PackedInt64Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_packet_granule_positions_235988956._native_ptr(),
                    235988956)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt64Array(godot: __resPtr.pointee)
    }
    public func set_sampling_rate(sampling_rate: Float64)  {
        withUnsafePointer(to: sampling_rate) { sampling_rate_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sampling_rate_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sampling_rate_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sampling_rate() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sampling_rate_1740695150._native_ptr(),
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
    public func get_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_length_1740695150._native_ptr(),
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
}