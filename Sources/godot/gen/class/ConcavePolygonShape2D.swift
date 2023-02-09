import godot_native

fileprivate var __godot_name_ConcavePolygonShape2D: StringName! = nil

/// Concave polygon shape resource for 2D physics.
/// 
/// 2D concave polygon shape to be added as a [i]direct[/i] child of a [PhysicsBody2D] or [Area2D] using a [CollisionShape2D] node. It is made out of segments and is optimal for complex polygonal concave collisions. However, it is not advised to use for [RigidBody2D] nodes. A CollisionPolygon2D in convex decomposition mode (solids) or several convex objects are advised for that instead. Otherwise, a concave polygon 2D shape is better for static collisions.
///  
/// The main difference between a [ConvexPolygonShape2D] and a [ConcavePolygonShape2D] is that a concave polygon assumes it is concave and uses a more complex method of collision detection, and a convex one forces itself to be convex to speed up collision detection.
///  
/// [b]Performance:[/b] Due to its complexity, [ConcavePolygonShape2D] is the slowest collision shape to check collisions against. Its use should generally be limited to level geometry. For convex geometry, using [ConvexPolygonShape2D] will perform better. For dynamic physics bodies that need concave collision, several [ConvexPolygonShape2D]s can be used to represent its collision by using convex decomposition; see [ConvexPolygonShape2D]'s documentation for instructions. However, consider using primitive collision shapes such as [CircleShape2D] or [RectangleShape2D] first.
///  
/// [b]Warning:[/b] Using this shape for an [Area2D] (via a [CollisionShape2D] node) may give unexpected results: the area will only detect collisions with the segments in the [ConcavePolygonShape2D] (and not with any "inside" of the shape, for example).
open class ConcavePolygonShape2D : Shape2D {

    

    public override class var __godot_name: StringName { __godot_name_ConcavePolygonShape2D }

    static var _method_set_segments_1509147220: StringName! = nil
    static var _method_get_segments_2961356807: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ConcavePolygonShape2D == nil)
        __godot_name_ConcavePolygonShape2D = StringName(from: "ConcavePolygonShape2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_segments_1509147220 = StringName(from: "set_segments")
        assert(self._method_set_segments_1509147220 != nil)
        self._method_get_segments_2961356807 = StringName(from: "get_segments")
        assert(self._method_get_segments_2961356807 != nil)
    }

    public func set_segments(segments: PackedVector2Array)  {
        let segments_native = segments._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(segments_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_segments_1509147220._native_ptr(),
                    1509147220)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_segments() -> PackedVector2Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_segments_2961356807._native_ptr(),
                    2961356807)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(godot: __resPtr.pointee)
    }
}