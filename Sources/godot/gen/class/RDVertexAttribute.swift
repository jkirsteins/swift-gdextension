import godot_native

fileprivate var __godot_name_RDVertexAttribute: StringName! = nil

/// 
/// 
/// 
open class RDVertexAttribute : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RDVertexAttribute }

    static var _method_set_location_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_location_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_offset_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_offset_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_format_565531219: GDExtensionMethodBindPtr! = nil
    static var _method_get_format_2235804183: GDExtensionMethodBindPtr! = nil
    static var _method_set_stride_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_stride_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_frequency_522141836: GDExtensionMethodBindPtr! = nil
    static var _method_get_frequency_4154106413: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_RDVertexAttribute = StringName(from: "RDVertexAttribute")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_location_1286410249_name = StringName(from: "set_location")
        self._method_set_location_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDVertexAttribute._native_ptr(), _method_set_location_1286410249_name._native_ptr(), 1286410249)
        assert(RDVertexAttribute._method_set_location_1286410249 != nil)
        let _method_get_location_3905245786_name = StringName(from: "get_location")
        self._method_get_location_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDVertexAttribute._native_ptr(), _method_get_location_3905245786_name._native_ptr(), 3905245786)
        assert(RDVertexAttribute._method_get_location_3905245786 != nil)
        let _method_set_offset_1286410249_name = StringName(from: "set_offset")
        self._method_set_offset_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDVertexAttribute._native_ptr(), _method_set_offset_1286410249_name._native_ptr(), 1286410249)
        assert(RDVertexAttribute._method_set_offset_1286410249 != nil)
        let _method_get_offset_3905245786_name = StringName(from: "get_offset")
        self._method_get_offset_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDVertexAttribute._native_ptr(), _method_get_offset_3905245786_name._native_ptr(), 3905245786)
        assert(RDVertexAttribute._method_get_offset_3905245786 != nil)
        let _method_set_format_565531219_name = StringName(from: "set_format")
        self._method_set_format_565531219 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDVertexAttribute._native_ptr(), _method_set_format_565531219_name._native_ptr(), 565531219)
        assert(RDVertexAttribute._method_set_format_565531219 != nil)
        let _method_get_format_2235804183_name = StringName(from: "get_format")
        self._method_get_format_2235804183 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDVertexAttribute._native_ptr(), _method_get_format_2235804183_name._native_ptr(), 2235804183)
        assert(RDVertexAttribute._method_get_format_2235804183 != nil)
        let _method_set_stride_1286410249_name = StringName(from: "set_stride")
        self._method_set_stride_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDVertexAttribute._native_ptr(), _method_set_stride_1286410249_name._native_ptr(), 1286410249)
        assert(RDVertexAttribute._method_set_stride_1286410249 != nil)
        let _method_get_stride_3905245786_name = StringName(from: "get_stride")
        self._method_get_stride_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDVertexAttribute._native_ptr(), _method_get_stride_3905245786_name._native_ptr(), 3905245786)
        assert(RDVertexAttribute._method_get_stride_3905245786 != nil)
        let _method_set_frequency_522141836_name = StringName(from: "set_frequency")
        self._method_set_frequency_522141836 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDVertexAttribute._native_ptr(), _method_set_frequency_522141836_name._native_ptr(), 522141836)
        assert(RDVertexAttribute._method_set_frequency_522141836 != nil)
        let _method_get_frequency_4154106413_name = StringName(from: "get_frequency")
        self._method_get_frequency_4154106413 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDVertexAttribute._native_ptr(), _method_get_frequency_4154106413_name._native_ptr(), 4154106413)
        assert(RDVertexAttribute._method_get_frequency_4154106413 != nil)
    }

    public func set_location(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_location_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_location() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_location_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_offset(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_offset_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_offset() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_offset_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_format(p_member: RenderingDevice.DataFormat)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_format_565531219,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_format() -> RenderingDevice.DataFormat {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_format_2235804183,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.DataFormat(godot: __resPtr.pointee)
    }
    public func set_stride(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stride_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_stride() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stride_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_frequency(p_member: RenderingDevice.VertexFrequency)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_frequency_522141836,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_frequency() -> RenderingDevice.VertexFrequency {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_frequency_4154106413,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.VertexFrequency(godot: __resPtr.pointee)
    }
}