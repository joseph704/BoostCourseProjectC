//
//  Country.swift
//  boostCourseProjectC
//
//  Created by 차요셉 on 16/01/2020.
//  Copyright © 2020 차요셉. All rights reserved.
//

import Foundation

//      {"korean_name":"일본","asset_name":"jp"}

struct Country {
    let korean_name:String
    let asset_name:String
}

enum CodingKes: String, CodingKey{
    case koreanName = "korea_name"
    case assetName = "asset_name"
}
