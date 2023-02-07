import godot_native

fileprivate var __godot_name_RDPipelineMultisampleState: StringName! = nil

/// 
/// 
/// 
public class RDPipelineMultisampleState : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RDPipelineMultisampleState }

    static var _method_set_sample_count_3774171498: GDExtensionMethodBindPtr! = nil
    static var _method_get_sample_count_407791724: GDExtensionMethodBindPtr! = nil
    static var _method_set_enable_sample_shading_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_enable_sample_shading_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_min_sample_shading_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_min_sample_shading_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_enable_alpha_to_coverage_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_enable_alpha_to_coverage_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_enable_alpha_to_one_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_enable_alpha_to_one_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_sample_masks_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_get_sample_masks_3995934104: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_RDPipelineMultisampleState = StringName(from: "RDPipelineMultisampleState")

        let _method_set_sample_count_3774171498_name = StringName(from: "set_sample_count")
        self._method_set_sample_count_3774171498 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sample_count_3774171498_name._native_ptr(), 3774171498)
        assert(RDPipelineMultisampleState._method_set_sample_count_3774171498 != nil)
        let _method_get_sample_count_407791724_name = StringName(from: "get_sample_count")
        self._method_get_sample_count_407791724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sample_count_407791724_name._native_ptr(), 407791724)
        assert(RDPipelineMultisampleState._method_get_sample_count_407791724 != nil)
        let _method_set_enable_sample_shading_2586408642_name = StringName(from: "set_enable_sample_shading")
        self._method_set_enable_sample_shading_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_enable_sample_shading_2586408642_name._native_ptr(), 2586408642)
        assert(RDPipelineMultisampleState._method_set_enable_sample_shading_2586408642 != nil)
        let _method_get_enable_sample_shading_36873697_name = StringName(from: "get_enable_sample_shading")
        self._method_get_enable_sample_shading_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_enable_sample_shading_36873697_name._native_ptr(), 36873697)
        assert(RDPipelineMultisampleState._method_get_enable_sample_shading_36873697 != nil)
        let _method_set_min_sample_shading_373806689_name = StringName(from: "set_min_sample_shading")
        self._method_set_min_sample_shading_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_min_sample_shading_373806689_name._native_ptr(), 373806689)
        assert(RDPipelineMultisampleState._method_set_min_sample_shading_373806689 != nil)
        let _method_get_min_sample_shading_1740695150_name = StringName(from: "get_min_sample_shading")
        self._method_get_min_sample_shading_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_min_sample_shading_1740695150_name._native_ptr(), 1740695150)
        assert(RDPipelineMultisampleState._method_get_min_sample_shading_1740695150 != nil)
        let _method_set_enable_alpha_to_coverage_2586408642_name = StringName(from: "set_enable_alpha_to_coverage")
        self._method_set_enable_alpha_to_coverage_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_enable_alpha_to_coverage_2586408642_name._native_ptr(), 2586408642)
        assert(RDPipelineMultisampleState._method_set_enable_alpha_to_coverage_2586408642 != nil)
        let _method_get_enable_alpha_to_coverage_36873697_name = StringName(from: "get_enable_alpha_to_coverage")
        self._method_get_enable_alpha_to_coverage_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_enable_alpha_to_coverage_36873697_name._native_ptr(), 36873697)
        assert(RDPipelineMultisampleState._method_get_enable_alpha_to_coverage_36873697 != nil)
        let _method_set_enable_alpha_to_one_2586408642_name = StringName(from: "set_enable_alpha_to_one")
        self._method_set_enable_alpha_to_one_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_enable_alpha_to_one_2586408642_name._native_ptr(), 2586408642)
        assert(RDPipelineMultisampleState._method_set_enable_alpha_to_one_2586408642 != nil)
        let _method_get_enable_alpha_to_one_36873697_name = StringName(from: "get_enable_alpha_to_one")
        self._method_get_enable_alpha_to_one_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_enable_alpha_to_one_36873697_name._native_ptr(), 36873697)
        assert(RDPipelineMultisampleState._method_get_enable_alpha_to_one_36873697 != nil)
        let _method_set_sample_masks_381264803_name = StringName(from: "set_sample_masks")
        self._method_set_sample_masks_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sample_masks_381264803_name._native_ptr(), 381264803)
        assert(RDPipelineMultisampleState._method_set_sample_masks_381264803 != nil)
        let _method_get_sample_masks_3995934104_name = StringName(from: "get_sample_masks")
        self._method_get_sample_masks_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sample_masks_3995934104_name._native_ptr(), 3995934104)
        assert(RDPipelineMultisampleState._method_get_sample_masks_3995934104 != nil)
    }

    public func set_sample_count(p_member: RenderingDevice.TextureSamples)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sample_count_3774171498,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sample_count() -> RenderingDevice.TextureSamples {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sample_count_407791724,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.TextureSamples(from: __resPtr.pointee)
    }
    public func set_enable_sample_shading(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enable_sample_shading_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_enable_sample_shading() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_enable_sample_shading_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_min_sample_shading(p_member: Float64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_min_sample_shading_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_min_sample_shading() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_min_sample_shading_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_enable_alpha_to_coverage(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enable_alpha_to_coverage_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_enable_alpha_to_coverage() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_enable_alpha_to_coverage_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_enable_alpha_to_one(p_member: UInt8)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enable_alpha_to_one_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_enable_alpha_to_one() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_enable_alpha_to_one_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_sample_masks(masks: [Int64])  {
        let masks_native = masks._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(masks_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sample_masks_381264803,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_sample_masks() -> [Int64] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sample_masks_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Int64](from: __resPtr.pointee)
    }
}