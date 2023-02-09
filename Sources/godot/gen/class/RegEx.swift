import godot_native

fileprivate var __godot_name_RegEx: StringName! = nil

/// MISSING
/// 
/// MISSING
open class RegEx : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RegEx }

    static var _method_create_from_string_2150300909: StringName! = nil
    static var _method_clear_3218959716: StringName! = nil
    static var _method_compile_166001499: StringName! = nil
    static var _method_search_4087180739: StringName! = nil
    static var _method_search_all_3354100289: StringName! = nil
    static var _method_sub_758293621: StringName! = nil
    static var _method_is_valid_36873697: StringName! = nil
    static var _method_get_pattern_201670096: StringName! = nil
    static var _method_get_group_count_3905245786: StringName! = nil
    static var _method_get_names_1139954409: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_RegEx == nil)
        __godot_name_RegEx = StringName(from: "RegEx")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_create_from_string_2150300909 = StringName(from: "create_from_string")
        assert(self._method_create_from_string_2150300909 != nil)
        self._method_clear_3218959716 = StringName(from: "clear")
        assert(self._method_clear_3218959716 != nil)
        self._method_compile_166001499 = StringName(from: "compile")
        assert(self._method_compile_166001499 != nil)
        self._method_search_4087180739 = StringName(from: "search")
        assert(self._method_search_4087180739 != nil)
        self._method_search_all_3354100289 = StringName(from: "search_all")
        assert(self._method_search_all_3354100289 != nil)
        self._method_sub_758293621 = StringName(from: "sub")
        assert(self._method_sub_758293621 != nil)
        self._method_is_valid_36873697 = StringName(from: "is_valid")
        assert(self._method_is_valid_36873697 != nil)
        self._method_get_pattern_201670096 = StringName(from: "get_pattern")
        assert(self._method_get_pattern_201670096 != nil)
        self._method_get_group_count_3905245786 = StringName(from: "get_group_count")
        assert(self._method_get_group_count_3905245786 != nil)
        self._method_get_names_1139954409 = StringName(from: "get_names")
        assert(self._method_get_names_1139954409 != nil)
    }

    public func create_from_string(pattern: godot.String) -> RegEx {
        let pattern_native = pattern._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pattern_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_from_string_2150300909._native_ptr(),
                    2150300909)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RegEx(godot: __resPtr.pointee)
    }
    public func clear()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func compile(pattern: godot.String) -> Error {
        let pattern_native = pattern._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pattern_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_compile_166001499._native_ptr(),
                    166001499)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func search(subject: godot.String, offset: Int64, end: Int64) -> RegExMatch {
        withUnsafePointer(to: end) { end_native in
        withUnsafePointer(to: offset) { offset_native in
        let subject_native = subject._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(subject_native), .init(offset_native), .init(end_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_search_4087180739._native_ptr(),
                    4087180739)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RegExMatch(godot: __resPtr.pointee)
        }
        }
    }
    public func search_all(subject: godot.String, offset: Int64, end: Int64) -> [RegExMatch] {
        withUnsafePointer(to: end) { end_native in
        withUnsafePointer(to: offset) { offset_native in
        let subject_native = subject._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(subject_native), .init(offset_native), .init(end_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_search_all_3354100289._native_ptr(),
                    3354100289)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [RegExMatch](godot: __resPtr.pointee)
        }
        }
    }
    public func sub(subject: godot.String, replacement: godot.String, all: UInt8, offset: Int64, end: Int64) -> godot.String {
        withUnsafePointer(to: end) { end_native in
        withUnsafePointer(to: offset) { offset_native in
        withUnsafePointer(to: all) { all_native in
        let replacement_native = replacement._native_ptr()
        let subject_native = subject._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(subject_native), .init(replacement_native), .init(all_native), .init(offset_native), .init(end_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_sub_758293621._native_ptr(),
                    758293621)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func is_valid() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_valid_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_pattern() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_pattern_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_group_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_group_count_3905245786._native_ptr(),
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
    public func get_names() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_names_1139954409._native_ptr(),
                    1139954409)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
}