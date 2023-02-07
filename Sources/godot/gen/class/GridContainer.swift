import godot_native

fileprivate var __godot_name_GridContainer: StringName! = nil

/// Grid container used to arrange Control-derived children in a grid like layout.
/// 
/// GridContainer will arrange its Control-derived children in a grid like structure, the grid columns are specified using the [member columns] property and the number of rows will be equal to the number of children in the container divided by the number of columns. For example, if the container has 5 children, and 2 columns, there will be 3 rows in the container.
///  
/// Notice that grid layout will preserve the columns and rows for every size of the container, and that empty columns will be expanded automatically.
///  
/// [b]Note:[/b] GridContainer only works with child nodes inheriting from Control. It won't rearrange child nodes inheriting from Node2D.
public class GridContainer : Container {

    

    public override class var __godot_name: StringName { __godot_name_GridContainer }

    static var _method_set_columns_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_columns_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GridContainer = StringName(from: "GridContainer")

        let _method_set_columns_1286410249_name = StringName(from: "set_columns")
        self._method_set_columns_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_columns_1286410249_name._native_ptr(), 1286410249)
        assert(GridContainer._method_set_columns_1286410249 != nil)
        let _method_get_columns_3905245786_name = StringName(from: "get_columns")
        self._method_get_columns_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_columns_3905245786_name._native_ptr(), 3905245786)
        assert(GridContainer._method_get_columns_3905245786 != nil)
    }

    public func set_columns(columns: Int64)  {
        withUnsafePointer(to: columns) { columns_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(columns_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_columns_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_columns() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_columns_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
}