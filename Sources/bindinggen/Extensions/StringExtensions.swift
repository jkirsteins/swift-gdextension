import Foundation

extension String {
  
    /// A collection of all the words in the string by separating out any punctuation and spaces.
    var words: [String] {
        return components(separatedBy: CharacterSet.alphanumerics.inverted).filter { !$0.isEmpty }
    }
    
    func titlecasedWords() -> [String] {
        // TODO: proper string transforms
        if ["AABB", "Transform2D", "Transform3D", "RID"].contains(self) {
            return [self] }
        
        return self.replacingOccurrences(of: "([A-Z])", with: " $1", options: .regularExpression, range: self.range(of: self))
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .split(separator: " ")
            .map { String($0) }
    }

    /// Returns an uppercased copy of the string with punctuation removed and spaces replaced
    /// by a single underscore, e.g., "THE_QUICK_BROWN_FOX_JUMPS_OVER_THE_LAZY_DOG".
    ///
    /// *Upper snake case* (or, illustratively, *SNAKE_CASE*) is also known as
    /// *screaming snake case*.
    func upperSnakeCased() -> String {
        return self.titlecasedWords().map({ $0.uppercased() }).joined(separator: "_")
    }

}
