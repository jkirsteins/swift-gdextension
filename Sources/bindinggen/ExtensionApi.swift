//
//  File.swift
//  
//
//  Created by Janis Kirsteins on 04/02/2023.
//

import Foundation

struct _ExtensionApi_SharedEnum: Codable {
    let name: Swift.String
    let is_bitfield: Bool
    let values: [_ExtensionApi_SharedEnum_Value]
}

struct _ExtensionApi_SharedEnum_Value: Codable {
    let name: Swift.String
    let value: Int
}

struct ExtensionApi_Header: Codable {
    var version_major: Int
    var version_minor: Int
    var version_patch: Int
    var version_status: Swift.String
    var version_build: Swift.String
    var version_full_name: Swift.String
}

// MARK: builtin_class_sizes

struct ExtensionApi_BuiltinClassSizeConfiguration: Codable {
    let build_configuration: Swift.String
    let sizes: [ExtensionApi_BuiltinClassSizeConfiguration_Item]
}


struct ExtensionApi_BuiltinClassSizeConfiguration_Item: Codable {
    let name: Swift.String
    let size: Int
}

// MARK: builtin_class_member_offsets

struct ExtensionApi_BuiltinClassMemberOffsetsConfiguration: Codable {
    let build_configuration: Swift.String
    let classes: [ExtensionApi_BuiltinClassMemberOffsetsConfiguration_Item]
}

struct ExtensionApi_BuiltinClassMemberOffsetsConfiguration_Item: Codable {
    let name: Swift.String
    let members: [ExtensionApi_BuiltinClassMemberOffsetsConfiguration_Item_Member]
}

struct ExtensionApi_BuiltinClassMemberOffsetsConfiguration_Item_Member: Codable {
    let member: Swift.String
    let offset: Int
    let meta: Swift.String
}

// MARK: global_constants

struct ExtensionApi_GlobalConstant: Codable {
    
}

// MARK: global_enums

typealias ExtensionApi_GlobalEnum = _ExtensionApi_SharedEnum

// MARK: utility_functions

struct ExtensionApi_UtilityFunction: Codable {
    let name: Swift.String
    let return_type: Swift.String?
    let category: Swift.String
    let is_vararg: Bool
    let hash: Int
    let arguments: [ExtensionApi_UtilityFunction_Argument]?
}

struct ExtensionApi_UtilityFunction_Argument: Codable {
    let name: Swift.String
    let type: Swift.String
}

// MARK: builtin_classes

struct ExtensionApi_BuiltinClass: Codable {
    let name: Swift.String
    let is_keyed: Bool
    let operators: [ExtensionApi_BuiltinClass_Operator]
    let constructors: [ExtensionApi_BuiltinClass_Constructor]
    let has_destructor: Bool
}

struct ExtensionApi_BuiltinClass_Operator: Codable {
    let name: Swift.String
    let right_type: Swift.String?
    let return_type: Swift.String
}

struct ExtensionApi_BuiltinClass_Constructor: Codable {
    let index: Int
    let arguments: [ExtensionApi_BuiltinClass_Constructor_Argument]?
}

struct ExtensionApi_BuiltinClass_Constructor_Argument: Codable {
    let name: Swift.String
    let type: Swift.String
}

// MARK: classes

struct ExtensionApi_Class: Codable {
    let name: Swift.String
    let is_refcounted: Bool
    let is_instantiable: Bool
    let inherits: Swift.String?
    let api_type: Swift.String
    let enums: [ExtensionApi_Class_Enum]?
}

typealias ExtensionApi_Class_Enum = _ExtensionApi_SharedEnum

// MARK: singletons

struct ExtensionApi_Singleton: Codable {
    let name: Swift.String
    let type: Swift.String
}

// MARK: native_structures

struct ExtensionApi_NativeStructure: Codable {
    let name: Swift.String
    let format: Swift.String
}

// MARK: ExtensionApi

struct ExtensionApi: Codable
{
    let header: ExtensionApi_Header
    let builtin_class_sizes: [ExtensionApi_BuiltinClassSizeConfiguration]
    let builtin_class_member_offsets: [ExtensionApi_BuiltinClassMemberOffsetsConfiguration]
    let global_constants: [ExtensionApi_GlobalConstant]
    let global_enums: [ExtensionApi_GlobalEnum]
    let utility_functions: [ExtensionApi_UtilityFunction]
    let builtin_classes: [ExtensionApi_BuiltinClass]
    let classes: [ExtensionApi_Class]
    let singletons: [ExtensionApi_Singleton]
    let native_structures: [ExtensionApi_NativeStructure]
}
