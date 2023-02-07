import godot_native

fileprivate var __godot_name_Theme: StringName! = nil

/// Theme resource for styling/skinning [Control]s and [Window]s.
/// 
/// A theme resource is used for styling/skinning [Control] and [Window] nodes. While individual controls can be styled using their local theme overrides (see [method Control.add_theme_color_override]), theme resources allow you to store and apply the same settings between all controls sharing the same type (e.g. style all [Button]s the same). One theme resource can be used for the entire project, but you can also set a separate theme resource to a branch of control nodes. A theme resources assigned to a control node applies to the control itself, as well as all of its direct and indirect children (as long as a chain of controls is uninterrupted).
///  
/// Use [member ProjectSettings.gui/theme/custom] to set up a project-scope theme that will be available to every control in your project.
///  
/// Use [member Control.theme] of any control node to set up a theme that will be available to that control and all of its direct and indirect children.
public class Theme : Resource {

    public enum DataType : Int32 {
        case DATA_TYPE_COLOR = 0
        case DATA_TYPE_CONSTANT = 1
        case DATA_TYPE_FONT = 2
        case DATA_TYPE_FONT_SIZE = 3
        case DATA_TYPE_ICON = 4
        case DATA_TYPE_STYLEBOX = 5
        case DATA_TYPE_MAX = 6
    }

    public override class var __godot_name: StringName { __godot_name_Theme }

    static var _method_set_icon_2188371082: GDExtensionMethodBindPtr! = nil
    static var _method_get_icon_934555193: GDExtensionMethodBindPtr! = nil
    static var _method_has_icon_471820014: GDExtensionMethodBindPtr! = nil
    static var _method_rename_icon_642128662: GDExtensionMethodBindPtr! = nil
    static var _method_clear_icon_3740211285: GDExtensionMethodBindPtr! = nil
    static var _method_get_icon_list_4291131558: GDExtensionMethodBindPtr! = nil
    static var _method_get_icon_type_list_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_set_stylebox_2075907568: GDExtensionMethodBindPtr! = nil
    static var _method_get_stylebox_3405608165: GDExtensionMethodBindPtr! = nil
    static var _method_has_stylebox_471820014: GDExtensionMethodBindPtr! = nil
    static var _method_rename_stylebox_642128662: GDExtensionMethodBindPtr! = nil
    static var _method_clear_stylebox_3740211285: GDExtensionMethodBindPtr! = nil
    static var _method_get_stylebox_list_4291131558: GDExtensionMethodBindPtr! = nil
    static var _method_get_stylebox_type_list_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_set_font_177292320: GDExtensionMethodBindPtr! = nil
    static var _method_get_font_3445063586: GDExtensionMethodBindPtr! = nil
    static var _method_has_font_471820014: GDExtensionMethodBindPtr! = nil
    static var _method_rename_font_642128662: GDExtensionMethodBindPtr! = nil
    static var _method_clear_font_3740211285: GDExtensionMethodBindPtr! = nil
    static var _method_get_font_list_4291131558: GDExtensionMethodBindPtr! = nil
    static var _method_get_font_type_list_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_set_font_size_281601298: GDExtensionMethodBindPtr! = nil
    static var _method_get_font_size_2419549490: GDExtensionMethodBindPtr! = nil
    static var _method_has_font_size_471820014: GDExtensionMethodBindPtr! = nil
    static var _method_rename_font_size_642128662: GDExtensionMethodBindPtr! = nil
    static var _method_clear_font_size_3740211285: GDExtensionMethodBindPtr! = nil
    static var _method_get_font_size_list_4291131558: GDExtensionMethodBindPtr! = nil
    static var _method_get_font_size_type_list_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_set_color_4111215154: GDExtensionMethodBindPtr! = nil
    static var _method_get_color_2015923404: GDExtensionMethodBindPtr! = nil
    static var _method_has_color_471820014: GDExtensionMethodBindPtr! = nil
    static var _method_rename_color_642128662: GDExtensionMethodBindPtr! = nil
    static var _method_clear_color_3740211285: GDExtensionMethodBindPtr! = nil
    static var _method_get_color_list_4291131558: GDExtensionMethodBindPtr! = nil
    static var _method_get_color_type_list_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_set_constant_281601298: GDExtensionMethodBindPtr! = nil
    static var _method_get_constant_2419549490: GDExtensionMethodBindPtr! = nil
    static var _method_has_constant_471820014: GDExtensionMethodBindPtr! = nil
    static var _method_rename_constant_642128662: GDExtensionMethodBindPtr! = nil
    static var _method_clear_constant_3740211285: GDExtensionMethodBindPtr! = nil
    static var _method_get_constant_list_4291131558: GDExtensionMethodBindPtr! = nil
    static var _method_get_constant_type_list_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_set_default_base_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_default_base_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_has_default_base_scale_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_default_font_1262170328: GDExtensionMethodBindPtr! = nil
    static var _method_get_default_font_3229501585: GDExtensionMethodBindPtr! = nil
    static var _method_has_default_font_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_default_font_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_default_font_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_has_default_font_size_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_theme_item_2492983623: GDExtensionMethodBindPtr! = nil
    static var _method_get_theme_item_2191024021: GDExtensionMethodBindPtr! = nil
    static var _method_has_theme_item_1739311056: GDExtensionMethodBindPtr! = nil
    static var _method_rename_theme_item_3900867553: GDExtensionMethodBindPtr! = nil
    static var _method_clear_theme_item_2965505587: GDExtensionMethodBindPtr! = nil
    static var _method_get_theme_item_list_3726716710: GDExtensionMethodBindPtr! = nil
    static var _method_get_theme_item_type_list_1316004935: GDExtensionMethodBindPtr! = nil
    static var _method_set_type_variation_3740211285: GDExtensionMethodBindPtr! = nil
    static var _method_is_type_variation_471820014: GDExtensionMethodBindPtr! = nil
    static var _method_clear_type_variation_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_type_variation_base_1965194235: GDExtensionMethodBindPtr! = nil
    static var _method_get_type_variation_list_1761182771: GDExtensionMethodBindPtr! = nil
    static var _method_add_type_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_remove_type_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_type_list_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_merge_with_2326690814: GDExtensionMethodBindPtr! = nil
    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Theme = StringName(from: "Theme")

        let _method_set_icon_2188371082_name = StringName(from: "set_icon")
        self._method_set_icon_2188371082 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_icon_2188371082_name._native_ptr(), 2188371082)
        assert(Theme._method_set_icon_2188371082 != nil)
        let _method_get_icon_934555193_name = StringName(from: "get_icon")
        self._method_get_icon_934555193 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_icon_934555193_name._native_ptr(), 934555193)
        assert(Theme._method_get_icon_934555193 != nil)
        let _method_has_icon_471820014_name = StringName(from: "has_icon")
        self._method_has_icon_471820014 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_icon_471820014_name._native_ptr(), 471820014)
        assert(Theme._method_has_icon_471820014 != nil)
        let _method_rename_icon_642128662_name = StringName(from: "rename_icon")
        self._method_rename_icon_642128662 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rename_icon_642128662_name._native_ptr(), 642128662)
        assert(Theme._method_rename_icon_642128662 != nil)
        let _method_clear_icon_3740211285_name = StringName(from: "clear_icon")
        self._method_clear_icon_3740211285 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_icon_3740211285_name._native_ptr(), 3740211285)
        assert(Theme._method_clear_icon_3740211285 != nil)
        let _method_get_icon_list_4291131558_name = StringName(from: "get_icon_list")
        self._method_get_icon_list_4291131558 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_icon_list_4291131558_name._native_ptr(), 4291131558)
        assert(Theme._method_get_icon_list_4291131558 != nil)
        let _method_get_icon_type_list_1139954409_name = StringName(from: "get_icon_type_list")
        self._method_get_icon_type_list_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_icon_type_list_1139954409_name._native_ptr(), 1139954409)
        assert(Theme._method_get_icon_type_list_1139954409 != nil)
        let _method_set_stylebox_2075907568_name = StringName(from: "set_stylebox")
        self._method_set_stylebox_2075907568 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_stylebox_2075907568_name._native_ptr(), 2075907568)
        assert(Theme._method_set_stylebox_2075907568 != nil)
        let _method_get_stylebox_3405608165_name = StringName(from: "get_stylebox")
        self._method_get_stylebox_3405608165 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_stylebox_3405608165_name._native_ptr(), 3405608165)
        assert(Theme._method_get_stylebox_3405608165 != nil)
        let _method_has_stylebox_471820014_name = StringName(from: "has_stylebox")
        self._method_has_stylebox_471820014 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_stylebox_471820014_name._native_ptr(), 471820014)
        assert(Theme._method_has_stylebox_471820014 != nil)
        let _method_rename_stylebox_642128662_name = StringName(from: "rename_stylebox")
        self._method_rename_stylebox_642128662 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rename_stylebox_642128662_name._native_ptr(), 642128662)
        assert(Theme._method_rename_stylebox_642128662 != nil)
        let _method_clear_stylebox_3740211285_name = StringName(from: "clear_stylebox")
        self._method_clear_stylebox_3740211285 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_stylebox_3740211285_name._native_ptr(), 3740211285)
        assert(Theme._method_clear_stylebox_3740211285 != nil)
        let _method_get_stylebox_list_4291131558_name = StringName(from: "get_stylebox_list")
        self._method_get_stylebox_list_4291131558 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_stylebox_list_4291131558_name._native_ptr(), 4291131558)
        assert(Theme._method_get_stylebox_list_4291131558 != nil)
        let _method_get_stylebox_type_list_1139954409_name = StringName(from: "get_stylebox_type_list")
        self._method_get_stylebox_type_list_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_stylebox_type_list_1139954409_name._native_ptr(), 1139954409)
        assert(Theme._method_get_stylebox_type_list_1139954409 != nil)
        let _method_set_font_177292320_name = StringName(from: "set_font")
        self._method_set_font_177292320 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_font_177292320_name._native_ptr(), 177292320)
        assert(Theme._method_set_font_177292320 != nil)
        let _method_get_font_3445063586_name = StringName(from: "get_font")
        self._method_get_font_3445063586 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_font_3445063586_name._native_ptr(), 3445063586)
        assert(Theme._method_get_font_3445063586 != nil)
        let _method_has_font_471820014_name = StringName(from: "has_font")
        self._method_has_font_471820014 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_font_471820014_name._native_ptr(), 471820014)
        assert(Theme._method_has_font_471820014 != nil)
        let _method_rename_font_642128662_name = StringName(from: "rename_font")
        self._method_rename_font_642128662 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rename_font_642128662_name._native_ptr(), 642128662)
        assert(Theme._method_rename_font_642128662 != nil)
        let _method_clear_font_3740211285_name = StringName(from: "clear_font")
        self._method_clear_font_3740211285 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_font_3740211285_name._native_ptr(), 3740211285)
        assert(Theme._method_clear_font_3740211285 != nil)
        let _method_get_font_list_4291131558_name = StringName(from: "get_font_list")
        self._method_get_font_list_4291131558 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_font_list_4291131558_name._native_ptr(), 4291131558)
        assert(Theme._method_get_font_list_4291131558 != nil)
        let _method_get_font_type_list_1139954409_name = StringName(from: "get_font_type_list")
        self._method_get_font_type_list_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_font_type_list_1139954409_name._native_ptr(), 1139954409)
        assert(Theme._method_get_font_type_list_1139954409 != nil)
        let _method_set_font_size_281601298_name = StringName(from: "set_font_size")
        self._method_set_font_size_281601298 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_font_size_281601298_name._native_ptr(), 281601298)
        assert(Theme._method_set_font_size_281601298 != nil)
        let _method_get_font_size_2419549490_name = StringName(from: "get_font_size")
        self._method_get_font_size_2419549490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_font_size_2419549490_name._native_ptr(), 2419549490)
        assert(Theme._method_get_font_size_2419549490 != nil)
        let _method_has_font_size_471820014_name = StringName(from: "has_font_size")
        self._method_has_font_size_471820014 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_font_size_471820014_name._native_ptr(), 471820014)
        assert(Theme._method_has_font_size_471820014 != nil)
        let _method_rename_font_size_642128662_name = StringName(from: "rename_font_size")
        self._method_rename_font_size_642128662 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rename_font_size_642128662_name._native_ptr(), 642128662)
        assert(Theme._method_rename_font_size_642128662 != nil)
        let _method_clear_font_size_3740211285_name = StringName(from: "clear_font_size")
        self._method_clear_font_size_3740211285 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_font_size_3740211285_name._native_ptr(), 3740211285)
        assert(Theme._method_clear_font_size_3740211285 != nil)
        let _method_get_font_size_list_4291131558_name = StringName(from: "get_font_size_list")
        self._method_get_font_size_list_4291131558 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_font_size_list_4291131558_name._native_ptr(), 4291131558)
        assert(Theme._method_get_font_size_list_4291131558 != nil)
        let _method_get_font_size_type_list_1139954409_name = StringName(from: "get_font_size_type_list")
        self._method_get_font_size_type_list_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_font_size_type_list_1139954409_name._native_ptr(), 1139954409)
        assert(Theme._method_get_font_size_type_list_1139954409 != nil)
        let _method_set_color_4111215154_name = StringName(from: "set_color")
        self._method_set_color_4111215154 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_color_4111215154_name._native_ptr(), 4111215154)
        assert(Theme._method_set_color_4111215154 != nil)
        let _method_get_color_2015923404_name = StringName(from: "get_color")
        self._method_get_color_2015923404 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_color_2015923404_name._native_ptr(), 2015923404)
        assert(Theme._method_get_color_2015923404 != nil)
        let _method_has_color_471820014_name = StringName(from: "has_color")
        self._method_has_color_471820014 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_color_471820014_name._native_ptr(), 471820014)
        assert(Theme._method_has_color_471820014 != nil)
        let _method_rename_color_642128662_name = StringName(from: "rename_color")
        self._method_rename_color_642128662 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rename_color_642128662_name._native_ptr(), 642128662)
        assert(Theme._method_rename_color_642128662 != nil)
        let _method_clear_color_3740211285_name = StringName(from: "clear_color")
        self._method_clear_color_3740211285 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_color_3740211285_name._native_ptr(), 3740211285)
        assert(Theme._method_clear_color_3740211285 != nil)
        let _method_get_color_list_4291131558_name = StringName(from: "get_color_list")
        self._method_get_color_list_4291131558 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_color_list_4291131558_name._native_ptr(), 4291131558)
        assert(Theme._method_get_color_list_4291131558 != nil)
        let _method_get_color_type_list_1139954409_name = StringName(from: "get_color_type_list")
        self._method_get_color_type_list_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_color_type_list_1139954409_name._native_ptr(), 1139954409)
        assert(Theme._method_get_color_type_list_1139954409 != nil)
        let _method_set_constant_281601298_name = StringName(from: "set_constant")
        self._method_set_constant_281601298 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_constant_281601298_name._native_ptr(), 281601298)
        assert(Theme._method_set_constant_281601298 != nil)
        let _method_get_constant_2419549490_name = StringName(from: "get_constant")
        self._method_get_constant_2419549490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_constant_2419549490_name._native_ptr(), 2419549490)
        assert(Theme._method_get_constant_2419549490 != nil)
        let _method_has_constant_471820014_name = StringName(from: "has_constant")
        self._method_has_constant_471820014 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_constant_471820014_name._native_ptr(), 471820014)
        assert(Theme._method_has_constant_471820014 != nil)
        let _method_rename_constant_642128662_name = StringName(from: "rename_constant")
        self._method_rename_constant_642128662 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rename_constant_642128662_name._native_ptr(), 642128662)
        assert(Theme._method_rename_constant_642128662 != nil)
        let _method_clear_constant_3740211285_name = StringName(from: "clear_constant")
        self._method_clear_constant_3740211285 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_constant_3740211285_name._native_ptr(), 3740211285)
        assert(Theme._method_clear_constant_3740211285 != nil)
        let _method_get_constant_list_4291131558_name = StringName(from: "get_constant_list")
        self._method_get_constant_list_4291131558 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_constant_list_4291131558_name._native_ptr(), 4291131558)
        assert(Theme._method_get_constant_list_4291131558 != nil)
        let _method_get_constant_type_list_1139954409_name = StringName(from: "get_constant_type_list")
        self._method_get_constant_type_list_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_constant_type_list_1139954409_name._native_ptr(), 1139954409)
        assert(Theme._method_get_constant_type_list_1139954409 != nil)
        let _method_set_default_base_scale_373806689_name = StringName(from: "set_default_base_scale")
        self._method_set_default_base_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_default_base_scale_373806689_name._native_ptr(), 373806689)
        assert(Theme._method_set_default_base_scale_373806689 != nil)
        let _method_get_default_base_scale_1740695150_name = StringName(from: "get_default_base_scale")
        self._method_get_default_base_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_default_base_scale_1740695150_name._native_ptr(), 1740695150)
        assert(Theme._method_get_default_base_scale_1740695150 != nil)
        let _method_has_default_base_scale_36873697_name = StringName(from: "has_default_base_scale")
        self._method_has_default_base_scale_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_default_base_scale_36873697_name._native_ptr(), 36873697)
        assert(Theme._method_has_default_base_scale_36873697 != nil)
        let _method_set_default_font_1262170328_name = StringName(from: "set_default_font")
        self._method_set_default_font_1262170328 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_default_font_1262170328_name._native_ptr(), 1262170328)
        assert(Theme._method_set_default_font_1262170328 != nil)
        let _method_get_default_font_3229501585_name = StringName(from: "get_default_font")
        self._method_get_default_font_3229501585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_default_font_3229501585_name._native_ptr(), 3229501585)
        assert(Theme._method_get_default_font_3229501585 != nil)
        let _method_has_default_font_36873697_name = StringName(from: "has_default_font")
        self._method_has_default_font_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_default_font_36873697_name._native_ptr(), 36873697)
        assert(Theme._method_has_default_font_36873697 != nil)
        let _method_set_default_font_size_1286410249_name = StringName(from: "set_default_font_size")
        self._method_set_default_font_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_default_font_size_1286410249_name._native_ptr(), 1286410249)
        assert(Theme._method_set_default_font_size_1286410249 != nil)
        let _method_get_default_font_size_3905245786_name = StringName(from: "get_default_font_size")
        self._method_get_default_font_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_default_font_size_3905245786_name._native_ptr(), 3905245786)
        assert(Theme._method_get_default_font_size_3905245786 != nil)
        let _method_has_default_font_size_36873697_name = StringName(from: "has_default_font_size")
        self._method_has_default_font_size_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_default_font_size_36873697_name._native_ptr(), 36873697)
        assert(Theme._method_has_default_font_size_36873697 != nil)
        let _method_set_theme_item_2492983623_name = StringName(from: "set_theme_item")
        self._method_set_theme_item_2492983623 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_theme_item_2492983623_name._native_ptr(), 2492983623)
        assert(Theme._method_set_theme_item_2492983623 != nil)
        let _method_get_theme_item_2191024021_name = StringName(from: "get_theme_item")
        self._method_get_theme_item_2191024021 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_theme_item_2191024021_name._native_ptr(), 2191024021)
        assert(Theme._method_get_theme_item_2191024021 != nil)
        let _method_has_theme_item_1739311056_name = StringName(from: "has_theme_item")
        self._method_has_theme_item_1739311056 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_theme_item_1739311056_name._native_ptr(), 1739311056)
        assert(Theme._method_has_theme_item_1739311056 != nil)
        let _method_rename_theme_item_3900867553_name = StringName(from: "rename_theme_item")
        self._method_rename_theme_item_3900867553 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rename_theme_item_3900867553_name._native_ptr(), 3900867553)
        assert(Theme._method_rename_theme_item_3900867553 != nil)
        let _method_clear_theme_item_2965505587_name = StringName(from: "clear_theme_item")
        self._method_clear_theme_item_2965505587 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_theme_item_2965505587_name._native_ptr(), 2965505587)
        assert(Theme._method_clear_theme_item_2965505587 != nil)
        let _method_get_theme_item_list_3726716710_name = StringName(from: "get_theme_item_list")
        self._method_get_theme_item_list_3726716710 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_theme_item_list_3726716710_name._native_ptr(), 3726716710)
        assert(Theme._method_get_theme_item_list_3726716710 != nil)
        let _method_get_theme_item_type_list_1316004935_name = StringName(from: "get_theme_item_type_list")
        self._method_get_theme_item_type_list_1316004935 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_theme_item_type_list_1316004935_name._native_ptr(), 1316004935)
        assert(Theme._method_get_theme_item_type_list_1316004935 != nil)
        let _method_set_type_variation_3740211285_name = StringName(from: "set_type_variation")
        self._method_set_type_variation_3740211285 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_type_variation_3740211285_name._native_ptr(), 3740211285)
        assert(Theme._method_set_type_variation_3740211285 != nil)
        let _method_is_type_variation_471820014_name = StringName(from: "is_type_variation")
        self._method_is_type_variation_471820014 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_type_variation_471820014_name._native_ptr(), 471820014)
        assert(Theme._method_is_type_variation_471820014 != nil)
        let _method_clear_type_variation_3304788590_name = StringName(from: "clear_type_variation")
        self._method_clear_type_variation_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_type_variation_3304788590_name._native_ptr(), 3304788590)
        assert(Theme._method_clear_type_variation_3304788590 != nil)
        let _method_get_type_variation_base_1965194235_name = StringName(from: "get_type_variation_base")
        self._method_get_type_variation_base_1965194235 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_type_variation_base_1965194235_name._native_ptr(), 1965194235)
        assert(Theme._method_get_type_variation_base_1965194235 != nil)
        let _method_get_type_variation_list_1761182771_name = StringName(from: "get_type_variation_list")
        self._method_get_type_variation_list_1761182771 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_type_variation_list_1761182771_name._native_ptr(), 1761182771)
        assert(Theme._method_get_type_variation_list_1761182771 != nil)
        let _method_add_type_3304788590_name = StringName(from: "add_type")
        self._method_add_type_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_type_3304788590_name._native_ptr(), 3304788590)
        assert(Theme._method_add_type_3304788590 != nil)
        let _method_remove_type_3304788590_name = StringName(from: "remove_type")
        self._method_remove_type_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_type_3304788590_name._native_ptr(), 3304788590)
        assert(Theme._method_remove_type_3304788590 != nil)
        let _method_get_type_list_1139954409_name = StringName(from: "get_type_list")
        self._method_get_type_list_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_type_list_1139954409_name._native_ptr(), 1139954409)
        assert(Theme._method_get_type_list_1139954409 != nil)
        let _method_merge_with_2326690814_name = StringName(from: "merge_with")
        self._method_merge_with_2326690814 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_merge_with_2326690814_name._native_ptr(), 2326690814)
        assert(Theme._method_merge_with_2326690814 != nil)
        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(Theme._method_clear_3218959716 != nil)
    }

    public func set_icon(name: StringName, theme_type: StringName, texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native), .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_icon_2188371082,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_icon(name: StringName, theme_type: StringName) -> Texture2D {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_icon_934555193,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
    }
    public func has_icon(name: StringName, theme_type: StringName) -> UInt8 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_icon_471820014,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func rename_icon(old_name: StringName, name: StringName, theme_type: StringName)  {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let old_name_native = old_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(old_name_native), .init(name_native), .init(theme_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rename_icon_642128662,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear_icon(name: StringName, theme_type: StringName)  {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_icon_3740211285,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_icon_list(theme_type: String) -> PackedStringArray {
        withUnsafePointer(to: theme_type) { theme_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_icon_list_4291131558,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
        }
    }
    public func get_icon_type_list() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_icon_type_list_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func set_stylebox(name: StringName, theme_type: StringName, texture: StyleBox)  {
        let texture_native = texture._native_ptr()
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native), .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stylebox_2075907568,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_stylebox(name: StringName, theme_type: StringName) -> StyleBox {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stylebox_3405608165,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StyleBox(from: __resPtr.pointee)
    }
    public func has_stylebox(name: StringName, theme_type: StringName) -> UInt8 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_stylebox_471820014,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func rename_stylebox(old_name: StringName, name: StringName, theme_type: StringName)  {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let old_name_native = old_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(old_name_native), .init(name_native), .init(theme_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rename_stylebox_642128662,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear_stylebox(name: StringName, theme_type: StringName)  {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_stylebox_3740211285,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_stylebox_list(theme_type: String) -> PackedStringArray {
        withUnsafePointer(to: theme_type) { theme_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stylebox_list_4291131558,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
        }
    }
    public func get_stylebox_type_list() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stylebox_type_list_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func set_font(name: StringName, theme_type: StringName, font: Font)  {
        let font_native = font._native_ptr()
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native), .init(font_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_font_177292320,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_font(name: StringName, theme_type: StringName) -> Font {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_font_3445063586,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Font(from: __resPtr.pointee)
    }
    public func has_font(name: StringName, theme_type: StringName) -> UInt8 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_font_471820014,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func rename_font(old_name: StringName, name: StringName, theme_type: StringName)  {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let old_name_native = old_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(old_name_native), .init(name_native), .init(theme_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rename_font_642128662,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear_font(name: StringName, theme_type: StringName)  {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_font_3740211285,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_font_list(theme_type: String) -> PackedStringArray {
        withUnsafePointer(to: theme_type) { theme_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_font_list_4291131558,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
        }
    }
    public func get_font_type_list() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_font_type_list_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func set_font_size(name: StringName, theme_type: StringName, font_size: Int64)  {
        withUnsafePointer(to: font_size) { font_size_native in
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native), .init(font_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_font_size_281601298,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_font_size(name: StringName, theme_type: StringName) -> Int64 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_font_size_2419549490,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func has_font_size(name: StringName, theme_type: StringName) -> UInt8 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_font_size_471820014,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func rename_font_size(old_name: StringName, name: StringName, theme_type: StringName)  {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let old_name_native = old_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(old_name_native), .init(name_native), .init(theme_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rename_font_size_642128662,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear_font_size(name: StringName, theme_type: StringName)  {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_font_size_3740211285,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_font_size_list(theme_type: String) -> PackedStringArray {
        withUnsafePointer(to: theme_type) { theme_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_font_size_list_4291131558,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
        }
    }
    public func get_font_size_type_list() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_font_size_type_list_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func set_color(name: StringName, theme_type: StringName, color: Color)  {
        let color_native = color._native_ptr()
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_color_4111215154,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_color(name: StringName, theme_type: StringName) -> Color {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_color_2015923404,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func has_color(name: StringName, theme_type: StringName) -> UInt8 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_color_471820014,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func rename_color(old_name: StringName, name: StringName, theme_type: StringName)  {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let old_name_native = old_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(old_name_native), .init(name_native), .init(theme_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rename_color_642128662,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear_color(name: StringName, theme_type: StringName)  {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_color_3740211285,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_color_list(theme_type: String) -> PackedStringArray {
        withUnsafePointer(to: theme_type) { theme_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_color_list_4291131558,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
        }
    }
    public func get_color_type_list() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_color_type_list_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func set_constant(name: StringName, theme_type: StringName, constant: Int64)  {
        withUnsafePointer(to: constant) { constant_native in
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native), .init(constant_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_constant_281601298,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_constant(name: StringName, theme_type: StringName) -> Int64 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_constant_2419549490,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func has_constant(name: StringName, theme_type: StringName) -> UInt8 {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_constant_471820014,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func rename_constant(old_name: StringName, name: StringName, theme_type: StringName)  {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let old_name_native = old_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(old_name_native), .init(name_native), .init(theme_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rename_constant_642128662,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear_constant(name: StringName, theme_type: StringName)  {
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(theme_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_constant_3740211285,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_constant_list(theme_type: String) -> PackedStringArray {
        withUnsafePointer(to: theme_type) { theme_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_constant_list_4291131558,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
        }
    }
    public func get_constant_type_list() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_constant_type_list_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func set_default_base_scale(base_scale: Float64)  {
        withUnsafePointer(to: base_scale) { base_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(base_scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_default_base_scale_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_default_base_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_default_base_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func has_default_base_scale() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_default_base_scale_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_default_font(font: Font)  {
        let font_native = font._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_default_font_1262170328,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_default_font() -> Font {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_default_font_3229501585,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Font(from: __resPtr.pointee)
    }
    public func has_default_font() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_default_font_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_default_font_size(font_size: Int64)  {
        withUnsafePointer(to: font_size) { font_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_default_font_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_default_font_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_default_font_size_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func has_default_font_size() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_default_font_size_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_theme_item(data_type: Theme.DataType, name: StringName, theme_type: StringName, value: Variant)  {
        withUnsafePointer(to: data_type.rawValue) { data_type_native in
        let value_native = value._native_ptr()
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_type_native), .init(name_native), .init(theme_type_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_theme_item_2492983623,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_theme_item(data_type: Theme.DataType, name: StringName, theme_type: StringName) -> Variant {
        withUnsafePointer(to: data_type.rawValue) { data_type_native in
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_type_native), .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_theme_item_2191024021,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
        }
    }
    public func has_theme_item(data_type: Theme.DataType, name: StringName, theme_type: StringName) -> UInt8 {
        withUnsafePointer(to: data_type.rawValue) { data_type_native in
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_type_native), .init(name_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_theme_item_1739311056,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func rename_theme_item(data_type: Theme.DataType, old_name: StringName, name: StringName, theme_type: StringName)  {
        withUnsafePointer(to: data_type.rawValue) { data_type_native in
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let old_name_native = old_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_type_native), .init(old_name_native), .init(name_native), .init(theme_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rename_theme_item_3900867553,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func clear_theme_item(data_type: Theme.DataType, name: StringName, theme_type: StringName)  {
        withUnsafePointer(to: data_type.rawValue) { data_type_native in
        let theme_type_native = theme_type._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_type_native), .init(name_native), .init(theme_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_theme_item_2965505587,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_theme_item_list(data_type: Theme.DataType, theme_type: String) -> PackedStringArray {
        withUnsafePointer(to: theme_type) { theme_type_native in
        withUnsafePointer(to: data_type.rawValue) { data_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_type_native), .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_theme_item_list_3726716710,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
        }
        }
    }
    public func get_theme_item_type_list(data_type: Theme.DataType) -> PackedStringArray {
        withUnsafePointer(to: data_type.rawValue) { data_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_theme_item_type_list_1316004935,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
        }
    }
    public func set_type_variation(theme_type: StringName, base_type: StringName)  {
        let base_type_native = base_type._native_ptr()
        let theme_type_native = theme_type._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(theme_type_native), .init(base_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_type_variation_3740211285,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func is_type_variation(theme_type: StringName, base_type: StringName) -> UInt8 {
        let base_type_native = base_type._native_ptr()
        let theme_type_native = theme_type._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(theme_type_native), .init(base_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_type_variation_471820014,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func clear_type_variation(theme_type: StringName)  {
        let theme_type_native = theme_type._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(theme_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_type_variation_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_type_variation_base(theme_type: StringName) -> StringName {
        let theme_type_native = theme_type._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(theme_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_type_variation_base_1965194235,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
    }
    public func get_type_variation_list(base_type: StringName) -> PackedStringArray {
        let base_type_native = base_type._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(base_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_type_variation_list_1761182771,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func add_type(theme_type: StringName)  {
        let theme_type_native = theme_type._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(theme_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_type_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_type(theme_type: StringName)  {
        let theme_type_native = theme_type._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(theme_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_type_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_type_list() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_type_list_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func merge_with(other: Theme)  {
        let other_native = other._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(other_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_merge_with_2326690814,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}