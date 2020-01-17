//
//  Weather.swift
//  boostCourseProjectC
//
//  Created by 차요셉 on 16/01/2020.
//  Copyright © 2020 차요셉. All rights reserved.
//

import Foundation
/* {
   "city_name":"함부르크",
   "state":12,
   "celsius":5.6,
   "rainfall_probability":40
} */

struct Weather:Codable {
    let cityName:String
    let state:Int
    let celsius:Double
    let rainfallProbability:Int
    
    private enum CodingKeys: String, CodingKey{
        case cityName = "city_name"
        case state
        case celsius
        case rainfallProbability = "rainfall_probability"
    }
}
