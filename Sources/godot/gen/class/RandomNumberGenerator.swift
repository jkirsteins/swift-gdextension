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
public class RandomNumberGenerator : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RandomNumberGenerator }

    static var _method_set_seed_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_seed_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_set_state_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_state_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_randi_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_randf_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_randfn_2207676613: GDExtensionMethodBindPtr! = nil
    static var _method_randf_range_4269894367: GDExtensionMethodBindPtr! = nil
    static var _method_randi_range_50157827: GDExtensionMethodBindPtr! = nil
    static var _method_randomize_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_RandomNumberGenerator = StringName(from: "RandomNumberGenerator")

        let _method_set_seed_1286410249_name = StringName(from: "set_seed")
        self._method_set_seed_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_seed_1286410249_name._native_ptr(), 1286410249)
        assert(RandomNumberGenerator._method_set_seed_1286410249 != nil)
        let _method_get_seed_2455072627_name = StringName(from: "get_seed")
        self._method_get_seed_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_seed_2455072627_name._native_ptr(), 2455072627)
        assert(RandomNumberGenerator._method_get_seed_2455072627 != nil)
        let _method_set_state_1286410249_name = StringName(from: "set_state")
        self._method_set_state_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_state_1286410249_name._native_ptr(), 1286410249)
        assert(RandomNumberGenerator._method_set_state_1286410249 != nil)
        let _method_get_state_3905245786_name = StringName(from: "get_state")
        self._method_get_state_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_state_3905245786_name._native_ptr(), 3905245786)
        assert(RandomNumberGenerator._method_get_state_3905245786 != nil)
        let _method_randi_2455072627_name = StringName(from: "randi")
        self._method_randi_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_randi_2455072627_name._native_ptr(), 2455072627)
        assert(RandomNumberGenerator._method_randi_2455072627 != nil)
        let _method_randf_191475506_name = StringName(from: "randf")
        self._method_randf_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_randf_191475506_name._native_ptr(), 191475506)
        assert(RandomNumberGenerator._method_randf_191475506 != nil)
        let _method_randfn_2207676613_name = StringName(from: "randfn")
        self._method_randfn_2207676613 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_randfn_2207676613_name._native_ptr(), 2207676613)
        assert(RandomNumberGenerator._method_randfn_2207676613 != nil)
        let _method_randf_range_4269894367_name = StringName(from: "randf_range")
        self._method_randf_range_4269894367 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_randf_range_4269894367_name._native_ptr(), 4269894367)
        assert(RandomNumberGenerator._method_randf_range_4269894367 != nil)
        let _method_randi_range_50157827_name = StringName(from: "randi_range")
        self._method_randi_range_50157827 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_randi_range_50157827_name._native_ptr(), 50157827)
        assert(RandomNumberGenerator._method_randi_range_50157827 != nil)
        let _method_randomize_3218959716_name = StringName(from: "randomize")
        self._method_randomize_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_randomize_3218959716_name._native_ptr(), 3218959716)
        assert(RandomNumberGenerator._method_randomize_3218959716 != nil)
    }

    public func set_seed(seed: Int64)  {
        withUnsafePointer(to: seed) { seed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(seed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_seed_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_seed_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_state(state: Int64)  {
        withUnsafePointer(to: state) { state_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(state_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_state_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_state_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func randi() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_randi_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func randf() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_randf_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_randfn_2207676613,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_randf_range_4269894367,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_randi_range_50157827,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
    }
    public func randomize()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_randomize_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}