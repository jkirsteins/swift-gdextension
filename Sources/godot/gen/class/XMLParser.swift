import godot_native

fileprivate var __godot_name_XMLParser: StringName! = nil

/// Low-level class for creating parsers for [url=https://en.wikipedia.org/wiki/XML]XML[/url] files.
/// 
/// This class can serve as base to make custom XML parsers. Since XML is a very flexible standard, this interface is low-level so it can be applied to any possible schema.
open class XMLParser : RefCounted {

    public enum NodeType : Int32 {
        case NODE_NONE = 0
        case NODE_ELEMENT = 1
        case NODE_ELEMENT_END = 2
        case NODE_TEXT = 3
        case NODE_COMMENT = 4
        case NODE_CDATA = 5
        case NODE_UNKNOWN = 6
    }

    public override class var __godot_name: StringName { __godot_name_XMLParser }

    static var _method_read_166280745: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_type_2984359541: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_name_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_data_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_offset_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_attribute_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_attribute_name_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_get_attribute_value_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_has_attribute_3927539163: GDExtensionMethodBindPtr! = nil
    static var _method_get_named_attribute_value_3135753539: GDExtensionMethodBindPtr! = nil
    static var _method_get_named_attribute_value_safe_3135753539: GDExtensionMethodBindPtr! = nil
    static var _method_is_empty_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_current_line_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_skip_section_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_seek_844576869: GDExtensionMethodBindPtr! = nil
    static var _method_open_166001499: GDExtensionMethodBindPtr! = nil
    static var _method_open_buffer_680677267: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_XMLParser = StringName(from: "XMLParser")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_read_166280745_name = StringName(from: "read")
        self._method_read_166280745 = self.interface.pointee.classdb_get_method_bind(__godot_name_XMLParser._native_ptr(), _method_read_166280745_name._native_ptr(), 166280745)
        assert(XMLParser._method_read_166280745 != nil)
        let _method_get_node_type_2984359541_name = StringName(from: "get_node_type")
        self._method_get_node_type_2984359541 = self.interface.pointee.classdb_get_method_bind(__godot_name_XMLParser._native_ptr(), _method_get_node_type_2984359541_name._native_ptr(), 2984359541)
        assert(XMLParser._method_get_node_type_2984359541 != nil)
        let _method_get_node_name_201670096_name = StringName(from: "get_node_name")
        self._method_get_node_name_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_XMLParser._native_ptr(), _method_get_node_name_201670096_name._native_ptr(), 201670096)
        assert(XMLParser._method_get_node_name_201670096 != nil)
        let _method_get_node_data_201670096_name = StringName(from: "get_node_data")
        self._method_get_node_data_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_XMLParser._native_ptr(), _method_get_node_data_201670096_name._native_ptr(), 201670096)
        assert(XMLParser._method_get_node_data_201670096 != nil)
        let _method_get_node_offset_3905245786_name = StringName(from: "get_node_offset")
        self._method_get_node_offset_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_XMLParser._native_ptr(), _method_get_node_offset_3905245786_name._native_ptr(), 3905245786)
        assert(XMLParser._method_get_node_offset_3905245786 != nil)
        let _method_get_attribute_count_3905245786_name = StringName(from: "get_attribute_count")
        self._method_get_attribute_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_XMLParser._native_ptr(), _method_get_attribute_count_3905245786_name._native_ptr(), 3905245786)
        assert(XMLParser._method_get_attribute_count_3905245786 != nil)
        let _method_get_attribute_name_844755477_name = StringName(from: "get_attribute_name")
        self._method_get_attribute_name_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name_XMLParser._native_ptr(), _method_get_attribute_name_844755477_name._native_ptr(), 844755477)
        assert(XMLParser._method_get_attribute_name_844755477 != nil)
        let _method_get_attribute_value_844755477_name = StringName(from: "get_attribute_value")
        self._method_get_attribute_value_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name_XMLParser._native_ptr(), _method_get_attribute_value_844755477_name._native_ptr(), 844755477)
        assert(XMLParser._method_get_attribute_value_844755477 != nil)
        let _method_has_attribute_3927539163_name = StringName(from: "has_attribute")
        self._method_has_attribute_3927539163 = self.interface.pointee.classdb_get_method_bind(__godot_name_XMLParser._native_ptr(), _method_has_attribute_3927539163_name._native_ptr(), 3927539163)
        assert(XMLParser._method_has_attribute_3927539163 != nil)
        let _method_get_named_attribute_value_3135753539_name = StringName(from: "get_named_attribute_value")
        self._method_get_named_attribute_value_3135753539 = self.interface.pointee.classdb_get_method_bind(__godot_name_XMLParser._native_ptr(), _method_get_named_attribute_value_3135753539_name._native_ptr(), 3135753539)
        assert(XMLParser._method_get_named_attribute_value_3135753539 != nil)
        let _method_get_named_attribute_value_safe_3135753539_name = StringName(from: "get_named_attribute_value_safe")
        self._method_get_named_attribute_value_safe_3135753539 = self.interface.pointee.classdb_get_method_bind(__godot_name_XMLParser._native_ptr(), _method_get_named_attribute_value_safe_3135753539_name._native_ptr(), 3135753539)
        assert(XMLParser._method_get_named_attribute_value_safe_3135753539 != nil)
        let _method_is_empty_36873697_name = StringName(from: "is_empty")
        self._method_is_empty_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_XMLParser._native_ptr(), _method_is_empty_36873697_name._native_ptr(), 36873697)
        assert(XMLParser._method_is_empty_36873697 != nil)
        let _method_get_current_line_3905245786_name = StringName(from: "get_current_line")
        self._method_get_current_line_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_XMLParser._native_ptr(), _method_get_current_line_3905245786_name._native_ptr(), 3905245786)
        assert(XMLParser._method_get_current_line_3905245786 != nil)
        let _method_skip_section_3218959716_name = StringName(from: "skip_section")
        self._method_skip_section_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_XMLParser._native_ptr(), _method_skip_section_3218959716_name._native_ptr(), 3218959716)
        assert(XMLParser._method_skip_section_3218959716 != nil)
        let _method_seek_844576869_name = StringName(from: "seek")
        self._method_seek_844576869 = self.interface.pointee.classdb_get_method_bind(__godot_name_XMLParser._native_ptr(), _method_seek_844576869_name._native_ptr(), 844576869)
        assert(XMLParser._method_seek_844576869 != nil)
        let _method_open_166001499_name = StringName(from: "open")
        self._method_open_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name_XMLParser._native_ptr(), _method_open_166001499_name._native_ptr(), 166001499)
        assert(XMLParser._method_open_166001499 != nil)
        let _method_open_buffer_680677267_name = StringName(from: "open_buffer")
        self._method_open_buffer_680677267 = self.interface.pointee.classdb_get_method_bind(__godot_name_XMLParser._native_ptr(), _method_open_buffer_680677267_name._native_ptr(), 680677267)
        assert(XMLParser._method_open_buffer_680677267 != nil)
    }

    public func read() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_read_166280745,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func get_node_type() -> XMLParser.NodeType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_type_2984359541,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XMLParser.NodeType(godot: __resPtr.pointee)
    }
    public func get_node_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_name_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_node_data() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_data_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_node_offset() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_offset_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_attribute_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_attribute_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_attribute_name(idx: Int64) -> godot.String {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_attribute_name_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func get_attribute_value(idx: Int64) -> godot.String {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_attribute_value_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func has_attribute(name: godot.String) -> UInt8 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_attribute_3927539163,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_named_attribute_value(name: godot.String) -> godot.String {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_named_attribute_value_3135753539,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_named_attribute_value_safe(name: godot.String) -> godot.String {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_named_attribute_value_safe_3135753539,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func is_empty() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_empty_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_current_line() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_current_line_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func skip_section()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_skip_section_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func seek(position: Int64) -> Error {
        withUnsafePointer(to: position) { position_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_seek_844576869,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
    public func open(file: godot.String) -> Error {
        let file_native = file._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(file_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_open_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func open_buffer(buffer: PackedByteArray) -> Error {
        let buffer_native = buffer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_open_buffer_680677267,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
}