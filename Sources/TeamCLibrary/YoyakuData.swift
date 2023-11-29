//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/11/29.
//

import Foundation
import Defaults

public struct YoyakuData: Codable, Identifiable, Defaults.Serializable {
    
    public init(name: String, furigana: String, address: String, phoneNumber: String, email: String, farm: FarmData) {
        self.name = name
        self.furigana = furigana
        self.address = address
        self.phoneNumber = phoneNumber
        self.email = email
        self.farm = farm
    }
    
    public var id: String = UUID().uuidString
    public var name: String
    public var furigana: String
    public var address: String
    public var phoneNumber: String
    public var email: String
    public var farm: FarmData
}
