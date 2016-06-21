//
//  UsersList.swift
//  AlamofireExample
//
//  Created by Saikrishna Pawar on 09/06/16.
//  Copyright © 2016 RayBusinessTechnologies. All rights reserved.
//

import Foundation
import ObjectMapper

class UsersList: NSObject, Mappable {
    
    var userDetails: [UserDetails]?
    
    required init?(_ map: Map){
        
    }
    
    func mapping(map: Map) {
        userDetails <- map["Users"]
    }
    
}

class UserDetails: Mappable {
    
    var firstname: String?
    var lastname: String?
    var username: String?
    
    required init?(_ map: Map){
        
    }
    
    func mapping(map: Map) {
        firstname <- map["firstname"]
        lastname <- map["lastname"]
        username <- map["username"]
    }
    
}
