import godot_native

fileprivate var __godot_name_Node2D: StringName! = nil

/// A 2D game object, inherited by all 2D-related nodes. Has a position, rotation, scale, and Z index.
/// 
/// A 2D game object, with a transform (position, rotation, and scale). All 2D nodes, including physics objects and sprites, inherit from Node2D. Use Node2D as a parent node to move, scale and rotate children in a 2D project. Also gives control of the node's render order.
public class Node2D : CanvasItem {

    

    public override class var __godot_name: StringName { __godot_name_Node2D }

    static var _method_set_position_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_set_rotation_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_rotation_degrees_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_skew_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_scale_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_position_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_rotation_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_rotation_degrees_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_skew_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_scale_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_rotate_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_move_local_x_2087892650: GDExtensionMethodBindPtr! = nil
    static var _method_move_local_y_2087892650: GDExtensionMethodBindPtr! = nil
    static var _method_translate_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_global_translate_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_apply_scale_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_set_global_position_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_global_position_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_global_rotation_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_global_rotation_degrees_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_global_rotation_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_global_rotation_degrees_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_global_skew_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_global_skew_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_global_scale_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_global_scale_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_transform_2761652528: GDExtensionMethodBindPtr! = nil
    static var _method_set_global_transform_2761652528: GDExtensionMethodBindPtr! = nil
    static var _method_look_at_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_angle_to_2276447920: GDExtensionMethodBindPtr! = nil
    static var _method_to_local_2656412154: GDExtensionMethodBindPtr! = nil
    static var _method_to_global_2656412154: GDExtensionMethodBindPtr! = nil
    static var _method_get_relative_transform_to_parent_904556875: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Node2D = StringName(from: "Node2D")

        let _method_set_position_743155724_name = StringName(from: "set_position")
        self._method_set_position_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_position_743155724_name._native_ptr(), 743155724)
        assert(Node2D._method_set_position_743155724 != nil)
        let _method_set_rotation_373806689_name = StringName(from: "set_rotation")
        self._method_set_rotation_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_rotation_373806689_name._native_ptr(), 373806689)
        assert(Node2D._method_set_rotation_373806689 != nil)
        let _method_set_rotation_degrees_373806689_name = StringName(from: "set_rotation_degrees")
        self._method_set_rotation_degrees_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_rotation_degrees_373806689_name._native_ptr(), 373806689)
        assert(Node2D._method_set_rotation_degrees_373806689 != nil)
        let _method_set_skew_373806689_name = StringName(from: "set_skew")
        self._method_set_skew_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_skew_373806689_name._native_ptr(), 373806689)
        assert(Node2D._method_set_skew_373806689 != nil)
        let _method_set_scale_743155724_name = StringName(from: "set_scale")
        self._method_set_scale_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_scale_743155724_name._native_ptr(), 743155724)
        assert(Node2D._method_set_scale_743155724 != nil)
        let _method_get_position_3341600327_name = StringName(from: "get_position")
        self._method_get_position_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_position_3341600327_name._native_ptr(), 3341600327)
        assert(Node2D._method_get_position_3341600327 != nil)
        let _method_get_rotation_1740695150_name = StringName(from: "get_rotation")
        self._method_get_rotation_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rotation_1740695150_name._native_ptr(), 1740695150)
        assert(Node2D._method_get_rotation_1740695150 != nil)
        let _method_get_rotation_degrees_1740695150_name = StringName(from: "get_rotation_degrees")
        self._method_get_rotation_degrees_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rotation_degrees_1740695150_name._native_ptr(), 1740695150)
        assert(Node2D._method_get_rotation_degrees_1740695150 != nil)
        let _method_get_skew_1740695150_name = StringName(from: "get_skew")
        self._method_get_skew_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_skew_1740695150_name._native_ptr(), 1740695150)
        assert(Node2D._method_get_skew_1740695150 != nil)
        let _method_get_scale_3341600327_name = StringName(from: "get_scale")
        self._method_get_scale_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_scale_3341600327_name._native_ptr(), 3341600327)
        assert(Node2D._method_get_scale_3341600327 != nil)
        let _method_rotate_373806689_name = StringName(from: "rotate")
        self._method_rotate_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rotate_373806689_name._native_ptr(), 373806689)
        assert(Node2D._method_rotate_373806689 != nil)
        let _method_move_local_x_2087892650_name = StringName(from: "move_local_x")
        self._method_move_local_x_2087892650 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_move_local_x_2087892650_name._native_ptr(), 2087892650)
        assert(Node2D._method_move_local_x_2087892650 != nil)
        let _method_move_local_y_2087892650_name = StringName(from: "move_local_y")
        self._method_move_local_y_2087892650 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_move_local_y_2087892650_name._native_ptr(), 2087892650)
        assert(Node2D._method_move_local_y_2087892650 != nil)
        let _method_translate_743155724_name = StringName(from: "translate")
        self._method_translate_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_translate_743155724_name._native_ptr(), 743155724)
        assert(Node2D._method_translate_743155724 != nil)
        let _method_global_translate_743155724_name = StringName(from: "global_translate")
        self._method_global_translate_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_translate_743155724_name._native_ptr(), 743155724)
        assert(Node2D._method_global_translate_743155724 != nil)
        let _method_apply_scale_743155724_name = StringName(from: "apply_scale")
        self._method_apply_scale_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_apply_scale_743155724_name._native_ptr(), 743155724)
        assert(Node2D._method_apply_scale_743155724 != nil)
        let _method_set_global_position_743155724_name = StringName(from: "set_global_position")
        self._method_set_global_position_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_global_position_743155724_name._native_ptr(), 743155724)
        assert(Node2D._method_set_global_position_743155724 != nil)
        let _method_get_global_position_3341600327_name = StringName(from: "get_global_position")
        self._method_get_global_position_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_global_position_3341600327_name._native_ptr(), 3341600327)
        assert(Node2D._method_get_global_position_3341600327 != nil)
        let _method_set_global_rotation_373806689_name = StringName(from: "set_global_rotation")
        self._method_set_global_rotation_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_global_rotation_373806689_name._native_ptr(), 373806689)
        assert(Node2D._method_set_global_rotation_373806689 != nil)
        let _method_set_global_rotation_degrees_373806689_name = StringName(from: "set_global_rotation_degrees")
        self._method_set_global_rotation_degrees_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_global_rotation_degrees_373806689_name._native_ptr(), 373806689)
        assert(Node2D._method_set_global_rotation_degrees_373806689 != nil)
        let _method_get_global_rotation_1740695150_name = StringName(from: "get_global_rotation")
        self._method_get_global_rotation_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_global_rotation_1740695150_name._native_ptr(), 1740695150)
        assert(Node2D._method_get_global_rotation_1740695150 != nil)
        let _method_get_global_rotation_degrees_1740695150_name = StringName(from: "get_global_rotation_degrees")
        self._method_get_global_rotation_degrees_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_global_rotation_degrees_1740695150_name._native_ptr(), 1740695150)
        assert(Node2D._method_get_global_rotation_degrees_1740695150 != nil)
        let _method_set_global_skew_373806689_name = StringName(from: "set_global_skew")
        self._method_set_global_skew_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_global_skew_373806689_name._native_ptr(), 373806689)
        assert(Node2D._method_set_global_skew_373806689 != nil)
        let _method_get_global_skew_1740695150_name = StringName(from: "get_global_skew")
        self._method_get_global_skew_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_global_skew_1740695150_name._native_ptr(), 1740695150)
        assert(Node2D._method_get_global_skew_1740695150 != nil)
        let _method_set_global_scale_743155724_name = StringName(from: "set_global_scale")
        self._method_set_global_scale_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_global_scale_743155724_name._native_ptr(), 743155724)
        assert(Node2D._method_set_global_scale_743155724 != nil)
        let _method_get_global_scale_3341600327_name = StringName(from: "get_global_scale")
        self._method_get_global_scale_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_global_scale_3341600327_name._native_ptr(), 3341600327)
        assert(Node2D._method_get_global_scale_3341600327 != nil)
        let _method_set_transform_2761652528_name = StringName(from: "set_transform")
        self._method_set_transform_2761652528 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_transform_2761652528_name._native_ptr(), 2761652528)
        assert(Node2D._method_set_transform_2761652528 != nil)
        let _method_set_global_transform_2761652528_name = StringName(from: "set_global_transform")
        self._method_set_global_transform_2761652528 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_global_transform_2761652528_name._native_ptr(), 2761652528)
        assert(Node2D._method_set_global_transform_2761652528 != nil)
        let _method_look_at_743155724_name = StringName(from: "look_at")
        self._method_look_at_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_look_at_743155724_name._native_ptr(), 743155724)
        assert(Node2D._method_look_at_743155724 != nil)
        let _method_get_angle_to_2276447920_name = StringName(from: "get_angle_to")
        self._method_get_angle_to_2276447920 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_angle_to_2276447920_name._native_ptr(), 2276447920)
        assert(Node2D._method_get_angle_to_2276447920 != nil)
        let _method_to_local_2656412154_name = StringName(from: "to_local")
        self._method_to_local_2656412154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_to_local_2656412154_name._native_ptr(), 2656412154)
        assert(Node2D._method_to_local_2656412154 != nil)
        let _method_to_global_2656412154_name = StringName(from: "to_global")
        self._method_to_global_2656412154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_to_global_2656412154_name._native_ptr(), 2656412154)
        assert(Node2D._method_to_global_2656412154 != nil)
        let _method_get_relative_transform_to_parent_904556875_name = StringName(from: "get_relative_transform_to_parent")
        self._method_get_relative_transform_to_parent_904556875 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_relative_transform_to_parent_904556875_name._native_ptr(), 904556875)
        assert(Node2D._method_get_relative_transform_to_parent_904556875 != nil)
    }

    public func set_position(position: Vector2)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(position._native_ptr())
        ])
    }
    public func set_rotation(radians: Float64)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(radians._native_ptr())
        ])
    }
    public func set_rotation_degrees(degrees: Float64)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(degrees._native_ptr())
        ])
    }
    public func set_skew(radians: Float64)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(radians._native_ptr())
        ])
    }
    public func set_scale(scale: Vector2)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(scale._native_ptr())
        ])
    }
    public func get_position()  -> Vector2 {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func get_rotation()  -> Float64 {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func get_rotation_degrees()  -> Float64 {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func get_skew()  -> Float64 {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func get_scale()  -> Vector2 {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func rotate(radians: Float64)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(radians._native_ptr())
        ])
    }
    public func move_local_x(delta: Float64, scaled: Bool)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(delta._native_ptr()), .init(scaled._native_ptr())
        ])
    }
    public func move_local_y(delta: Float64, scaled: Bool)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(delta._native_ptr()), .init(scaled._native_ptr())
        ])
    }
    public func translate(offset: Vector2)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(offset._native_ptr())
        ])
    }
    public func global_translate(offset: Vector2)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(offset._native_ptr())
        ])
    }
    public func apply_scale(ratio: Vector2)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(ratio._native_ptr())
        ])
    }
    public func set_global_position(position: Vector2)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(position._native_ptr())
        ])
    }
    public func get_global_position()  -> Vector2 {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func set_global_rotation(radians: Float64)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(radians._native_ptr())
        ])
    }
    public func set_global_rotation_degrees(degrees: Float64)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(degrees._native_ptr())
        ])
    }
    public func get_global_rotation()  -> Float64 {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func get_global_rotation_degrees()  -> Float64 {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func set_global_skew(radians: Float64)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(radians._native_ptr())
        ])
    }
    public func get_global_skew()  -> Float64 {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func set_global_scale(scale: Vector2)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(scale._native_ptr())
        ])
    }
    public func get_global_scale()  -> Vector2 {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            
        ])
    }
    public func set_transform(xform: Transform2D)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(xform._native_ptr())
        ])
    }
    public func set_global_transform(xform: Transform2D)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(xform._native_ptr())
        ])
    }
    public func look_at(point: Vector2)  {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(point._native_ptr())
        ])
    }
    public func get_angle_to(point: Vector2)  -> Float64 {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(point._native_ptr())
        ])
    }
    public func to_local(global_point: Vector2)  -> Vector2 {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(global_point._native_ptr())
        ])
    }
    public func to_global(local_point: Vector2)  -> Vector2 {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(local_point._native_ptr())
        ])
    }
    public func get_relative_transform_to_parent(parent: Node)  -> Transform2D {
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        _ = args.initialize(from: [
            .init(parent._native_ptr())
        ])
    }
}