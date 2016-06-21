//
//  AlamofireService.swift
//  AlamofireExample
//
//  Created by Saikrishna Pawar on 31/05/16.
//  Copyright © 2016 RayBusinessTechnologies. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
import ObjectMapper

class AlamofireService {
    
    static let alamofireService = AlamofireService()
    
    /*
     Making the constructor as private for singleton purpose
     */
    private init() {
        
    }
    
    /*
     Make get json service request
     */
    internal func makeGetServiceRequest(url: String, resposeCallback: ResponseCallback)
    {
        Alamofire.request(.GET, url)
            .validate()
            .responseJSON { response in
                switch response.result {
                case .Success:
                    if let JSON = response.result.value
                    {
                        resposeCallback.jsonResponse(JSON)
                    }
                    
                case .Failure(let error):
                    resposeCallback.errorResponse(error)
                }
        }
    }
    
    /*
     Make post json service request
     */
    internal func makePostServiceRequest(url: String, parameters: [String : AnyObject], resposeCallback: ResponseCallback)
    {
        Alamofire.request(.POST, url, parameters: parameters, encoding: .JSON)
            .validate()
            .responseJSON { response in
                switch response.result {
                case .Success:
                    if let JSON = response.result.value
                    {
                        resposeCallback.jsonResponse(JSON)
                    }
                    
                case .Failure(let error):
                    resposeCallback.errorResponse(error)
                }
        }
        
    }
    
    /*
     Returns the response as a model object
     */
    internal func responseObject<T: NSObject where T: Mappable>(type: T.Type, url: String, resposeCallback: ResponseCallback)
    {
        
        Alamofire.request(.GET, url)
            .validate()
            .responseObject { (response: Response<T, NSError>) in
                switch response.result {
                case .Success:
                    if let dataObject = response.result.value
                    {
                        resposeCallback.jsonResponse(dataObject)
                    }
                    
                case .Failure(let error):
                    resposeCallback.errorResponse(error)
                }
        }
    }
    
}