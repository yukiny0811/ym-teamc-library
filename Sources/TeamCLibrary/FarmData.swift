//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/11/29.
//

import Foundation
import Defaults

public struct FarmData: Codable, Identifiable, Defaults.Serializable {
    
    public init(
        name: String,
        date: Date,
        image: Data,
        tokuchou: String,
        osusumePoint: String,
        mapLocationLat: Double,
        mapLocationLong: Double,
        nagare: [String]
    ) {
        self.name = name
        self.date = date
        self.image = image
        self.tokuchou = tokuchou
        self.osusumePoint = osusumePoint
        self.mapLocationLat = mapLocationLat
        self.mapLocationLong = mapLocationLong
        self.nagare = nagare
    }
    
    public var id: String = UUID().uuidString
    public var name: String
    public var date: Date
    public var image: Data
    public var tokuchou: String
    public var osusumePoint: String
    public var mapLocationLat: Double
    public var mapLocationLong: Double
    public var nagare: [String]
}
