//
//  File.swift
//  
//
//  Created by Janis Kirsteins on 07/02/2023.
//

import Foundation

struct GodotPointer<Pointee: Class> {
    var opaque: UnsafeRawPointer
    
    var pointee: Pointee {
        Pointee(godot: opaque)
    }
}
