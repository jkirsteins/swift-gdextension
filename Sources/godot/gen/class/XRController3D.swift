import godot_native

fileprivate var __godot_name_XRController3D: StringName! = nil

/// A spatial node representing a spatially-tracked controller.
/// 
/// This is a helper spatial node that is linked to the tracking of controllers. It also offers several handy passthroughs to the state of buttons and such on the controllers.
///  
/// Controllers are linked by their ID. You can create controller nodes before the controllers are available. If your game always uses two controllers (one for each hand), you can predefine the controllers with ID 1 and 2; they will become active as soon as the controllers are identified. If you expect additional controllers to be used, you should react to the signals and add XRController3D nodes to your scene.
///  
/// The position of the controller node is automatically updated by the [XRServer]. This makes this node ideal to add child nodes to visualize the controller.
///  
/// As many XR runtimes now use a configurable action map all inputs are named.
public class XRController3D : XRNode3D {

    

    public override class var __godot_name: StringName { __godot_name_XRController3D }

    static var _method_is_button_pressed_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_get_input_2760726917: GDExtensionMethodBindPtr! = nil
    static var _method_get_float_2349060816: GDExtensionMethodBindPtr! = nil
    static var _method_get_vector2_3100822709: GDExtensionMethodBindPtr! = nil
    static var _method_get_tracker_hand_4181770860: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_XRController3D = StringName(from: "XRController3D")

        let _method_is_button_pressed_2619796661_name = StringName(from: "is_button_pressed")
        self._method_is_button_pressed_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_button_pressed_2619796661_name._native_ptr(), 2619796661)
        assert(XRController3D._method_is_button_pressed_2619796661 != nil)
        let _method_get_input_2760726917_name = StringName(from: "get_input")
        self._method_get_input_2760726917 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_input_2760726917_name._native_ptr(), 2760726917)
        assert(XRController3D._method_get_input_2760726917 != nil)
        let _method_get_float_2349060816_name = StringName(from: "get_float")
        self._method_get_float_2349060816 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_float_2349060816_name._native_ptr(), 2349060816)
        assert(XRController3D._method_get_float_2349060816 != nil)
        let _method_get_vector2_3100822709_name = StringName(from: "get_vector2")
        self._method_get_vector2_3100822709 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_vector2_3100822709_name._native_ptr(), 3100822709)
        assert(XRController3D._method_get_vector2_3100822709 != nil)
        let _method_get_tracker_hand_4181770860_name = StringName(from: "get_tracker_hand")
        self._method_get_tracker_hand_4181770860 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tracker_hand_4181770860_name._native_ptr(), 4181770860)
        assert(XRController3D._method_get_tracker_hand_4181770860 != nil)
    }

    public func is_button_pressed(name: StringName) -> UInt8 {
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
                    Self._method_is_button_pressed_2619796661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_input(name: StringName) -> Variant {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_input_2760726917,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
    public func get_float(name: StringName) -> Float64 {
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
                    Self._method_get_float_2349060816,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func get_vector2(name: StringName) -> Vector2 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_vector2_3100822709,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func get_tracker_hand() -> XRPositionalTracker.TrackerHand {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tracker_hand_4181770860,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRPositionalTracker.TrackerHand(from: __resPtr.pointee)
    }
}