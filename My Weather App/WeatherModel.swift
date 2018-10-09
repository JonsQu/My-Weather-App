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
    var sys: Sys?
    var weather: Weather?
    var main: Main?
    var wind: Wind?
    var clouds: Clouds?
    var dt: Int?
    var id: Int?
    var name: String?
    var cod: Int?
}
class Coord: Decodable{
    var lon: Double?
    var lat: Double?
}
class Sys: Decodable{
    var country: String?
    var sunrise: Int?
    var sunset: Int?
}
class Weather: Decodable{
    var id: Int?
    var main: String?
    var description: String?
    var icon: String?
}
class Main: Decodable{
    var temp: Double?
    var humidity: Int?
    var pressure: Double?
    var temp_min: Double?
    var temp_max: Double?
}
class Wind: Decodable{
    var speed: Double?
    var deg: Double?
}
class Clouds: Decodable{
    var all: Double?
}
