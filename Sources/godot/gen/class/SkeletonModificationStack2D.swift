import godot_native

fileprivate var __godot_name_SkeletonModificationStack2D: StringName! = nil

/// A resource that holds a stack of [SkeletonModification2D]s.
/// 
/// This resource is used by the Skeleton and holds a stack of [SkeletonModification2D]s.
///  
/// This controls the order of the modifications and how they are applied. Modification order is especially important for full-body IK setups, as you need to execute the modifications in the correct order to get the desired results. For example, you want to execute a modification on the spine [i]before[/i] the arms on a humanoid skeleton.
///  
/// This resource also controls how strongly all of the modifications are applied to the [Skeleton2D].
open class SkeletonModificationStack2D : Resource {

    

    public override class var __godot_name: StringName { __godot_name_SkeletonModificationStack2D }

    static var _method_setup_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_execute_1005356550: GDExtensionMethodBindPtr! = nil
    static var _method_enable_all_modifications_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_modification_2570274329: GDExtensionMethodBindPtr! = nil
    static var _method_add_modification_354162120: GDExtensionMethodBindPtr! = nil
    static var _method_delete_modification_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_modification_1098262544: GDExtensionMethodBindPtr! = nil
    static var _method_set_modification_count_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_modification_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_is_setup_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_strength_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_strength_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_skeleton_1697361217: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_SkeletonModificationStack2D = StringName(from: "SkeletonModificationStack2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_setup_3218959716_name = StringName(from: "setup")
        self._method_setup_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModificationStack2D._native_ptr(), _method_setup_3218959716_name._native_ptr(), 3218959716)
        assert(SkeletonModificationStack2D._method_setup_3218959716 != nil)
        let _method_execute_1005356550_name = StringName(from: "execute")
        self._method_execute_1005356550 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModificationStack2D._native_ptr(), _method_execute_1005356550_name._native_ptr(), 1005356550)
        assert(SkeletonModificationStack2D._method_execute_1005356550 != nil)
        let _method_enable_all_modifications_2586408642_name = StringName(from: "enable_all_modifications")
        self._method_enable_all_modifications_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModificationStack2D._native_ptr(), _method_enable_all_modifications_2586408642_name._native_ptr(), 2586408642)
        assert(SkeletonModificationStack2D._method_enable_all_modifications_2586408642 != nil)
        let _method_get_modification_2570274329_name = StringName(from: "get_modification")
        self._method_get_modification_2570274329 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModificationStack2D._native_ptr(), _method_get_modification_2570274329_name._native_ptr(), 2570274329)
        assert(SkeletonModificationStack2D._method_get_modification_2570274329 != nil)
        let _method_add_modification_354162120_name = StringName(from: "add_modification")
        self._method_add_modification_354162120 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModificationStack2D._native_ptr(), _method_add_modification_354162120_name._native_ptr(), 354162120)
        assert(SkeletonModificationStack2D._method_add_modification_354162120 != nil)
        let _method_delete_modification_1286410249_name = StringName(from: "delete_modification")
        self._method_delete_modification_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModificationStack2D._native_ptr(), _method_delete_modification_1286410249_name._native_ptr(), 1286410249)
        assert(SkeletonModificationStack2D._method_delete_modification_1286410249 != nil)
        let _method_set_modification_1098262544_name = StringName(from: "set_modification")
        self._method_set_modification_1098262544 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModificationStack2D._native_ptr(), _method_set_modification_1098262544_name._native_ptr(), 1098262544)
        assert(SkeletonModificationStack2D._method_set_modification_1098262544 != nil)
        let _method_set_modification_count_1286410249_name = StringName(from: "set_modification_count")
        self._method_set_modification_count_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModificationStack2D._native_ptr(), _method_set_modification_count_1286410249_name._native_ptr(), 1286410249)
        assert(SkeletonModificationStack2D._method_set_modification_count_1286410249 != nil)
        let _method_get_modification_count_3905245786_name = StringName(from: "get_modification_count")
        self._method_get_modification_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModificationStack2D._native_ptr(), _method_get_modification_count_3905245786_name._native_ptr(), 3905245786)
        assert(SkeletonModificationStack2D._method_get_modification_count_3905245786 != nil)
        let _method_get_is_setup_36873697_name = StringName(from: "get_is_setup")
        self._method_get_is_setup_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModificationStack2D._native_ptr(), _method_get_is_setup_36873697_name._native_ptr(), 36873697)
        assert(SkeletonModificationStack2D._method_get_is_setup_36873697 != nil)
        let _method_set_enabled_2586408642_name = StringName(from: "set_enabled")
        self._method_set_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModificationStack2D._native_ptr(), _method_set_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(SkeletonModificationStack2D._method_set_enabled_2586408642 != nil)
        let _method_get_enabled_36873697_name = StringName(from: "get_enabled")
        self._method_get_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModificationStack2D._native_ptr(), _method_get_enabled_36873697_name._native_ptr(), 36873697)
        assert(SkeletonModificationStack2D._method_get_enabled_36873697 != nil)
        let _method_set_strength_373806689_name = StringName(from: "set_strength")
        self._method_set_strength_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModificationStack2D._native_ptr(), _method_set_strength_373806689_name._native_ptr(), 373806689)
        assert(SkeletonModificationStack2D._method_set_strength_373806689 != nil)
        let _method_get_strength_1740695150_name = StringName(from: "get_strength")
        self._method_get_strength_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModificationStack2D._native_ptr(), _method_get_strength_1740695150_name._native_ptr(), 1740695150)
        assert(SkeletonModificationStack2D._method_get_strength_1740695150 != nil)
        let _method_get_skeleton_1697361217_name = StringName(from: "get_skeleton")
        self._method_get_skeleton_1697361217 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModificationStack2D._native_ptr(), _method_get_skeleton_1697361217_name._native_ptr(), 1697361217)
        assert(SkeletonModificationStack2D._method_get_skeleton_1697361217 != nil)
    }

    public func setup()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_setup_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func execute(delta: Float64, execution_mode: Int64)  {
        withUnsafePointer(to: execution_mode) { execution_mode_native in
        withUnsafePointer(to: delta) { delta_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(delta_native), .init(execution_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_execute_1005356550,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func enable_all_modifications(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_enable_all_modifications_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_modification(mod_idx: Int64) -> SkeletonModification2D {
        withUnsafePointer(to: mod_idx) { mod_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mod_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_modification_2570274329,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SkeletonModification2D(godot: __resPtr.pointee)
        }
    }
    public func add_modification(modification: SkeletonModification2D)  {
        let modification_native = modification._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(modification_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_modification_354162120,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func delete_modification(mod_idx: Int64)  {
        withUnsafePointer(to: mod_idx) { mod_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mod_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_delete_modification_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_modification(mod_idx: Int64, modification: SkeletonModification2D)  {
        withUnsafePointer(to: mod_idx) { mod_idx_native in
        let modification_native = modification._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mod_idx_native), .init(modification_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_modification_1098262544,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_modification_count(count: Int64)  {
        withUnsafePointer(to: count) { count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(count_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_modification_count_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_modification_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_modification_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_is_setup() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_is_setup_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_strength(strength: Float64)  {
        withUnsafePointer(to: strength) { strength_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(strength_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_strength_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_strength() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_strength_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_skeleton() -> Skeleton2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_skeleton_1697361217,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Skeleton2D(godot: __resPtr.pointee)
    }
}