//
//  Extension.swift
//  DemoObjectMapperandAlamofire
//
//  Created by Apple on 10/28/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation


//Mark: Double

extension Double {
    
    func changeKtoC() -> Double {
        return self - 273.15
    }
    
}


//Mark: TimeInterval

extension TimeInterval {
    func getanotherformatDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, MMM d, yyyy" // This formate is input formated .
        dateFormatter.locale = Locale(identifier: "EN")
        let getDayofweek = Date(timeIntervalSince1970: self)
        return dateFormatter.string(from: getDayofweek)
    }
    
    func getDayOfWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE" // This formate is input formated .
        dateFormatter.locale = Locale(identifier: "EN")
        let getDayofweek = Date(timeIntervalSince1970: self)
        return dateFormatter.string(from: getDayofweek)
    }
}
