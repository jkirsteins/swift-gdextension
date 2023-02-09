import godot_native

fileprivate var __godot_name_ClassDB: StringName! = nil

/// Class information repository.
/// 
/// Provides access to metadata stored for every available class.
open class ClassDB : Object {

    

    public override class var __godot_name: StringName { __godot_name_ClassDB }

    static var _method_get_class_list_1139954409: StringName! = nil
    static var _method_get_inheriters_from_class_1761182771: StringName! = nil
    static var _method_get_parent_class_1965194235: StringName! = nil
    static var _method_class_exists_2619796661: StringName! = nil
    static var _method_is_parent_class_471820014: StringName! = nil
    static var _method_can_instantiate_2619796661: StringName! = nil
    static var _method_instantiate_2760726917: StringName! = nil
    static var _method_class_has_signal_471820014: StringName! = nil
    static var _method_class_get_signal_3061114238: StringName! = nil
    static var _method_class_get_signal_list_3504980660: StringName! = nil
    static var _method_class_get_property_list_3504980660: StringName! = nil
    static var _method_class_get_property_2498641674: StringName! = nil
    static var _method_class_set_property_1690314931: StringName! = nil
    static var _method_class_has_method_3860701026: StringName! = nil
    static var _method_class_get_method_list_3504980660: StringName! = nil
    static var _method_class_get_integer_constant_list_3031669221: StringName! = nil
    static var _method_class_has_integer_constant_471820014: StringName! = nil
    static var _method_class_get_integer_constant_2419549490: StringName! = nil
    static var _method_class_has_enum_3860701026: StringName! = nil
    static var _method_class_get_enum_list_3031669221: StringName! = nil
    static var _method_class_get_enum_constants_661528303: StringName! = nil
    static var _method_class_get_integer_constant_enum_2457504236: StringName! = nil
    static var _method_is_class_enabled_2619796661: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ClassDB == nil)
        __godot_name_ClassDB = StringName(from: "ClassDB")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_class_list_1139954409 = StringName(from: "get_class_list")
        assert(self._method_get_class_list_1139954409 != nil)
        self._method_get_inheriters_from_class_1761182771 = StringName(from: "get_inheriters_from_class")
        assert(self._method_get_inheriters_from_class_1761182771 != nil)
        self._method_get_parent_class_1965194235 = StringName(from: "get_parent_class")
        assert(self._method_get_parent_class_1965194235 != nil)
        self._method_class_exists_2619796661 = StringName(from: "class_exists")
        assert(self._method_class_exists_2619796661 != nil)
        self._method_is_parent_class_471820014 = StringName(from: "is_parent_class")
        assert(self._method_is_parent_class_471820014 != nil)
        self._method_can_instantiate_2619796661 = StringName(from: "can_instantiate")
        assert(self._method_can_instantiate_2619796661 != nil)
        self._method_instantiate_2760726917 = StringName(from: "instantiate")
        assert(self._method_instantiate_2760726917 != nil)
        self._method_class_has_signal_471820014 = StringName(from: "class_has_signal")
        assert(self._method_class_has_signal_471820014 != nil)
        self._method_class_get_signal_3061114238 = StringName(from: "class_get_signal")
        assert(self._method_class_get_signal_3061114238 != nil)
        self._method_class_get_signal_list_3504980660 = StringName(from: "class_get_signal_list")
        assert(self._method_class_get_signal_list_3504980660 != nil)
        self._method_class_get_property_list_3504980660 = StringName(from: "class_get_property_list")
        assert(self._method_class_get_property_list_3504980660 != nil)
        self._method_class_get_property_2498641674 = StringName(from: "class_get_property")
        assert(self._method_class_get_property_2498641674 != nil)
        self._method_class_set_property_1690314931 = StringName(from: "class_set_property")
        assert(self._method_class_set_property_1690314931 != nil)
        self._method_class_has_method_3860701026 = StringName(from: "class_has_method")
        assert(self._method_class_has_method_3860701026 != nil)
        self._method_class_get_method_list_3504980660 = StringName(from: "class_get_method_list")
        assert(self._method_class_get_method_list_3504980660 != nil)
        self._method_class_get_integer_constant_list_3031669221 = StringName(from: "class_get_integer_constant_list")
        assert(self._method_class_get_integer_constant_list_3031669221 != nil)
        self._method_class_has_integer_constant_471820014 = StringName(from: "class_has_integer_constant")
        assert(self._method_class_has_integer_constant_471820014 != nil)
        self._method_class_get_integer_constant_2419549490 = StringName(from: "class_get_integer_constant")
        assert(self._method_class_get_integer_constant_2419549490 != nil)
        self._method_class_has_enum_3860701026 = StringName(from: "class_has_enum")
        assert(self._method_class_has_enum_3860701026 != nil)
        self._method_class_get_enum_list_3031669221 = StringName(from: "class_get_enum_list")
        assert(self._method_class_get_enum_list_3031669221 != nil)
        self._method_class_get_enum_constants_661528303 = StringName(from: "class_get_enum_constants")
        assert(self._method_class_get_enum_constants_661528303 != nil)
        self._method_class_get_integer_constant_enum_2457504236 = StringName(from: "class_get_integer_constant_enum")
        assert(self._method_class_get_integer_constant_enum_2457504236 != nil)
        self._method_is_class_enabled_2619796661 = StringName(from: "is_class_enabled")
        assert(self._method_is_class_enabled_2619796661 != nil)
    }

    public func get_class_list() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_class_list_1139954409._native_ptr(),
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
    public func get_inheriters_from_class(`class`: StringName) -> PackedStringArray {
        let class_native = `class`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_inheriters_from_class_1761182771._native_ptr(),
                    1761182771)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func get_parent_class(`class`: StringName) -> StringName {
        let class_native = `class`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_parent_class_1965194235._native_ptr(),
                    1965194235)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
    public func class_exists(`class`: StringName) -> UInt8 {
        let class_native = `class`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_class_exists_2619796661._native_ptr(),
                    2619796661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func is_parent_class(`class`: StringName, inherits: StringName) -> UInt8 {
        let inherits_native = inherits._native_ptr()
        let class_native = `class`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_native), .init(inherits_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_parent_class_471820014._native_ptr(),
                    471820014)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func can_instantiate(`class`: StringName) -> UInt8 {
        let class_native = `class`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_can_instantiate_2619796661._native_ptr(),
                    2619796661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func instantiate(`class`: StringName) -> Variant {
        let class_native = `class`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_instantiate_2760726917._native_ptr(),
                    2760726917)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
    public func class_has_signal(`class`: StringName, signal: StringName) -> UInt8 {
        let signal_native = signal._native_ptr()
        let class_native = `class`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_native), .init(signal_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_class_has_signal_471820014._native_ptr(),
                    471820014)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func class_get_signal(`class`: StringName, signal: StringName) -> Dictionary {
        let signal_native = signal._native_ptr()
        let class_native = `class`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_native), .init(signal_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_class_get_signal_3061114238._native_ptr(),
                    3061114238)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func class_get_signal_list(`class`: StringName, no_inheritance: UInt8) -> [Dictionary] {
        withUnsafePointer(to: no_inheritance) { no_inheritance_native in
        let class_native = `class`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_native), .init(no_inheritance_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_class_get_signal_list_3504980660._native_ptr(),
                    3504980660)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](godot: __resPtr.pointee)
        }
    }
    public func class_get_property_list(`class`: StringName, no_inheritance: UInt8) -> [Dictionary] {
        withUnsafePointer(to: no_inheritance) { no_inheritance_native in
        let class_native = `class`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_native), .init(no_inheritance_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_class_get_property_list_3504980660._native_ptr(),
                    3504980660)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](godot: __resPtr.pointee)
        }
    }
    public func class_get_property(object: Object, property: StringName) -> Variant {
        let property_native = property._native_ptr()
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native), .init(property_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_class_get_property_2498641674._native_ptr(),
                    2498641674)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
    public func class_set_property(object: Object, property: StringName, value: Variant) -> Error {
        let value_native = value._native_ptr()
        let property_native = property._native_ptr()
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native), .init(property_native), .init(value_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_class_set_property_1690314931._native_ptr(),
                    1690314931)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func class_has_method(`class`: StringName, method: StringName, no_inheritance: UInt8) -> UInt8 {
        withUnsafePointer(to: no_inheritance) { no_inheritance_native in
        let method_native = method._native_ptr()
        let class_native = `class`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_native), .init(method_native), .init(no_inheritance_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_class_has_method_3860701026._native_ptr(),
                    3860701026)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func class_get_method_list(`class`: StringName, no_inheritance: UInt8) -> [Dictionary] {
        withUnsafePointer(to: no_inheritance) { no_inheritance_native in
        let class_native = `class`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_native), .init(no_inheritance_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_class_get_method_list_3504980660._native_ptr(),
                    3504980660)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](godot: __resPtr.pointee)
        }
    }
    public func class_get_integer_constant_list(`class`: StringName, no_inheritance: UInt8) -> PackedStringArray {
        withUnsafePointer(to: no_inheritance) { no_inheritance_native in
        let class_native = `class`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_native), .init(no_inheritance_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_class_get_integer_constant_list_3031669221._native_ptr(),
                    3031669221)
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
    public func class_has_integer_constant(`class`: StringName, name: StringName) -> UInt8 {
        let name_native = name._native_ptr()
        let class_native = `class`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_native), .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_class_has_integer_constant_471820014._native_ptr(),
                    471820014)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func class_get_integer_constant(`class`: StringName, name: StringName) -> Int64 {
        let name_native = name._native_ptr()
        let class_native = `class`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_native), .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_class_get_integer_constant_2419549490._native_ptr(),
                    2419549490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func class_has_enum(`class`: StringName, name: StringName, no_inheritance: UInt8) -> UInt8 {
        withUnsafePointer(to: no_inheritance) { no_inheritance_native in
        let name_native = name._native_ptr()
        let class_native = `class`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_native), .init(name_native), .init(no_inheritance_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_class_has_enum_3860701026._native_ptr(),
                    3860701026)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func class_get_enum_list(`class`: StringName, no_inheritance: UInt8) -> PackedStringArray {
        withUnsafePointer(to: no_inheritance) { no_inheritance_native in
        let class_native = `class`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_native), .init(no_inheritance_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_class_get_enum_list_3031669221._native_ptr(),
                    3031669221)
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
    public func class_get_enum_constants(`class`: StringName, `enum`: StringName, no_inheritance: UInt8) -> PackedStringArray {
        withUnsafePointer(to: no_inheritance) { no_inheritance_native in
        let enum_native = `enum`._native_ptr()
        let class_native = `class`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_native), .init(enum_native), .init(no_inheritance_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_class_get_enum_constants_661528303._native_ptr(),
                    661528303)
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
    public func class_get_integer_constant_enum(`class`: StringName, name: StringName, no_inheritance: UInt8) -> StringName {
        withUnsafePointer(to: no_inheritance) { no_inheritance_native in
        let name_native = name._native_ptr()
        let class_native = `class`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_native), .init(name_native), .init(no_inheritance_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_class_get_integer_constant_enum_2457504236._native_ptr(),
                    2457504236)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
        }
    }
    public func is_class_enabled(`class`: StringName) -> UInt8 {
        let class_native = `class`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_class_enabled_2619796661._native_ptr(),
                    2619796661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}