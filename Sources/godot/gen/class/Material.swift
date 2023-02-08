import godot_native

fileprivate var __godot_name_Material: StringName! = nil

/// Abstract base [Resource] for coloring and shading geometry.
/// 
/// Material is a base [Resource] used for coloring and shading geometry. All materials inherit from it and almost all [VisualInstance3D] derived nodes carry a Material. A few flags and parameters are shared between all material types and are configured here.
open class Material : Resource {

    

    public override class var __godot_name: StringName { __godot_name_Material }

    static var _method__get_shader_rid_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_shader_mode_0: GDExtensionMethodBindPtr! = nil
    static var _method__can_do_next_pass_0: GDExtensionMethodBindPtr! = nil
    static var _method__can_use_render_priority_0: GDExtensionMethodBindPtr! = nil
    static var _method_set_next_pass_2757459619: GDExtensionMethodBindPtr! = nil
    static var _method_get_next_pass_5934680: GDExtensionMethodBindPtr! = nil
    static var _method_set_render_priority_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_render_priority_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_inspect_native_shader_code_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_create_placeholder_121922552: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Material = StringName(from: "Material")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_next_pass_2757459619_name = StringName(from: "set_next_pass")
        self._method_set_next_pass_2757459619 = self.interface.pointee.classdb_get_method_bind(__godot_name_Material._native_ptr(), _method_set_next_pass_2757459619_name._native_ptr(), 2757459619)
        assert(Material._method_set_next_pass_2757459619 != nil)
        let _method_get_next_pass_5934680_name = StringName(from: "get_next_pass")
        self._method_get_next_pass_5934680 = self.interface.pointee.classdb_get_method_bind(__godot_name_Material._native_ptr(), _method_get_next_pass_5934680_name._native_ptr(), 5934680)
        assert(Material._method_get_next_pass_5934680 != nil)
        let _method_set_render_priority_1286410249_name = StringName(from: "set_render_priority")
        self._method_set_render_priority_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_Material._native_ptr(), _method_set_render_priority_1286410249_name._native_ptr(), 1286410249)
        assert(Material._method_set_render_priority_1286410249 != nil)
        let _method_get_render_priority_3905245786_name = StringName(from: "get_render_priority")
        self._method_get_render_priority_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_Material._native_ptr(), _method_get_render_priority_3905245786_name._native_ptr(), 3905245786)
        assert(Material._method_get_render_priority_3905245786 != nil)
        let _method_inspect_native_shader_code_3218959716_name = StringName(from: "inspect_native_shader_code")
        self._method_inspect_native_shader_code_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Material._native_ptr(), _method_inspect_native_shader_code_3218959716_name._native_ptr(), 3218959716)
        assert(Material._method_inspect_native_shader_code_3218959716 != nil)
        let _method_create_placeholder_121922552_name = StringName(from: "create_placeholder")
        self._method_create_placeholder_121922552 = self.interface.pointee.classdb_get_method_bind(__godot_name_Material._native_ptr(), _method_create_placeholder_121922552_name._native_ptr(), 121922552)
        assert(Material._method_create_placeholder_121922552 != nil)
    }

    public func _get_shader_rid() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_shader_rid_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func _get_shader_mode() -> Shader.Mode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_shader_mode_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Shader.Mode(godot: __resPtr.pointee)
    }
    public func _can_do_next_pass() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__can_do_next_pass_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func _can_use_render_priority() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__can_use_render_priority_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_next_pass(next_pass: Material)  {
        let next_pass_native = next_pass._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(next_pass_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_next_pass_2757459619,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_next_pass() -> Material {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_next_pass_5934680,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Material(godot: __resPtr.pointee)
    }
    public func set_render_priority(priority: Int64)  {
        withUnsafePointer(to: priority) { priority_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(priority_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_render_priority_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_render_priority() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_render_priority_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func inspect_native_shader_code()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_inspect_native_shader_code_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func create_placeholder() -> Resource {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_placeholder_121922552,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Resource(godot: __resPtr.pointee)
    }
}