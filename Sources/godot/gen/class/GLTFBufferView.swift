import godot_native

fileprivate var __godot_name_GLTFBufferView: StringName! = nil

/// MISSING
/// 
/// MISSING
public class GLTFBufferView : Resource {

    

    public override class var __godot_name: StringName { __godot_name_GLTFBufferView }

    static var _method_get_buffer_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_set_buffer_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_byte_offset_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_set_byte_offset_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_byte_length_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_set_byte_length_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_byte_stride_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_set_byte_stride_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_indices_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_indices_2586408642: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GLTFBufferView = StringName(from: "GLTFBufferView")

        let _method_get_buffer_2455072627_name = StringName(from: "get_buffer")
        self._method_get_buffer_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_buffer_2455072627_name._native_ptr(), 2455072627)
        assert(GLTFBufferView._method_get_buffer_2455072627 != nil)
        let _method_set_buffer_1286410249_name = StringName(from: "set_buffer")
        self._method_set_buffer_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_buffer_1286410249_name._native_ptr(), 1286410249)
        assert(GLTFBufferView._method_set_buffer_1286410249 != nil)
        let _method_get_byte_offset_2455072627_name = StringName(from: "get_byte_offset")
        self._method_get_byte_offset_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_byte_offset_2455072627_name._native_ptr(), 2455072627)
        assert(GLTFBufferView._method_get_byte_offset_2455072627 != nil)
        let _method_set_byte_offset_1286410249_name = StringName(from: "set_byte_offset")
        self._method_set_byte_offset_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_byte_offset_1286410249_name._native_ptr(), 1286410249)
        assert(GLTFBufferView._method_set_byte_offset_1286410249 != nil)
        let _method_get_byte_length_2455072627_name = StringName(from: "get_byte_length")
        self._method_get_byte_length_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_byte_length_2455072627_name._native_ptr(), 2455072627)
        assert(GLTFBufferView._method_get_byte_length_2455072627 != nil)
        let _method_set_byte_length_1286410249_name = StringName(from: "set_byte_length")
        self._method_set_byte_length_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_byte_length_1286410249_name._native_ptr(), 1286410249)
        assert(GLTFBufferView._method_set_byte_length_1286410249 != nil)
        let _method_get_byte_stride_2455072627_name = StringName(from: "get_byte_stride")
        self._method_get_byte_stride_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_byte_stride_2455072627_name._native_ptr(), 2455072627)
        assert(GLTFBufferView._method_get_byte_stride_2455072627 != nil)
        let _method_set_byte_stride_1286410249_name = StringName(from: "set_byte_stride")
        self._method_set_byte_stride_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_byte_stride_1286410249_name._native_ptr(), 1286410249)
        assert(GLTFBufferView._method_set_byte_stride_1286410249 != nil)
        let _method_get_indices_2240911060_name = StringName(from: "get_indices")
        self._method_get_indices_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_indices_2240911060_name._native_ptr(), 2240911060)
        assert(GLTFBufferView._method_get_indices_2240911060 != nil)
        let _method_set_indices_2586408642_name = StringName(from: "set_indices")
        self._method_set_indices_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_indices_2586408642_name._native_ptr(), 2586408642)
        assert(GLTFBufferView._method_set_indices_2586408642 != nil)
    }

    public func get_buffer() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_buffer_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_buffer(buffer: Int64)  {
        withUnsafePointer(to: buffer) { buffer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_buffer_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_byte_offset() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_byte_offset_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_byte_offset(byte_offset: Int64)  {
        withUnsafePointer(to: byte_offset) { byte_offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(byte_offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_byte_offset_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_byte_length() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_byte_length_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_byte_length(byte_length: Int64)  {
        withUnsafePointer(to: byte_length) { byte_length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(byte_length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_byte_length_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_byte_stride() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_byte_stride_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_byte_stride(byte_stride: Int64)  {
        withUnsafePointer(to: byte_stride) { byte_stride_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(byte_stride_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_byte_stride_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_indices() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_indices_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_indices(indices: UInt8)  {
        withUnsafePointer(to: indices) { indices_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(indices_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_indices_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}