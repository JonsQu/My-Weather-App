//
//  Weather.swift
//  My Weather App
//
//  Created by ShadoWalker on 9.10.2018.
//  Copyright © 2018 ShadoWalker. All rights reserved.
//

import Foundation
class Weather: Decodable {
    var id: Int?
    var main: String?
    var description: String?
    var icon: String?
}
