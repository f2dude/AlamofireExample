//
//  ViewController.swift
//  AlamofireExample
//
//  Created by Saikrishna Pawar on 24/05/16.
//  Copyright © 2016 RayBusinessTechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ResponseCallback {
    
    let JSON_GET_URL: String = "http://api.androidhive.info/contacts/"
    let JSON_POST_URL: String = "http://bookmytoll.raybiztech.net/bmtservices/api/userlogin"
    
    let WEATHER_RESPONSE_URL: String = "https://raw.githubusercontent.com/tristanhimmelman/AlamofireObjectMapper/d8bb95982be8a11a2308e779bb9a9707ebe42ede/sample_json"
    
    let GEO_RSPONSE_URL: String = "http://api.geonames.org/citiesJSON?north=44.1&south=-9.9&east=-22.4&west=55.2&lang=de&username=demo"
    
    let USER_RESPONSE_URL: String = "http://demo.codeofaninja.com/tutorials/json-example-with-php/index.php"

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //making alamofire get request
//        AlamofireService.alamofireService.makeGetServiceRequest(JSON_GET_URL, resposeCallback: self)
        
        //making alamofire post request
//        let parameters = [
//            "request" : [
//                "login": "9502770636",
//                "password": "12345678"
//
//            ]
//        ]
//        AlamofireService.alamofireService.makePostServiceRequest(JSON_POST_URL, parameters: parameters, resposeCallback: self)
        
        //Alamofire Object Mapper request
//        AlamofireService.alamofireService.responseObject(WeatherResponse.self, url: WEATHER_RESPONSE_URL, resposeCallback: self)
        
//         AlamofireService.alamofireService.responseObject(GeoNames.self, url: GEO_RSPONSE_URL, resposeCallback: self)
        
//        AlamofireService.alamofireService.responseObject(UsersList.self, url: USER_RESPONSE_URL, resposeCallback: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
     Json response from service
     */
    func jsonResponse(json: AnyObject) {

        //json responses
//        print("Json response in view controller:::::\(json)")

        //Alamofire Object model responses
//        let weatherResponse: WeatherResponse = json as! WeatherResponse
//        print(weatherResponse.location)
//        
//        if let threeDayForecast = weatherResponse.threeDayForecast {
//            for forecast in threeDayForecast {
//                print(forecast.day)
//                print(forecast.temperature)
//                print("====================")
//            }
//        }
        
//        let geoNames: GeoNames = json as! GeoNames
//        
//        if let geoDetails = geoNames.geoNames {
//            for detail in geoDetails {
//                
//                print("lng:::::\(detail.longitude)")
//                print("geonameId:::::\(detail.geoNameId)")
//                print("countrycode:::::\(detail.countryCode)")
//                print("name:::::\(detail.name)")
//                print("fclName:::::\(detail.fclName)")
//                print("toponymName:::::\(detail.toponymName)")
//                print("fcodeName:::::\(detail.fcodeName)")
//                print("wikipedia:::::\(detail.wikipedia)")
//                print("lat:::::\(detail.lat)")
//                print("fcl:::::\(detail.fcl)")
//                print("population:::::\(detail.population)")
//                print("fcode:::::\(detail.fcode)")
//                print("=====================")
//            }
//        }
        
//        let usersList: UsersList = json as! UsersList
//        
//        if let userDetails = usersList.userDetails {
//            for detail in userDetails {
//                print("firstname:::::\(detail.firstname)")
//                print("lastname:::::\(detail.lastname)")
//                print("username::::\(detail.username)")
//                print("=====================")
//            }
//        }
    }
    
    /*
     Error response from service
     */
    func errorResponse(error: NSError) {
        print("Error response in view controller:::::\(error)")
    }
}

