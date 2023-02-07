import godot_native

fileprivate var __godot_name_RichTextEffect: StringName! = nil

/// A custom effect for use with [RichTextLabel].
/// 
/// A custom effect for use with [RichTextLabel].
///  
/// [b]Note:[/b] For a [RichTextEffect] to be usable, a BBCode tag must be defined as a member variable called [code]bbcode[/code] in the script.
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// # The RichTextEffect will be usable like this: `[example]Some text[/example]`
///  
/// var bbcode = "example"
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// // The RichTextEffect will be usable like this: `[example]Some text[/example]`
///  
/// string bbcode = "example";
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// [b]Note:[/b] As soon as a [RichTextLabel] contains at least one [RichTextEffect], it will continuously process the effect unless the project is paused. This may impact battery life negatively.
public class RichTextEffect : Resource {

    

    public override class var __godot_name: StringName { __godot_name_RichTextEffect }

    static var _method__process_custom_fx_0: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_RichTextEffect = StringName(from: "RichTextEffect")

        
    }

    public func _process_custom_fx(char_fx: CharFXTransform) -> UInt8 {
        let char_fx_native = char_fx._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(char_fx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__process_custom_fx_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}