import godot_native

fileprivate var __godot_name_RandomNumberGenerator: StringName! = nil

/// A class for generating pseudo-random numbers.
/// 
/// RandomNumberGenerator is a class for generating pseudo-random numbers. It currently uses [url=https://www.pcg-random.org/]PCG32[/url].
///  
/// [b]Note:[/b] The underlying algorithm is an implementation detail. As a result, it should not be depended upon for reproducible random streams across Godot versions.
///  
/// To generate a random float number (within a given range) based on a time-dependant seed:
///  
/// [codeblock]
///  
/// var rng = RandomNumberGenerator.new()
///  
/// func _ready():
///  
///     var my_random_number = rng.randf_range(-10.0, 10.0)
///  
/// [/codeblock]
///  
/// [b]Note:[/b] The default values of [member seed] and [member state] properties are pseudo-random, and change when calling [method randomize]. The [code]0[/code] value documented here is a placeholder, and not the actual default seed.
open class RandomNumberGenerator : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RandomNumberGenerator }

    static var _method_set_seed_1286410249: StringName! = nil
    static var _method_get_seed_2455072627: StringName! = nil
    static var _method_set_state_1286410249: StringName! = nil
    static var _method_get_state_3905245786: StringName! = nil
    static var _method_randi_2455072627: StringName! = nil
    static var _method_randf_191475506: StringName! = nil
    static var _method_randfn_2207676613: StringName! = nil
    static var _method_randf_range_4269894367: StringName! = nil
    static var _method_randi_range_50157827: StringName! = nil
    static var _method_randomize_3218959716: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_RandomNumberGenerator == nil)
        __godot_name_RandomNumberGenerator = StringName(from: "RandomNumberGenerator")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_seed_1286410249 = StringName(from: "set_seed")
        assert(self._method_set_seed_1286410249 != nil)
        self._method_get_seed_2455072627 = StringName(from: "get_seed")
        assert(self._method_get_seed_2455072627 != nil)
        self._method_set_state_1286410249 = StringName(from: "set_state")
        assert(self._method_set_state_1286410249 != nil)
        self._method_get_state_3905245786 = StringName(from: "get_state")
        assert(self._method_get_state_3905245786 != nil)
        self._method_randi_2455072627 = StringName(from: "randi")
        assert(self._method_randi_2455072627 != nil)
        self._method_randf_191475506 = StringName(from: "randf")
        assert(self._method_randf_191475506 != nil)
        self._method_randfn_2207676613 = StringName(from: "randfn")
        assert(self._method_randfn_2207676613 != nil)
        self._method_randf_range_4269894367 = StringName(from: "randf_range")
        assert(self._method_randf_range_4269894367 != nil)
        self._method_randi_range_50157827 = StringName(from: "randi_range")
        assert(self._method_randi_range_50157827 != nil)
        self._method_randomize_3218959716 = StringName(from: "randomize")
        assert(self._method_randomize_3218959716 != nil)
    }

    public func set_seed(seed: Int64)  {
        withUnsafePointer(to: seed) { seed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(seed_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_seed_1286410249._native_ptr(),
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
    public func get_seed() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_seed_2455072627._native_ptr(),
                    2455072627)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_state(state: Int64)  {
        withUnsafePointer(to: state) { state_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(state_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_state_1286410249._native_ptr(),
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
    public func get_state() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_state_3905245786._native_ptr(),
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
    public func randi() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_randi_2455072627._native_ptr(),
                    2455072627)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func randf() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_randf_191475506._native_ptr(),
                    191475506)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func randfn(mean: Float64, deviation: Float64) -> Float64 {
        withUnsafePointer(to: deviation) { deviation_native in
        withUnsafePointer(to: mean) { mean_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mean_native), .init(deviation_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_randfn_2207676613._native_ptr(),
                    2207676613)
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
    }
    public func randf_range(from: Float64, to: Float64) -> Float64 {
        withUnsafePointer(to: to) { to_native in
        withUnsafePointer(to: from) { from_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_randf_range_4269894367._native_ptr(),
                    4269894367)
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
    }
    public func randi_range(from: Int64, to: Int64) -> Int64 {
        withUnsafePointer(to: to) { to_native in
        withUnsafePointer(to: from) { from_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_randi_range_50157827._native_ptr(),
                    50157827)
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
    }
    public func randomize()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_randomize_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}