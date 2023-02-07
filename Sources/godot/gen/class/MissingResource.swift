import godot_native

fileprivate var __godot_name_MissingResource: StringName! = nil

/// This is an internal editor class intended for keeping data of resources of unknown type.
/// 
/// This is an internal editor class intended for keeping data of resources of unknown type (most likely this type was supplied by an extension that is no longer loaded). It can't be manually instantiated or placed in the scene. Ignore it if you don't know what it is.
public class MissingResource : Resource {

    

    public override class var __godot_name: StringName { __godot_name_MissingResource }

    static var _method_set_original_class_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_original_class_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_recording_properties_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_recording_properties_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_MissingResource = StringName(from: "MissingResource")

        let _method_set_original_class_83702148_name = StringName(from: "set_original_class")
        self._method_set_original_class_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_original_class_83702148_name._native_ptr(), 83702148)
        assert(MissingResource._method_set_original_class_83702148 != nil)
        let _method_get_original_class_201670096_name = StringName(from: "get_original_class")
        self._method_get_original_class_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_original_class_201670096_name._native_ptr(), 201670096)
        assert(MissingResource._method_get_original_class_201670096 != nil)
        let _method_set_recording_properties_2586408642_name = StringName(from: "set_recording_properties")
        self._method_set_recording_properties_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_recording_properties_2586408642_name._native_ptr(), 2586408642)
        assert(MissingResource._method_set_recording_properties_2586408642 != nil)
        let _method_is_recording_properties_36873697_name = StringName(from: "is_recording_properties")
        self._method_is_recording_properties_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_recording_properties_36873697_name._native_ptr(), 36873697)
        assert(MissingResource._method_is_recording_properties_36873697 != nil)
    }

    public func set_original_class(name: String)  {
        withUnsafePointer(to: name) { name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_original_class_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_original_class() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_original_class_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_recording_properties(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_recording_properties_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_recording_properties() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_recording_properties_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}