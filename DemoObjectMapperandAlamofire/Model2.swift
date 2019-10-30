//
//  Model2.swift
//  DemoObjectMapperandAlamofire
//
//  Created by Apple on 10/28/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
import ObjectMapper



class HanoiWeather: Mappable {

    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        city <- map["city"]
        list <- map["list"]
    }
    
    var city: City?
    var list: [List]?
    
}



class City: Mappable {
    var id: Int?
    var name: String?
    var country: String?
    var population: Double?
    var timezone: Double?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        country <- map["country"]
        population <- map["population"]
        timezone <- map["timezone"]
    }
    
    
}

class List: Mappable {
    
    var dt: TimeInterval?
    var clouds: Double?
    var rain: Double?
    var temp: Temp?
    required init?(map: Map) {
        
    }
    
     func mapping(map: Map) {
        dt <- map["dt"]
        clouds <- map["clouds"]
        rain <- map["rain"]
        temp <- map["temp"]
    }
}


class Temp: Mappable {
  
    var day: Double?
    var min: Double?
    var max: Double?
    var night: Double?
    var eve: Double?
    var morn: Double?
    
    required init?(map: Map) {
       
    }
    
    func mapping(map: Map) {
                day <- map["day"]
                min <- map["min"]
                max <- map["max"]
                night <- map["night"]
                eve <- map["eve"]
                morn <- map["morn"]
      }
    
}

