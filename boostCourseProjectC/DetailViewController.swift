//
//  DetailViewController.swift
//  boostCourseProjectC
//
//  Created by 차요셉 on 17/01/2020.
//  Copyright © 2020 차요셉. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var textToSetCityName:String?
    var textToSetTemperature:Double?
    var textToSetRainFallProbability:Int?
    var textToSetState:Int?
    
    @IBOutlet weak var weatherImageView:UIImageView!
    @IBOutlet weak var state:UILabel!
    @IBOutlet weak var temperature:UILabel!
    @IBOutlet weak var rainFallProbability:UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch textToSetState {
        case 10:
            weatherImageView.image=UIImage(named: "sunny")
            state.text="맑음"
        case 11:
            weatherImageView.image=UIImage(named: "cloudy")
            state.text="구름"
        case 12:
            weatherImageView.image=UIImage(named: "rainy")
            state.text="비"
        case 13:
            weatherImageView.image=UIImage(named: "snowy")
            state.text="눈"
        default:
            debugPrint("존재하지 않는 state")
        }
        
        let fahrenheitDegree =  textToSetTemperature! * 1.8 + 32
        let output = floor(fahrenheitDegree * 100) / 100
        
        temperature.text = "섭씨 \(textToSetTemperature!)도 / 화씨 \(output)도"
        rainFallProbability.text = "강수확률: \(textToSetRainFallProbability!)%"
        
        navigationItem.title=textToSetCityName
        
        
        // Do any additional setup after loading the view.
    }


}
