//
//  File.swift
//  
//
//  Created by Janis Kirsteins on 04/02/2023.
//

import Foundation

guard let dataUrl = Bundle.module.url(forResource: "extension_api", withExtension: "json") else {
    fatalError("extension_api.json not found")
}
let data = try Data(contentsOf: dataUrl)
let decodedData = try JSONDecoder().decode(ExtensionApi.self, from: data)


print("Header: ", decodedData.header.version_full_name)
