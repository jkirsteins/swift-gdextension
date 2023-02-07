import godot_native

fileprivate var __godot_name_RegExMatch: StringName! = nil

/// MISSING
/// 
/// MISSING
public class RegExMatch : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RegExMatch }

    static var _method_get_subject_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_group_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_names_3102165223: GDExtensionMethodBindPtr! = nil
    static var _method_get_strings_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_get_string_687115856: GDExtensionMethodBindPtr! = nil
    static var _method_get_start_490464691: GDExtensionMethodBindPtr! = nil
    static var _method_get_end_490464691: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_RegExMatch = StringName(from: "RegExMatch")

        let _method_get_subject_201670096_name = StringName(from: "get_subject")
        self._method_get_subject_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_subject_201670096_name._native_ptr(), 201670096)
        assert(RegExMatch._method_get_subject_201670096 != nil)
        let _method_get_group_count_3905245786_name = StringName(from: "get_group_count")
        self._method_get_group_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_group_count_3905245786_name._native_ptr(), 3905245786)
        assert(RegExMatch._method_get_group_count_3905245786 != nil)
        let _method_get_names_3102165223_name = StringName(from: "get_names")
        self._method_get_names_3102165223 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_names_3102165223_name._native_ptr(), 3102165223)
        assert(RegExMatch._method_get_names_3102165223 != nil)
        let _method_get_strings_1139954409_name = StringName(from: "get_strings")
        self._method_get_strings_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_strings_1139954409_name._native_ptr(), 1139954409)
        assert(RegExMatch._method_get_strings_1139954409 != nil)
        let _method_get_string_687115856_name = StringName(from: "get_string")
        self._method_get_string_687115856 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_string_687115856_name._native_ptr(), 687115856)
        assert(RegExMatch._method_get_string_687115856 != nil)
        let _method_get_start_490464691_name = StringName(from: "get_start")
        self._method_get_start_490464691 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_start_490464691_name._native_ptr(), 490464691)
        assert(RegExMatch._method_get_start_490464691 != nil)
        let _method_get_end_490464691_name = StringName(from: "get_end")
        self._method_get_end_490464691 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_end_490464691_name._native_ptr(), 490464691)
        assert(RegExMatch._method_get_end_490464691 != nil)
    }

    public func get_subject() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_subject_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
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
            return Int64(from: __resPtr.pointee)
    }
    public func get_names() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_names_3102165223,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
    }
    public func get_strings() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_strings_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func get_string(name: Variant) -> String {
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
                    Self._method_get_string_687115856,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func get_start(name: Variant) -> Int64 {
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
                    Self._method_get_start_490464691,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_end(name: Variant) -> Int64 {
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
                    Self._method_get_end_490464691,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
}