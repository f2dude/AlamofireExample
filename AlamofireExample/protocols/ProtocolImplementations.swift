//
//  ServiceProtocol.swift
//  AlamofireExample
//
//  Created by Saikrishna Pawar on 31/05/16.
//  Copyright © 2016 RayBusinessTechnologies. All rights reserved.
//

import Foundation

protocol ResponseCallback {
    func jsonResponse(json: AnyObject)
    func errorResponse(error: NSError)
}