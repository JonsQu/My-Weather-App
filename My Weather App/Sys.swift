//
//  Sys.swift
//  My Weather App
//
//  Created by ShadoWalker on 9.10.2018.
//  Copyright © 2018 ShadoWalker. All rights reserved.
//

import Foundation
class Sys: Decodable{
    var type: Int?
    var id: Int?
    var message: Double?
    var country: String?
    var sunrise: Int?
    var sunset: Int?
    
}
