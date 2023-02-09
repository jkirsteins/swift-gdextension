import godot_native

fileprivate var __godot_name_VisualShaderNodeBillboard: StringName! = nil

/// A node that controls how the object faces the camera to be used within the visual shader graph.
/// 
/// The output port of this node needs to be connected to [code]Model View Matrix[/code] port of [VisualShaderNodeOutput].
open class VisualShaderNodeBillboard : VisualShaderNode {

    public enum BillboardType : Int32 {
        case BILLBOARD_TYPE_DISABLED = 0
        case BILLBOARD_TYPE_ENABLED = 1
        case BILLBOARD_TYPE_FIXED_Y = 2
        case BILLBOARD_TYPE_PARTICLES = 3
        case BILLBOARD_TYPE_MAX = 4
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeBillboard }

    static var _method_set_billboard_type_1227463289: StringName! = nil
    static var _method_get_billboard_type_3724188517: StringName! = nil
    static var _method_set_keep_scale_enabled_2586408642: StringName! = nil
    static var _method_is_keep_scale_enabled_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeBillboard == nil)
        __godot_name_VisualShaderNodeBillboard = StringName(from: "VisualShaderNodeBillboard")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_billboard_type_1227463289 = StringName(from: "set_billboard_type")
        assert(self._method_set_billboard_type_1227463289 != nil)
        self._method_get_billboard_type_3724188517 = StringName(from: "get_billboard_type")
        assert(self._method_get_billboard_type_3724188517 != nil)
        self._method_set_keep_scale_enabled_2586408642 = StringName(from: "set_keep_scale_enabled")
        assert(self._method_set_keep_scale_enabled_2586408642 != nil)
        self._method_is_keep_scale_enabled_36873697 = StringName(from: "is_keep_scale_enabled")
        assert(self._method_is_keep_scale_enabled_36873697 != nil)
    }

    public func set_billboard_type(billboard_type: VisualShaderNodeBillboard.BillboardType)  {
        withUnsafePointer(to: billboard_type.rawValue) { billboard_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(billboard_type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_billboard_type_1227463289._native_ptr(),
                    1227463289)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_billboard_type() -> VisualShaderNodeBillboard.BillboardType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_billboard_type_3724188517._native_ptr(),
                    3724188517)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeBillboard.BillboardType(godot: __resPtr.pointee)
    }
    public func set_keep_scale_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_keep_scale_enabled_2586408642._native_ptr(),
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
    public func is_keep_scale_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_keep_scale_enabled_36873697._native_ptr(),
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
}