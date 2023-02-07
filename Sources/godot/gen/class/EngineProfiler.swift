import godot_native

fileprivate var __godot_name_EngineProfiler: StringName! = nil

/// Base class for creating custom profilers.
/// 
/// This class can be used to implement custom profilers that are able to interact with the engine and editor debugger.
///  
/// See [EngineDebugger] and [EditorDebuggerPlugin] for more information.
public class EngineProfiler : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_EngineProfiler }

    static var _method__toggle_0: GDExtensionMethodBindPtr! = nil
    static var _method__add_frame_0: GDExtensionMethodBindPtr! = nil
    static var _method__tick_0: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_EngineProfiler = StringName(from: "EngineProfiler")

        
    }

    public func _toggle(enable: UInt8, options: Array)  {
        withUnsafePointer(to: enable) { enable_native in
        let options_native = options._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native), .init(options_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__toggle_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _add_frame(data: Array)  {
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__add_frame_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _tick(frame_time: Float64, process_time: Float64, physics_time: Float64, physics_frame_time: Float64)  {
        withUnsafePointer(to: physics_frame_time) { physics_frame_time_native in
        withUnsafePointer(to: physics_time) { physics_time_native in
        withUnsafePointer(to: process_time) { process_time_native in
        withUnsafePointer(to: frame_time) { frame_time_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frame_time_native), .init(process_time_native), .init(physics_time_native), .init(physics_frame_time_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__tick_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
    }
}