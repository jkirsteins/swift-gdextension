import godot_native

fileprivate var __godot_name_BoxContainer: StringName! = nil

/// Base class for box containers.
/// 
/// Arranges child [Control] nodes vertically or horizontally, and rearranges them automatically when their minimum size changes.
open class BoxContainer : Container {

    public enum AlignmentMode : Int32 {
        case ALIGNMENT_BEGIN = 0
        case ALIGNMENT_CENTER = 1
        case ALIGNMENT_END = 2
    }

    public override class var __godot_name: StringName { __godot_name_BoxContainer }

    static var _method_add_spacer_1326660695: GDExtensionMethodBindPtr! = nil
    static var _method_set_alignment_2456745134: GDExtensionMethodBindPtr! = nil
    static var _method_get_alignment_1915476527: GDExtensionMethodBindPtr! = nil
    static var _method_set_vertical_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_vertical_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_BoxContainer = StringName(from: "BoxContainer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_add_spacer_1326660695_name = StringName(from: "add_spacer")
        self._method_add_spacer_1326660695 = self.interface.pointee.classdb_get_method_bind(__godot_name_BoxContainer._native_ptr(), _method_add_spacer_1326660695_name._native_ptr(), 1326660695)
        assert(BoxContainer._method_add_spacer_1326660695 != nil)
        let _method_set_alignment_2456745134_name = StringName(from: "set_alignment")
        self._method_set_alignment_2456745134 = self.interface.pointee.classdb_get_method_bind(__godot_name_BoxContainer._native_ptr(), _method_set_alignment_2456745134_name._native_ptr(), 2456745134)
        assert(BoxContainer._method_set_alignment_2456745134 != nil)
        let _method_get_alignment_1915476527_name = StringName(from: "get_alignment")
        self._method_get_alignment_1915476527 = self.interface.pointee.classdb_get_method_bind(__godot_name_BoxContainer._native_ptr(), _method_get_alignment_1915476527_name._native_ptr(), 1915476527)
        assert(BoxContainer._method_get_alignment_1915476527 != nil)
        let _method_set_vertical_2586408642_name = StringName(from: "set_vertical")
        self._method_set_vertical_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_BoxContainer._native_ptr(), _method_set_vertical_2586408642_name._native_ptr(), 2586408642)
        assert(BoxContainer._method_set_vertical_2586408642 != nil)
        let _method_is_vertical_36873697_name = StringName(from: "is_vertical")
        self._method_is_vertical_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_BoxContainer._native_ptr(), _method_is_vertical_36873697_name._native_ptr(), 36873697)
        assert(BoxContainer._method_is_vertical_36873697 != nil)
    }

    public func add_spacer(begin: UInt8) -> Control {
        withUnsafePointer(to: begin) { begin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(begin_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_spacer_1326660695,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control(godot: __resPtr.pointee)
        }
    }
    public func set_alignment(alignment: BoxContainer.AlignmentMode)  {
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(alignment_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_alignment_2456745134,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_alignment() -> BoxContainer.AlignmentMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_alignment_1915476527,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BoxContainer.AlignmentMode(godot: __resPtr.pointee)
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