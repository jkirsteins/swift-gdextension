/// MISSING GODOT DOCUMENTATION
/// 
/// 
public struct PhysicsServer2DExtensionMotionResult {
    var travel: Vector2 
    var remainder: Vector2 
    var collision_point: Vector2 
    var collision_normal: Vector2 
    var collider_velocity: Vector2 
    var collision_depth: Float64 
    var collision_safe_fraction: Float64 
    var collision_unsafe_fraction: Float64 
    var collision_local_shape: Int64 
    var collider_id: ObjectID 
    var collider: RID 
    var collider_shape: Int64 
}