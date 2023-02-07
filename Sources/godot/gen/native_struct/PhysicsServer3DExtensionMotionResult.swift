/// MISSING GODOT DOCUMENTATION
/// 
/// 
public struct PhysicsServer3DExtensionMotionResult {
    var travel: Vector3 
    var remainder: Vector3 
    var collision_safe_fraction: Float64 
    var collision_unsafe_fraction: Float64 
    var collisions: UnsafeBufferPointer<PhysicsServer3DExtensionMotionCollision>
    var collision_count: Int64 
}