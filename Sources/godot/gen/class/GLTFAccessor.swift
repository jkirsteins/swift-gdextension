import godot_native

fileprivate var __godot_name_GLTFAccessor: StringName! = nil

/// MISSING
/// 
/// MISSING
open class GLTFAccessor : Resource {

    

    public override class var __godot_name: StringName { __godot_name_GLTFAccessor }

    static var _method_get_buffer_view_2455072627: StringName! = nil
    static var _method_set_buffer_view_1286410249: StringName! = nil
    static var _method_get_byte_offset_2455072627: StringName! = nil
    static var _method_set_byte_offset_1286410249: StringName! = nil
    static var _method_get_component_type_2455072627: StringName! = nil
    static var _method_set_component_type_1286410249: StringName! = nil
    static var _method_get_normalized_2240911060: StringName! = nil
    static var _method_set_normalized_2586408642: StringName! = nil
    static var _method_get_count_2455072627: StringName! = nil
    static var _method_set_count_1286410249: StringName! = nil
    static var _method_get_type_2455072627: StringName! = nil
    static var _method_set_type_1286410249: StringName! = nil
    static var _method_get_min_148677866: StringName! = nil
    static var _method_set_min_2576592201: StringName! = nil
    static var _method_get_max_148677866: StringName! = nil
    static var _method_set_max_2576592201: StringName! = nil
    static var _method_get_sparse_count_2455072627: StringName! = nil
    static var _method_set_sparse_count_1286410249: StringName! = nil
    static var _method_get_sparse_indices_buffer_view_2455072627: StringName! = nil
    static var _method_set_sparse_indices_buffer_view_1286410249: StringName! = nil
    static var _method_get_sparse_indices_byte_offset_2455072627: StringName! = nil
    static var _method_set_sparse_indices_byte_offset_1286410249: StringName! = nil
    static var _method_get_sparse_indices_component_type_2455072627: StringName! = nil
    static var _method_set_sparse_indices_component_type_1286410249: StringName! = nil
    static var _method_get_sparse_values_buffer_view_2455072627: StringName! = nil
    static var _method_set_sparse_values_buffer_view_1286410249: StringName! = nil
    static var _method_get_sparse_values_byte_offset_2455072627: StringName! = nil
    static var _method_set_sparse_values_byte_offset_1286410249: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_GLTFAccessor == nil)
        __godot_name_GLTFAccessor = StringName(from: "GLTFAccessor")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_buffer_view_2455072627 = StringName(from: "get_buffer_view")
        assert(self._method_get_buffer_view_2455072627 != nil)
        self._method_set_buffer_view_1286410249 = StringName(from: "set_buffer_view")
        assert(self._method_set_buffer_view_1286410249 != nil)
        self._method_get_byte_offset_2455072627 = StringName(from: "get_byte_offset")
        assert(self._method_get_byte_offset_2455072627 != nil)
        self._method_set_byte_offset_1286410249 = StringName(from: "set_byte_offset")
        assert(self._method_set_byte_offset_1286410249 != nil)
        self._method_get_component_type_2455072627 = StringName(from: "get_component_type")
        assert(self._method_get_component_type_2455072627 != nil)
        self._method_set_component_type_1286410249 = StringName(from: "set_component_type")
        assert(self._method_set_component_type_1286410249 != nil)
        self._method_get_normalized_2240911060 = StringName(from: "get_normalized")
        assert(self._method_get_normalized_2240911060 != nil)
        self._method_set_normalized_2586408642 = StringName(from: "set_normalized")
        assert(self._method_set_normalized_2586408642 != nil)
        self._method_get_count_2455072627 = StringName(from: "get_count")
        assert(self._method_get_count_2455072627 != nil)
        self._method_set_count_1286410249 = StringName(from: "set_count")
        assert(self._method_set_count_1286410249 != nil)
        self._method_get_type_2455072627 = StringName(from: "get_type")
        assert(self._method_get_type_2455072627 != nil)
        self._method_set_type_1286410249 = StringName(from: "set_type")
        assert(self._method_set_type_1286410249 != nil)
        self._method_get_min_148677866 = StringName(from: "get_min")
        assert(self._method_get_min_148677866 != nil)
        self._method_set_min_2576592201 = StringName(from: "set_min")
        assert(self._method_set_min_2576592201 != nil)
        self._method_get_max_148677866 = StringName(from: "get_max")
        assert(self._method_get_max_148677866 != nil)
        self._method_set_max_2576592201 = StringName(from: "set_max")
        assert(self._method_set_max_2576592201 != nil)
        self._method_get_sparse_count_2455072627 = StringName(from: "get_sparse_count")
        assert(self._method_get_sparse_count_2455072627 != nil)
        self._method_set_sparse_count_1286410249 = StringName(from: "set_sparse_count")
        assert(self._method_set_sparse_count_1286410249 != nil)
        self._method_get_sparse_indices_buffer_view_2455072627 = StringName(from: "get_sparse_indices_buffer_view")
        assert(self._method_get_sparse_indices_buffer_view_2455072627 != nil)
        self._method_set_sparse_indices_buffer_view_1286410249 = StringName(from: "set_sparse_indices_buffer_view")
        assert(self._method_set_sparse_indices_buffer_view_1286410249 != nil)
        self._method_get_sparse_indices_byte_offset_2455072627 = StringName(from: "get_sparse_indices_byte_offset")
        assert(self._method_get_sparse_indices_byte_offset_2455072627 != nil)
        self._method_set_sparse_indices_byte_offset_1286410249 = StringName(from: "set_sparse_indices_byte_offset")
        assert(self._method_set_sparse_indices_byte_offset_1286410249 != nil)
        self._method_get_sparse_indices_component_type_2455072627 = StringName(from: "get_sparse_indices_component_type")
        assert(self._method_get_sparse_indices_component_type_2455072627 != nil)
        self._method_set_sparse_indices_component_type_1286410249 = StringName(from: "set_sparse_indices_component_type")
        assert(self._method_set_sparse_indices_component_type_1286410249 != nil)
        self._method_get_sparse_values_buffer_view_2455072627 = StringName(from: "get_sparse_values_buffer_view")
        assert(self._method_get_sparse_values_buffer_view_2455072627 != nil)
        self._method_set_sparse_values_buffer_view_1286410249 = StringName(from: "set_sparse_values_buffer_view")
        assert(self._method_set_sparse_values_buffer_view_1286410249 != nil)
        self._method_get_sparse_values_byte_offset_2455072627 = StringName(from: "get_sparse_values_byte_offset")
        assert(self._method_get_sparse_values_byte_offset_2455072627 != nil)
        self._method_set_sparse_values_byte_offset_1286410249 = StringName(from: "set_sparse_values_byte_offset")
        assert(self._method_set_sparse_values_byte_offset_1286410249 != nil)
    }

    public func get_buffer_view() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_buffer_view_2455072627._native_ptr(),
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
    public func set_buffer_view(buffer_view: Int64)  {
        withUnsafePointer(to: buffer_view) { buffer_view_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_view_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_buffer_view_1286410249._native_ptr(),
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
    public func get_byte_offset() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_byte_offset_2455072627._native_ptr(),
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
    public func set_byte_offset(byte_offset: Int64)  {
        withUnsafePointer(to: byte_offset) { byte_offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(byte_offset_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_byte_offset_1286410249._native_ptr(),
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
    public func get_component_type() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_component_type_2455072627._native_ptr(),
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
    public func set_component_type(component_type: Int64)  {
        withUnsafePointer(to: component_type) { component_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(component_type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_component_type_1286410249._native_ptr(),
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
    public func get_normalized() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_normalized_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_normalized(normalized: UInt8)  {
        withUnsafePointer(to: normalized) { normalized_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(normalized_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_normalized_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_count_2455072627._native_ptr(),
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
    public func set_count(count: Int64)  {
        withUnsafePointer(to: count) { count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(count_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_count_1286410249._native_ptr(),
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
    public func get_type() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_type_2455072627._native_ptr(),
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
    public func set_type(`type`: Int64)  {
        withUnsafePointer(to: `type`) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_type_1286410249._native_ptr(),
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
    public func get_min() -> PackedFloat64Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_min_148677866._native_ptr(),
                    148677866)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedFloat64Array(godot: __resPtr.pointee)
    }
    public func set_min(min: PackedFloat64Array)  {
        let min_native = min._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(min_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_min_2576592201._native_ptr(),
                    2576592201)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_max() -> PackedFloat64Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_max_148677866._native_ptr(),
                    148677866)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedFloat64Array(godot: __resPtr.pointee)
    }
    public func set_max(max: PackedFloat64Array)  {
        let max_native = max._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_max_2576592201._native_ptr(),
                    2576592201)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_sparse_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sparse_count_2455072627._native_ptr(),
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
    public func set_sparse_count(sparse_count: Int64)  {
        withUnsafePointer(to: sparse_count) { sparse_count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sparse_count_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sparse_count_1286410249._native_ptr(),
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
    public func get_sparse_indices_buffer_view() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sparse_indices_buffer_view_2455072627._native_ptr(),
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
    public func set_sparse_indices_buffer_view(sparse_indices_buffer_view: Int64)  {
        withUnsafePointer(to: sparse_indices_buffer_view) { sparse_indices_buffer_view_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sparse_indices_buffer_view_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sparse_indices_buffer_view_1286410249._native_ptr(),
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
    public func get_sparse_indices_byte_offset() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sparse_indices_byte_offset_2455072627._native_ptr(),
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
    public func set_sparse_indices_byte_offset(sparse_indices_byte_offset: Int64)  {
        withUnsafePointer(to: sparse_indices_byte_offset) { sparse_indices_byte_offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sparse_indices_byte_offset_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sparse_indices_byte_offset_1286410249._native_ptr(),
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
    public func get_sparse_indices_component_type() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sparse_indices_component_type_2455072627._native_ptr(),
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
    public func set_sparse_indices_component_type(sparse_indices_component_type: Int64)  {
        withUnsafePointer(to: sparse_indices_component_type) { sparse_indices_component_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sparse_indices_component_type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sparse_indices_component_type_1286410249._native_ptr(),
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
    public func get_sparse_values_buffer_view() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sparse_values_buffer_view_2455072627._native_ptr(),
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
    public func set_sparse_values_buffer_view(sparse_values_buffer_view: Int64)  {
        withUnsafePointer(to: sparse_values_buffer_view) { sparse_values_buffer_view_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sparse_values_buffer_view_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sparse_values_buffer_view_1286410249._native_ptr(),
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
    public func get_sparse_values_byte_offset() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sparse_values_byte_offset_2455072627._native_ptr(),
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
    public func set_sparse_values_byte_offset(sparse_values_byte_offset: Int64)  {
        withUnsafePointer(to: sparse_values_byte_offset) { sparse_values_byte_offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sparse_values_byte_offset_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sparse_values_byte_offset_1286410249._native_ptr(),
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
}