
protocol Renderable {
    func render() -> String
}

extension String: Renderable {
    public func render() -> String { self }
}

extension Int: Renderable {
    public func render() -> String { "\(self)" }
}

struct MultiLineRenderable: Renderable {
    let lines: [any Renderable]
    
    /// Indent that will be applied to every line except the first
    let indent: Int
    
    let prefix: String?
    let trim: Bool = true
    
    public func render() -> String {
        let explodeInternal = self.lines.flatMap({
            let rendered = $0.render()
            
            guard !rendered.isEmpty else { return [rendered] }
            
            let int = rendered.split(separator: "\n").map {
                if (trim) {
                    return String($0.replacingOccurrences(of: "\t", with: ""))
                } else {
                    return String($0)
                }
            }
            return int
        })
        
        let preResult = explodeInternal.map { "\(String(repeating: " ", count: indent))\(prefix ?? "")\($0)" }.joined(separator: "\n")
        guard !preResult.isEmpty else { return preResult }
        
        // trim the first indent
        return String(preResult[preResult.index(preResult.startIndex, offsetBy: indent)...])
    }
}

// TODO: less hacky doc processing
struct DocMultiLineRenderable: Renderable {
    let lines: [any Renderable]
    
    /// Indent that will be applied to every line except the first
    let indent: Int
    
    let prefix: String?
    let trim: Bool = true
    
    public func render() -> String {
        let explodeInternal = self.lines.flatMap({
            // TODO: less hacky way to insert newlines for docs
            let rendered = String($0.render().replacingOccurrences(of: "\n", with: "\n \n"))
            
            guard !rendered.isEmpty else { return [rendered] }
            
            let int = rendered.split(separator: "\n").map {
                if (trim) {
                    return String($0.replacingOccurrences(of: "\t", with: ""))
                } else {
                    return String($0)
                }
            }
            return int
        })
        
        let preResult = explodeInternal.map { "\(String(repeating: " ", count: indent))\(prefix ?? "")\($0)" }.joined(separator: "\n")
        guard !preResult.isEmpty else { return preResult }
        
        // trim the first indent
        return String(preResult[preResult.index(preResult.startIndex, offsetBy: indent)...])
    }
}

let SKIP_LINE = ""
