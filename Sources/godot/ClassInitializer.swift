//
//  File.swift
//  
//
//  Created by Janis Kirsteins on 05/02/2023.
//

import Foundation

class ClassInitializer {
    static func initialize<T: Class>(_: T.Type) {
        print("Empty initialize for \(T.self)")
    }
}

