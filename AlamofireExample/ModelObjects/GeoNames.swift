//
//  GeoNames.swift
//  AlamofireExample
//
//  Created by Saikrishna Pawar on 09/06/16.
//  Copyright © 2016 RayBusinessTechnologies. All rights reserved.
//

import Foundation
import ObjectMapper

class GeoNames: NSObject, Mappable {
    
    var geoNames: [GeoDetails]?
    
    required init?(_ map: Map){
        
    }
    
    func mapping(map: Map) {
        geoNames <- map["geonames"]
    }
    
}

class GeoDetails: Mappable {
    
    var longitude: Double?
    var geoNameId: Double?
    var countryCode: String?
    var name: String?
    var fclName: String?
    var toponymName: String?
    var fcodeName: String?
    var wikipedia: String?
    var lat: Double?
    var fcl: String?
    var population: Double?
    var fcode: String?
    
    required init?(_ map: Map){
        
    }
    
    func mapping(map: Map) {
        longitude <- map["lng"]
        geoNameId <- map["geonameId"]
        countryCode <- map["countrycode"]
        name <- map["name"]
        fclName <- map["fclName"]
        toponymName <- map["toponymName"]
        fcodeName <- map["fcodeName"]
        wikipedia <- map["wikipedia"]
        lat <- map["lat"]
        fcl <- map["fcl"]
        population <- map["population"]
        fcode <- map["fcode"]
    }
}
