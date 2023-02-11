//
//  File.swift
//  
//
//  Created by Janis Kirsteins on 11/02/2023.
//

import godot_native

extension GDExtensionInterface {
    public func print_error(_ desc: Swift.String, _ file: Swift.String = #file, _ line: Int = #line) {
        desc.withCString { descPtr in
            file.withCString { filePtr in
                self.print_error(desc, file, nil, Int32(line))
            }
        }
    }
    
    public func print_warning(_ desc: Swift.String, _ file: Swift.String = #file, _ line: Int = #line) {
        desc.withCString { descPtr in
            file.withCString { filePtr in
                self.print_warning(desc, file, nil, Int32(line))
            }
        }
    }
}
