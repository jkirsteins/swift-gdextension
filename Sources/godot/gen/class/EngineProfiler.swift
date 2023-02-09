import godot_native

fileprivate var __godot_name_EngineProfiler: StringName! = nil

/// Base class for creating custom profilers.
/// 
/// This class can be used to implement custom profilers that are able to interact with the engine and editor debugger.
///  
/// See [EngineDebugger] and [EditorDebuggerPlugin] for more information.
open class EngineProfiler : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_EngineProfiler }

    static var _method__toggle_0: StringName! = nil
    static var _method__add_frame_0: StringName! = nil
    static var _method__tick_0: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_EngineProfiler == nil)
        __godot_name_EngineProfiler = StringName(from: "EngineProfiler")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
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
            fatalError("Not implemented: virtual default results")
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
            fatalError("Not implemented: virtual default results")
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
            fatalError("Not implemented: virtual default results")
        }
        }
        }
        }
    }
}