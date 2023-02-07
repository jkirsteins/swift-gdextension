import godot_native

fileprivate var __godot_name_Bone2D: StringName! = nil

/// Joint used with [Skeleton2D] to control and animate other nodes.
/// 
/// Use a hierarchy of [code]Bone2D[/code] bound to a [Skeleton2D] to control, and animate other [Node2D] nodes.
///  
/// You can use [code]Bone2D[/code] and [code]Skeleton2D[/code] nodes to animate 2D meshes created with the Polygon 2D UV editor.
///  
/// Each bone has a [member rest] transform that you can reset to with [method apply_rest]. These rest poses are relative to the bone's parent.
///  
/// If in the editor, you can set the rest pose of an entire skeleton using a menu option, from the code, you need to iterate over the bones to set their individual rest poses.
public class Bone2D : Node2D {

    

    public override class var __godot_name: StringName { __godot_name_Bone2D }

    static var _method_set_rest_2761652528: GDExtensionMethodBindPtr! = nil
    static var _method_get_rest_3814499831: GDExtensionMethodBindPtr! = nil
    static var _method_apply_rest_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_skeleton_rest_3814499831: GDExtensionMethodBindPtr! = nil
    static var _method_get_index_in_skeleton_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_default_length_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_default_length_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_autocalculate_length_and_angle_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_autocalculate_length_and_angle_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_length_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_length_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_bone_angle_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_angle_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Bone2D = StringName(from: "Bone2D")

        let _method_set_rest_2761652528_name = StringName(from: "set_rest")
        self._method_set_rest_2761652528 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_rest_2761652528_name._native_ptr(), 2761652528)
        assert(Bone2D._method_set_rest_2761652528 != nil)
        let _method_get_rest_3814499831_name = StringName(from: "get_rest")
        self._method_get_rest_3814499831 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rest_3814499831_name._native_ptr(), 3814499831)
        assert(Bone2D._method_get_rest_3814499831 != nil)
        let _method_apply_rest_3218959716_name = StringName(from: "apply_rest")
        self._method_apply_rest_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_apply_rest_3218959716_name._native_ptr(), 3218959716)
        assert(Bone2D._method_apply_rest_3218959716 != nil)
        let _method_get_skeleton_rest_3814499831_name = StringName(from: "get_skeleton_rest")
        self._method_get_skeleton_rest_3814499831 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_skeleton_rest_3814499831_name._native_ptr(), 3814499831)
        assert(Bone2D._method_get_skeleton_rest_3814499831 != nil)
        let _method_get_index_in_skeleton_3905245786_name = StringName(from: "get_index_in_skeleton")
        self._method_get_index_in_skeleton_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_index_in_skeleton_3905245786_name._native_ptr(), 3905245786)
        assert(Bone2D._method_get_index_in_skeleton_3905245786 != nil)
        let _method_set_default_length_373806689_name = StringName(from: "set_default_length")
        self._method_set_default_length_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_default_length_373806689_name._native_ptr(), 373806689)
        assert(Bone2D._method_set_default_length_373806689 != nil)
        let _method_get_default_length_1740695150_name = StringName(from: "get_default_length")
        self._method_get_default_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_default_length_1740695150_name._native_ptr(), 1740695150)
        assert(Bone2D._method_get_default_length_1740695150 != nil)
        let _method_set_autocalculate_length_and_angle_2586408642_name = StringName(from: "set_autocalculate_length_and_angle")
        self._method_set_autocalculate_length_and_angle_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_autocalculate_length_and_angle_2586408642_name._native_ptr(), 2586408642)
        assert(Bone2D._method_set_autocalculate_length_and_angle_2586408642 != nil)
        let _method_get_autocalculate_length_and_angle_36873697_name = StringName(from: "get_autocalculate_length_and_angle")
        self._method_get_autocalculate_length_and_angle_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_autocalculate_length_and_angle_36873697_name._native_ptr(), 36873697)
        assert(Bone2D._method_get_autocalculate_length_and_angle_36873697 != nil)
        let _method_set_length_373806689_name = StringName(from: "set_length")
        self._method_set_length_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_length_373806689_name._native_ptr(), 373806689)
        assert(Bone2D._method_set_length_373806689 != nil)
        let _method_get_length_1740695150_name = StringName(from: "get_length")
        self._method_get_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_length_1740695150_name._native_ptr(), 1740695150)
        assert(Bone2D._method_get_length_1740695150 != nil)
        let _method_set_bone_angle_373806689_name = StringName(from: "set_bone_angle")
        self._method_set_bone_angle_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bone_angle_373806689_name._native_ptr(), 373806689)
        assert(Bone2D._method_set_bone_angle_373806689 != nil)
        let _method_get_bone_angle_1740695150_name = StringName(from: "get_bone_angle")
        self._method_get_bone_angle_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bone_angle_1740695150_name._native_ptr(), 1740695150)
        assert(Bone2D._method_get_bone_angle_1740695150 != nil)
    }

    public func set_rest(rest: Transform2D)  {
        let rest_native = rest._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rest_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_rest_2761652528,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_rest() -> Transform2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rest_3814499831,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(from: __resPtr.pointee)
    }
    public func apply_rest()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_apply_rest_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_skeleton_rest() -> Transform2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_skeleton_rest_3814499831,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(from: __resPtr.pointee)
    }
    public func get_index_in_skeleton() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_index_in_skeleton_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_default_length(default_length: Float64)  {
        withUnsafePointer(to: default_length) { default_length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(default_length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_default_length_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_default_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_default_length_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_autocalculate_length_and_angle(auto_calculate: UInt8)  {
        withUnsafePointer(to: auto_calculate) { auto_calculate_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(auto_calculate_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_autocalculate_length_and_angle_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_autocalculate_length_and_angle() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_autocalculate_length_and_angle_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_length(length: Float64)  {
        withUnsafePointer(to: length) { length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_length_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_length_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_bone_angle(angle: Float64)  {
        withUnsafePointer(to: angle) { angle_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(angle_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bone_angle_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bone_angle() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_angle_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}