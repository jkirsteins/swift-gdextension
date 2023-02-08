import godot_native

fileprivate var __godot_name_ClassDB: StringName! = nil

/// Class information repository.
/// 
/// Provides access to metadata stored for every available class.
open class ClassDB : Object {

    

    public override class var __godot_name: StringName { __godot_name_ClassDB }

    static var _method_get_class_list_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_get_inheriters_from_class_1761182771: GDExtensionMethodBindPtr! = nil
    static var _method_get_parent_class_1965194235: GDExtensionMethodBindPtr! = nil
    static var _method_class_exists_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_is_parent_class_471820014: GDExtensionMethodBindPtr! = nil
    static var _method_can_instantiate_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_instantiate_2760726917: GDExtensionMethodBindPtr! = nil
    static var _method_class_has_signal_471820014: GDExtensionMethodBindPtr! = nil
    static var _method_class_get_signal_3061114238: GDExtensionMethodBindPtr! = nil
    static var _method_class_get_signal_list_3504980660: GDExtensionMethodBindPtr! = nil
    static var _method_class_get_property_list_3504980660: GDExtensionMethodBindPtr! = nil
    static var _method_class_get_property_2498641674: GDExtensionMethodBindPtr! = nil
    static var _method_class_set_property_1690314931: GDExtensionMethodBindPtr! = nil
    static var _method_class_has_method_3860701026: GDExtensionMethodBindPtr! = nil
    static var _method_class_get_method_list_3504980660: GDExtensionMethodBindPtr! = nil
    static var _method_class_get_integer_constant_list_3031669221: GDExtensionMethodBindPtr! = nil
    static var _method_class_has_integer_constant_471820014: GDExtensionMethodBindPtr! = nil
    static var _method_class_get_integer_constant_2419549490: GDExtensionMethodBindPtr! = nil
    static var _method_class_has_enum_3860701026: GDExtensionMethodBindPtr! = nil
    static var _method_class_get_enum_list_3031669221: GDExtensionMethodBindPtr! = nil
    static var _method_class_get_enum_constants_661528303: GDExtensionMethodBindPtr! = nil
    static var _method_class_get_integer_constant_enum_2457504236: GDExtensionMethodBindPtr! = nil
    static var _method_is_class_enabled_2619796661: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_ClassDB = StringName(from: "ClassDB")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_class_list_1139954409_name = StringName(from: "get_class_list")
        self._method_get_class_list_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_get_class_list_1139954409_name._native_ptr(), 1139954409)
        assert(ClassDB._method_get_class_list_1139954409 != nil)
        let _method_get_inheriters_from_class_1761182771_name = StringName(from: "get_inheriters_from_class")
        self._method_get_inheriters_from_class_1761182771 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_get_inheriters_from_class_1761182771_name._native_ptr(), 1761182771)
        assert(ClassDB._method_get_inheriters_from_class_1761182771 != nil)
        let _method_get_parent_class_1965194235_name = StringName(from: "get_parent_class")
        self._method_get_parent_class_1965194235 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_get_parent_class_1965194235_name._native_ptr(), 1965194235)
        assert(ClassDB._method_get_parent_class_1965194235 != nil)
        let _method_class_exists_2619796661_name = StringName(from: "class_exists")
        self._method_class_exists_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_class_exists_2619796661_name._native_ptr(), 2619796661)
        assert(ClassDB._method_class_exists_2619796661 != nil)
        let _method_is_parent_class_471820014_name = StringName(from: "is_parent_class")
        self._method_is_parent_class_471820014 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_is_parent_class_471820014_name._native_ptr(), 471820014)
        assert(ClassDB._method_is_parent_class_471820014 != nil)
        let _method_can_instantiate_2619796661_name = StringName(from: "can_instantiate")
        self._method_can_instantiate_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_can_instantiate_2619796661_name._native_ptr(), 2619796661)
        assert(ClassDB._method_can_instantiate_2619796661 != nil)
        let _method_instantiate_2760726917_name = StringName(from: "instantiate")
        self._method_instantiate_2760726917 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_instantiate_2760726917_name._native_ptr(), 2760726917)
        assert(ClassDB._method_instantiate_2760726917 != nil)
        let _method_class_has_signal_471820014_name = StringName(from: "class_has_signal")
        self._method_class_has_signal_471820014 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_class_has_signal_471820014_name._native_ptr(), 471820014)
        assert(ClassDB._method_class_has_signal_471820014 != nil)
        let _method_class_get_signal_3061114238_name = StringName(from: "class_get_signal")
        self._method_class_get_signal_3061114238 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_class_get_signal_3061114238_name._native_ptr(), 3061114238)
        assert(ClassDB._method_class_get_signal_3061114238 != nil)
        let _method_class_get_signal_list_3504980660_name = StringName(from: "class_get_signal_list")
        self._method_class_get_signal_list_3504980660 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_class_get_signal_list_3504980660_name._native_ptr(), 3504980660)
        assert(ClassDB._method_class_get_signal_list_3504980660 != nil)
        let _method_class_get_property_list_3504980660_name = StringName(from: "class_get_property_list")
        self._method_class_get_property_list_3504980660 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_class_get_property_list_3504980660_name._native_ptr(), 3504980660)
        assert(ClassDB._method_class_get_property_list_3504980660 != nil)
        let _method_class_get_property_2498641674_name = StringName(from: "class_get_property")
        self._method_class_get_property_2498641674 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_class_get_property_2498641674_name._native_ptr(), 2498641674)
        assert(ClassDB._method_class_get_property_2498641674 != nil)
        let _method_class_set_property_1690314931_name = StringName(from: "class_set_property")
        self._method_class_set_property_1690314931 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_class_set_property_1690314931_name._native_ptr(), 1690314931)
        assert(ClassDB._method_class_set_property_1690314931 != nil)
        let _method_class_has_method_3860701026_name = StringName(from: "class_has_method")
        self._method_class_has_method_3860701026 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_class_has_method_3860701026_name._native_ptr(), 3860701026)
        assert(ClassDB._method_class_has_method_3860701026 != nil)
        let _method_class_get_method_list_3504980660_name = StringName(from: "class_get_method_list")
        self._method_class_get_method_list_3504980660 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_class_get_method_list_3504980660_name._native_ptr(), 3504980660)
        assert(ClassDB._method_class_get_method_list_3504980660 != nil)
        let _method_class_get_integer_constant_list_3031669221_name = StringName(from: "class_get_integer_constant_list")
        self._method_class_get_integer_constant_list_3031669221 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_class_get_integer_constant_list_3031669221_name._native_ptr(), 3031669221)
        assert(ClassDB._method_class_get_integer_constant_list_3031669221 != nil)
        let _method_class_has_integer_constant_471820014_name = StringName(from: "class_has_integer_constant")
        self._method_class_has_integer_constant_471820014 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_class_has_integer_constant_471820014_name._native_ptr(), 471820014)
        assert(ClassDB._method_class_has_integer_constant_471820014 != nil)
        let _method_class_get_integer_constant_2419549490_name = StringName(from: "class_get_integer_constant")
        self._method_class_get_integer_constant_2419549490 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_class_get_integer_constant_2419549490_name._native_ptr(), 2419549490)
        assert(ClassDB._method_class_get_integer_constant_2419549490 != nil)
        let _method_class_has_enum_3860701026_name = StringName(from: "class_has_enum")
        self._method_class_has_enum_3860701026 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_class_has_enum_3860701026_name._native_ptr(), 3860701026)
        assert(ClassDB._method_class_has_enum_3860701026 != nil)
        let _method_class_get_enum_list_3031669221_name = StringName(from: "class_get_enum_list")
        self._method_class_get_enum_list_3031669221 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_class_get_enum_list_3031669221_name._native_ptr(), 3031669221)
        assert(ClassDB._method_class_get_enum_list_3031669221 != nil)
        let _method_class_get_enum_constants_661528303_name = StringName(from: "class_get_enum_constants")
        self._method_class_get_enum_constants_661528303 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_class_get_enum_constants_661528303_name._native_ptr(), 661528303)
        assert(ClassDB._method_class_get_enum_constants_661528303 != nil)
        let _method_class_get_integer_constant_enum_2457504236_name = StringName(from: "class_get_integer_constant_enum")
        self._method_class_get_integer_constant_enum_2457504236 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_class_get_integer_constant_enum_2457504236_name._native_ptr(), 2457504236)
        assert(ClassDB._method_class_get_integer_constant_enum_2457504236 != nil)
        let _method_is_class_enabled_2619796661_name = StringName(from: "is_class_enabled")
        self._method_is_class_enabled_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name_ClassDB._native_ptr(), _method_is_class_enabled_2619796661_name._native_ptr(), 2619796661)
        assert(ClassDB._method_is_class_enabled_2619796661 != nil)
    }

    public func get_class_list() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_class_list_1139954409,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_inheriters_from_class_1761182771,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_parent_class_1965194235,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_class_exists_2619796661,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_parent_class_471820014,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_can_instantiate_2619796661,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instantiate_2760726917,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_class_has_signal_471820014,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_class_get_signal_3061114238,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_class_get_signal_list_3504980660,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_class_get_property_list_3504980660,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_class_get_property_2498641674,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_class_set_property_1690314931,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_class_has_method_3860701026,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_class_get_method_list_3504980660,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_class_get_integer_constant_list_3031669221,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_class_has_integer_constant_471820014,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_class_get_integer_constant_2419549490,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_class_has_enum_3860701026,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_class_get_enum_list_3031669221,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_class_get_enum_constants_661528303,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_class_get_integer_constant_enum_2457504236,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_class_enabled_2619796661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}