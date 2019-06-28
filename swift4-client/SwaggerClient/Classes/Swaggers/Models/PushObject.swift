//
// PushObject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PushObject: Codable {

    public var data: PushDataObject
    public var channels: [String]?
    public var _where: PushWhereObject

    public init(data: PushDataObject, channels: [String]?, _where: PushWhereObject) {
        self.data = data
        self.channels = channels
        self._where = _where
    }

    public enum CodingKeys: String, CodingKey { 
        case data
        case channels
        case _where = "where"
    }


}
