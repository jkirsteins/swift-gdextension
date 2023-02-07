import godot_native

fileprivate var __godot_name_EditorInspector: StringName! = nil

/// A control used to edit properties of an object.
/// 
/// This is the control that implements property editing in the editor's Settings dialogs, the Inspector dock, etc. To get the [EditorInspector] used in the editor's Inspector dock, use [method EditorInterface.get_inspector].
///  
/// [EditorInspector] will show properties in the same order as the array returned by [method Object.get_property_list].
///  
/// If a property's name is path-like (i.e. if it contains forward slashes), [EditorInspector] will create nested sections for "directories" along the path. For example, if a property is named [code]highlighting/gdscript/node_path_color[/code], it will be shown as "Node Path Color" inside the "GDScript" section nested inside the "Highlighting" section.
///  
/// If a property has [constant PROPERTY_USAGE_GROUP] usage, it will group subsequent properties whose name starts with the property's hint string. The group ends when a property does not start with that hint string or when a new group starts. An empty group name effectively ends the current group. [EditorInspector] will create a top-level section for each group. For example, if a property with group usage is named [code]Collide With[/code] and its hint string is [code]collide_with_[/code], a subsequent [code]collide_with_area[/code] property will be shown as "Area" inside the "Collide With" section. There is also a special case: when the hint string contains the name of a property, that property is grouped too. This is mainly to help grouping properties like [code]font[/code], [code]font_color[/code] and [code]font_size[/code] (using the hint string [code]font_[/code]).
///  
/// If a property has [constant PROPERTY_USAGE_SUBGROUP] usage, a subgroup will be created in the same way as a group, and a second-level section will be created for each subgroup.
///  
/// [b]Note:[/b] Unlike sections created from path-like property names, [EditorInspector] won't capitalize the name for sections created from groups. So properties with group usage usually use capitalized names instead of snake_cased names.
public class EditorInspector : ScrollContainer {

    

    public override class var __godot_name: StringName { __godot_name_EditorInspector }

    static var _method_get_selected_path_201670096: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_EditorInspector = StringName(from: "EditorInspector")

        let _method_get_selected_path_201670096_name = StringName(from: "get_selected_path")
        self._method_get_selected_path_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_selected_path_201670096_name._native_ptr(), 201670096)
        assert(EditorInspector._method_get_selected_path_201670096 != nil)
    }

    public func get_selected_path() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_selected_path_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
}