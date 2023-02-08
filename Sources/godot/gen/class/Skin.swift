import godot_native

fileprivate var __godot_name_Skin: StringName! = nil

/// 
/// 
/// 
open class Skin : Resource {

    

    public override class var __godot_name: StringName { __godot_name_Skin }

    static var _method_set_bind_count_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_bind_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_add_bind_3616898986: GDExtensionMethodBindPtr! = nil
    static var _method_add_named_bind_3154712474: GDExtensionMethodBindPtr! = nil
    static var _method_set_bind_pose_3616898986: GDExtensionMethodBindPtr! = nil
    static var _method_get_bind_pose_1965739696: GDExtensionMethodBindPtr! = nil
    static var _method_set_bind_name_3780747571: GDExtensionMethodBindPtr! = nil
    static var _method_get_bind_name_659327637: GDExtensionMethodBindPtr! = nil
    static var _method_set_bind_bone_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_get_bind_bone_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_clear_binds_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Skin = StringName(from: "Skin")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_bind_count_1286410249_name = StringName(from: "set_bind_count")
        self._method_set_bind_count_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skin._native_ptr(), _method_set_bind_count_1286410249_name._native_ptr(), 1286410249)
        assert(Skin._method_set_bind_count_1286410249 != nil)
        let _method_get_bind_count_3905245786_name = StringName(from: "get_bind_count")
        self._method_get_bind_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skin._native_ptr(), _method_get_bind_count_3905245786_name._native_ptr(), 3905245786)
        assert(Skin._method_get_bind_count_3905245786 != nil)
        let _method_add_bind_3616898986_name = StringName(from: "add_bind")
        self._method_add_bind_3616898986 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skin._native_ptr(), _method_add_bind_3616898986_name._native_ptr(), 3616898986)
        assert(Skin._method_add_bind_3616898986 != nil)
        let _method_add_named_bind_3154712474_name = StringName(from: "add_named_bind")
        self._method_add_named_bind_3154712474 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skin._native_ptr(), _method_add_named_bind_3154712474_name._native_ptr(), 3154712474)
        assert(Skin._method_add_named_bind_3154712474 != nil)
        let _method_set_bind_pose_3616898986_name = StringName(from: "set_bind_pose")
        self._method_set_bind_pose_3616898986 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skin._native_ptr(), _method_set_bind_pose_3616898986_name._native_ptr(), 3616898986)
        assert(Skin._method_set_bind_pose_3616898986 != nil)
        let _method_get_bind_pose_1965739696_name = StringName(from: "get_bind_pose")
        self._method_get_bind_pose_1965739696 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skin._native_ptr(), _method_get_bind_pose_1965739696_name._native_ptr(), 1965739696)
        assert(Skin._method_get_bind_pose_1965739696 != nil)
        let _method_set_bind_name_3780747571_name = StringName(from: "set_bind_name")
        self._method_set_bind_name_3780747571 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skin._native_ptr(), _method_set_bind_name_3780747571_name._native_ptr(), 3780747571)
        assert(Skin._method_set_bind_name_3780747571 != nil)
        let _method_get_bind_name_659327637_name = StringName(from: "get_bind_name")
        self._method_get_bind_name_659327637 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skin._native_ptr(), _method_get_bind_name_659327637_name._native_ptr(), 659327637)
        assert(Skin._method_get_bind_name_659327637 != nil)
        let _method_set_bind_bone_3937882851_name = StringName(from: "set_bind_bone")
        self._method_set_bind_bone_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skin._native_ptr(), _method_set_bind_bone_3937882851_name._native_ptr(), 3937882851)
        assert(Skin._method_set_bind_bone_3937882851 != nil)
        let _method_get_bind_bone_923996154_name = StringName(from: "get_bind_bone")
        self._method_get_bind_bone_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skin._native_ptr(), _method_get_bind_bone_923996154_name._native_ptr(), 923996154)
        assert(Skin._method_get_bind_bone_923996154 != nil)
        let _method_clear_binds_3218959716_name = StringName(from: "clear_binds")
        self._method_clear_binds_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Skin._native_ptr(), _method_clear_binds_3218959716_name._native_ptr(), 3218959716)
        assert(Skin._method_clear_binds_3218959716 != nil)
    }

    public func set_bind_count(bind_count: Int64)  {
        withUnsafePointer(to: bind_count) { bind_count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bind_count_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bind_count_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bind_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bind_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func add_bind(bone: Int64, pose: Transform3D)  {
        withUnsafePointer(to: bone) { bone_native in
        let pose_native = pose._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_native), .init(pose_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_bind_3616898986,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_named_bind(name: godot.String, pose: Transform3D)  {
        let pose_native = pose._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(pose_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_named_bind_3154712474,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_bind_pose(bind_index: Int64, pose: Transform3D)  {
        withUnsafePointer(to: bind_index) { bind_index_native in
        let pose_native = pose._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bind_index_native), .init(pose_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bind_pose_3616898986,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bind_pose(bind_index: Int64) -> Transform3D {
        withUnsafePointer(to: bind_index) { bind_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bind_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bind_pose_1965739696,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(godot: __resPtr.pointee)
        }
    }
    public func set_bind_name(bind_index: Int64, name: StringName)  {
        withUnsafePointer(to: bind_index) { bind_index_native in
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bind_index_native), .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bind_name_3780747571,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bind_name(bind_index: Int64) -> StringName {
        withUnsafePointer(to: bind_index) { bind_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bind_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bind_name_659327637,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
        }
    }
    public func set_bind_bone(bind_index: Int64, bone: Int64)  {
        withUnsafePointer(to: bone) { bone_native in
        withUnsafePointer(to: bind_index) { bind_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bind_index_native), .init(bone_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bind_bone_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_bind_bone(bind_index: Int64) -> Int64 {
        withUnsafePointer(to: bind_index) { bind_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bind_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bind_bone_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func clear_binds()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_binds_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}