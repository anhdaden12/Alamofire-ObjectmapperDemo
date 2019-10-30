//
//  Model.swift
//  DemoObjectMapperandAlamofire
//
//  Created by Apple on 10/28/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
//import ObjectMapper
//
//struct Weather: Mappable {
//
//    var city: City
//    var list: [List]
//
//    init?(map: Map){
//
//    }
//
//    mutating func mapping(map: Map) {
//        city <- map["city"]
//        list <- map["list.value"]
//    }
//
//}
//
//
//struct List: Mappable {
//
//    var dt: String
//    var sunrise: Double
//    var sunset: Double
//    var temp: Temp
//    var humidity: Int
//    var weather: WEATHER
//
//    init?(map: Map) {}
//
//    mutating func mapping(map: Map) {
//        dt <- map["dt"]
//        sunrise <- map["sunrise"]
//        sunset <- map["sunset"]
//        temp <- map["temp"]
//        humidity <- map["humidity"]
//        weather <- map["weather"]
//    }
//
//}
//
//struct City: Mappable {
//
//    var id: Int
//    var name: String
//   // var coord: Coord
//    var country: String
//    var population: Int
//    var timezone: Double
//
//    init?(map: Map) {}
//
//    mutating func mapping(map: Map) {
//        id <- map["id"]
//        name <- map["name"]
//        country <- map["country"]
//        population <- map["population"]
//        timezone <- map["timezone"]
//    }
//}
//
//
//struct Temp: Mappable {
//
//    var day: Double
//    var min: Double
//    var max: Double
//    var night: Double
//    var eve: Double
//    var morn: Double
//
//    init?(map: Map) {}
//
//    mutating func mapping(map: Map) {
//        day <- map["day"]
//        min <- map["min"]
//        max <- map["max"]
//        night <- map["night"]
//        eve <- map["eve"]
//        morn <- map["morn"]
//    }
//
//
//}
//
//
//struct WEATHER: Mappable {
//
//    var id: Double
//    var main: String
//    var description: String
//    var icon: String
//
//    init?(map: Map) {}
//
//    mutating func mapping(map: Map) {
//        id <- map["id"]
//        main <- map["main"]
//        description <- map["description"]
//        icon <- map["icon"]
//    }
//
//
//}
