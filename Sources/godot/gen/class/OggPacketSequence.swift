import godot_native

fileprivate var __godot_name_OggPacketSequence: StringName! = nil

/// MISSING
/// 
/// MISSING
open class OggPacketSequence : Resource {

    

    public override class var __godot_name: StringName { __godot_name_OggPacketSequence }

    static var _method_set_packet_data_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_get_packet_data_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_set_packet_granule_positions_3709968205: GDExtensionMethodBindPtr! = nil
    static var _method_get_packet_granule_positions_235988956: GDExtensionMethodBindPtr! = nil
    static var _method_set_sampling_rate_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_sampling_rate_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_length_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_OggPacketSequence = StringName(from: "OggPacketSequence")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_packet_data_381264803_name = StringName(from: "set_packet_data")
        self._method_set_packet_data_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name_OggPacketSequence._native_ptr(), _method_set_packet_data_381264803_name._native_ptr(), 381264803)
        assert(OggPacketSequence._method_set_packet_data_381264803 != nil)
        let _method_get_packet_data_3995934104_name = StringName(from: "get_packet_data")
        self._method_get_packet_data_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name_OggPacketSequence._native_ptr(), _method_get_packet_data_3995934104_name._native_ptr(), 3995934104)
        assert(OggPacketSequence._method_get_packet_data_3995934104 != nil)
        let _method_set_packet_granule_positions_3709968205_name = StringName(from: "set_packet_granule_positions")
        self._method_set_packet_granule_positions_3709968205 = self.interface.pointee.classdb_get_method_bind(__godot_name_OggPacketSequence._native_ptr(), _method_set_packet_granule_positions_3709968205_name._native_ptr(), 3709968205)
        assert(OggPacketSequence._method_set_packet_granule_positions_3709968205 != nil)
        let _method_get_packet_granule_positions_235988956_name = StringName(from: "get_packet_granule_positions")
        self._method_get_packet_granule_positions_235988956 = self.interface.pointee.classdb_get_method_bind(__godot_name_OggPacketSequence._native_ptr(), _method_get_packet_granule_positions_235988956_name._native_ptr(), 235988956)
        assert(OggPacketSequence._method_get_packet_granule_positions_235988956 != nil)
        let _method_set_sampling_rate_373806689_name = StringName(from: "set_sampling_rate")
        self._method_set_sampling_rate_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_OggPacketSequence._native_ptr(), _method_set_sampling_rate_373806689_name._native_ptr(), 373806689)
        assert(OggPacketSequence._method_set_sampling_rate_373806689 != nil)
        let _method_get_sampling_rate_1740695150_name = StringName(from: "get_sampling_rate")
        self._method_get_sampling_rate_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_OggPacketSequence._native_ptr(), _method_get_sampling_rate_1740695150_name._native_ptr(), 1740695150)
        assert(OggPacketSequence._method_get_sampling_rate_1740695150 != nil)
        let _method_get_length_1740695150_name = StringName(from: "get_length")
        self._method_get_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_OggPacketSequence._native_ptr(), _method_get_length_1740695150_name._native_ptr(), 1740695150)
        assert(OggPacketSequence._method_get_length_1740695150 != nil)
    }

    public func set_packet_data(packet_data: [Array])  {
        let packet_data_native = packet_data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(packet_data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_packet_data_381264803,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_packet_data_3995934104,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_packet_granule_positions_3709968205,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_packet_granule_positions_235988956,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sampling_rate_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sampling_rate_1740695150,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_length_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
}