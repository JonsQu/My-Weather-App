//
//  WeatherModel.swift
//  My Weather App
//
//  Created by ShadoWalker on 4.10.2018.
//  Copyright © 2018 ShadoWalker. All rights reserved.
//

import Foundation
class WeatherModel: Decodable{
    var coord: Coord?
    var weather: [Weather]?
    var base: String?
    var main: Main?
    var visibility: Double?
    var wind: Wind?
    var clouds: Clouds?
    var dt: Int?
    var sys: Sys?
    var id: Int?
    var name: String?
    var cod: Int?
    
    
    
    
    
    
}

