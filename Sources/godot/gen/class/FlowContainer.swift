import godot_native

fileprivate var __godot_name_FlowContainer: StringName! = nil

/// Base class for flow containers.
/// 
/// Arranges child [Control] nodes vertically or horizontally in a left-to-right or top-to-bottom flow.
///  
/// A line is filled with [Control] nodes until no more fit on the same line, similar to text in an autowrapped label.
open class FlowContainer : Container {

    public enum AlignmentMode : Int32 {
        case ALIGNMENT_BEGIN = 0
        case ALIGNMENT_CENTER = 1
        case ALIGNMENT_END = 2
    }

    public override class var __godot_name: StringName { __godot_name_FlowContainer }

    static var _method_get_line_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_alignment_575250951: GDExtensionMethodBindPtr! = nil
    static var _method_get_alignment_3749743559: GDExtensionMethodBindPtr! = nil
    static var _method_set_vertical_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_vertical_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_FlowContainer = StringName(from: "FlowContainer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_line_count_3905245786_name = StringName(from: "get_line_count")
        self._method_get_line_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_FlowContainer._native_ptr(), _method_get_line_count_3905245786_name._native_ptr(), 3905245786)
        assert(FlowContainer._method_get_line_count_3905245786 != nil)
        let _method_set_alignment_575250951_name = StringName(from: "set_alignment")
        self._method_set_alignment_575250951 = self.interface.pointee.classdb_get_method_bind(__godot_name_FlowContainer._native_ptr(), _method_set_alignment_575250951_name._native_ptr(), 575250951)
        assert(FlowContainer._method_set_alignment_575250951 != nil)
        let _method_get_alignment_3749743559_name = StringName(from: "get_alignment")
        self._method_get_alignment_3749743559 = self.interface.pointee.classdb_get_method_bind(__godot_name_FlowContainer._native_ptr(), _method_get_alignment_3749743559_name._native_ptr(), 3749743559)
        assert(FlowContainer._method_get_alignment_3749743559 != nil)
        let _method_set_vertical_2586408642_name = StringName(from: "set_vertical")
        self._method_set_vertical_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_FlowContainer._native_ptr(), _method_set_vertical_2586408642_name._native_ptr(), 2586408642)
        assert(FlowContainer._method_set_vertical_2586408642 != nil)
        let _method_is_vertical_36873697_name = StringName(from: "is_vertical")
        self._method_is_vertical_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_FlowContainer._native_ptr(), _method_is_vertical_36873697_name._native_ptr(), 36873697)
        assert(FlowContainer._method_is_vertical_36873697 != nil)
    }

    public func get_line_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_alignment(alignment: FlowContainer.AlignmentMode)  {
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(alignment_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_alignment_575250951,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_alignment() -> FlowContainer.AlignmentMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_alignment_3749743559,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return FlowContainer.AlignmentMode(godot: __resPtr.pointee)
    }
    public func set_vertical(vertical: UInt8)  {
        withUnsafePointer(to: vertical) { vertical_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vertical_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_vertical_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_vertical() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_vertical_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}