import Foundation
import XMLCoder

fileprivate let template = """
import godot_native

public class Utility {
    ${body}
}
"""

func export_utility_functions(
    _ full: ExtensionApi,
    _ sizes: ExtensionApi_BuiltinClassSizeConfiguration
) {
    let doc = get_global_docs()
    
    let funcRenderables: [any Renderable] = full.utility_functions.flatMap { method in
        let cfg = ConfigurationSpecificMethod(config: sizes, method: method)
        
        var result: [any Renderable] = []
        
        if let methodDoc = doc.methods?.method.first(where: {
            $0.name == method.name
        }) {
            result.append(
                DocRenderable_Method(doc: methodDoc, method: method, indent: 0, config: sizes)
                )
        }
        
        result.append(
                InstanceMethodRenderable(method: cfg)
            )
        return result
    }
    
    let output = TemplatedRenderable(
        variables: [
            "body": MultiLineRenderable(lines: funcRenderables, indent: 4, prefix: nil)
        ],
        template: template,
        indent: 0).render()
    
    print("    generated \(_store(output, "module", "UtilityFunctions").path)")
}
