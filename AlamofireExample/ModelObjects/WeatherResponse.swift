//
//  WeatherResponse.swift
//  AlamofireExample
//
//  Created by Saikrishna Pawar on 06/06/16.
//  Copyright © 2016 RayBusinessTechnologies. All rights reserved.
//

import Foundation
import ObjectMapper

class WeatherResponse: NSObject, Mappable {
    var location: String?
    var threeDayForecast: [Forecast]?
    
    required init?(_ map: Map){
        
    }
    
    func mapping(map: Map) {
        location <- map["location"]
        threeDayForecast <- map["three_day_forecast"]
    }
}

class Forecast: Mappable {
    var day: String?
    var temperature: Int?
    var conditions: String?
    
    required init?(_ map: Map){
        
    }
    
    func mapping(map: Map) {
        day <- map["day"]
        temperature <- map["temperature"]
        conditions <- map["conditions"]
    }
}