import godot_native

fileprivate var __godot_name_RegEx: StringName! = nil

/// MISSING
/// 
/// MISSING
open class RegEx : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RegEx }

    static var _method_create_from_string_2150300909: GDExtensionMethodBindPtr! = nil
    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_compile_166001499: GDExtensionMethodBindPtr! = nil
    static var _method_search_4087180739: GDExtensionMethodBindPtr! = nil
    static var _method_search_all_3354100289: GDExtensionMethodBindPtr! = nil
    static var _method_sub_758293621: GDExtensionMethodBindPtr! = nil
    static var _method_is_valid_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_pattern_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_group_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_names_1139954409: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_RegEx = StringName(from: "RegEx")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_create_from_string_2150300909_name = StringName(from: "create_from_string")
        self._method_create_from_string_2150300909 = self.interface.pointee.classdb_get_method_bind(__godot_name_RegEx._native_ptr(), _method_create_from_string_2150300909_name._native_ptr(), 2150300909)
        assert(RegEx._method_create_from_string_2150300909 != nil)
        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_RegEx._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(RegEx._method_clear_3218959716 != nil)
        let _method_compile_166001499_name = StringName(from: "compile")
        self._method_compile_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name_RegEx._native_ptr(), _method_compile_166001499_name._native_ptr(), 166001499)
        assert(RegEx._method_compile_166001499 != nil)
        let _method_search_4087180739_name = StringName(from: "search")
        self._method_search_4087180739 = self.interface.pointee.classdb_get_method_bind(__godot_name_RegEx._native_ptr(), _method_search_4087180739_name._native_ptr(), 4087180739)
        assert(RegEx._method_search_4087180739 != nil)
        let _method_search_all_3354100289_name = StringName(from: "search_all")
        self._method_search_all_3354100289 = self.interface.pointee.classdb_get_method_bind(__godot_name_RegEx._native_ptr(), _method_search_all_3354100289_name._native_ptr(), 3354100289)
        assert(RegEx._method_search_all_3354100289 != nil)
        let _method_sub_758293621_name = StringName(from: "sub")
        self._method_sub_758293621 = self.interface.pointee.classdb_get_method_bind(__godot_name_RegEx._native_ptr(), _method_sub_758293621_name._native_ptr(), 758293621)
        assert(RegEx._method_sub_758293621 != nil)
        let _method_is_valid_36873697_name = StringName(from: "is_valid")
        self._method_is_valid_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_RegEx._native_ptr(), _method_is_valid_36873697_name._native_ptr(), 36873697)
        assert(RegEx._method_is_valid_36873697 != nil)
        let _method_get_pattern_201670096_name = StringName(from: "get_pattern")
        self._method_get_pattern_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_RegEx._native_ptr(), _method_get_pattern_201670096_name._native_ptr(), 201670096)
        assert(RegEx._method_get_pattern_201670096 != nil)
        let _method_get_group_count_3905245786_name = StringName(from: "get_group_count")
        self._method_get_group_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_RegEx._native_ptr(), _method_get_group_count_3905245786_name._native_ptr(), 3905245786)
        assert(RegEx._method_get_group_count_3905245786 != nil)
        let _method_get_names_1139954409_name = StringName(from: "get_names")
        self._method_get_names_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name_RegEx._native_ptr(), _method_get_names_1139954409_name._native_ptr(), 1139954409)
        assert(RegEx._method_get_names_1139954409 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_from_string_2150300909,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_compile_166001499,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_search_4087180739,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_search_all_3354100289,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_sub_758293621,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_valid_36873697,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pattern_201670096,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_group_count_3905245786,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_names_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
}