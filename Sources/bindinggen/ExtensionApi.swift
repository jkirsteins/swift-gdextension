//
//  File.swift
//  
//
//  Created by Janis Kirsteins on 04/02/2023.
//

import Foundation

struct _ExtensionApi_SharedEnum: Codable, GodotEnum {
    let name: Swift.String
    let is_bitfield: Bool?
    let values: [_ExtensionApi_SharedEnum_Value]
}

struct _ExtensionApi_SharedEnum_Value: Codable, GodotEnumValue {
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
    let enums: [ExtensionApi_BuiltinClass_Enum]?
}

typealias ExtensionApi_BuiltinClass_Enum = ExtensionApi_Class_Enum

struct ExtensionApi_BuiltinClass_Operator: Codable {
    let name: Swift.String
    let right_type: Swift.String?
    let return_type: Swift.String
}

struct ExtensionApi_BuiltinClass_Constructor: Codable, Constructor {
    let index: Int
    let arguments: [ExtensionApi_BuiltinClass_Constructor_Argument]?
}

struct ExtensionApi_BuiltinClass_Constructor_Argument: Codable, MethodArgument {
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
    let methods: [ExtensionApi_Class_Method]?
}

struct ExtensionApi_Class_Method_ReturnValue: Codable {
    let type: String
}

protocol MethodArgument {
    var name: String { get }
    var type: String { get }
}

struct ExtensionApi_Class_Method_Arg: Codable, MethodArgument {
    let name: String
    let type: String
}

protocol Constructor {
    associatedtype Argument: MethodArgument
    
    var index: Int { get }
    var arguments: [Argument]? { get }
}

protocol Method {
    associatedtype Argument: MethodArgument
    var name: String { get }
    var is_const: Bool { get }
    var is_vararg: Bool { get }
    var is_static: Bool { get }
    var is_virtual: Bool { get }
    var hash: Int? { get }
    var arguments: [Argument]? { get }
    var return_value_type: String? { get }
}

struct ExtensionApi_Class_Method: Codable, Method {
    let name: String
    let is_const: Bool
    let is_vararg: Bool
    let is_static: Bool
    let is_virtual: Bool
    let hash: Int?
    let return_value: ExtensionApi_Class_Method_ReturnValue?
    let arguments: [
        ExtensionApi_Class_Method_Arg]?
    
    var return_value_type: String? {
        self.return_value?.type
    }
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
