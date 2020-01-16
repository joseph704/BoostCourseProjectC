//
//  Country.swift
//  boostCourseProjectC
//
//  Created by 차요셉 on 16/01/2020.
//  Copyright © 2020 차요셉. All rights reserved.
//

import Foundation

//      {"korean_name":"일본","asset_name":"jp"}



struct Country:Codable {
    let koreanName:String
    let assetName:String
    
    // Codingkey 사용시 같은 Struct or class 안에 있어야 한다.
    enum CodingKeys: String, CodingKey{
        
        case assetName = "asset_name"
        case koreanName = "korean_name"
    }
}


