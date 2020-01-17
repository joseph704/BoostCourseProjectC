//
//  SecondViewController.swift
//  boostCourseProjectC
//
//  Created by 차요셉 on 15/01/2020.
//  Copyright © 2020 차요셉. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var textToSetCountry:String?
    
    var weathers=[Weather]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let jsonDecoder:JSONDecoder = JSONDecoder()
        guard let dataAsset:NSDataAsset = NSDataAsset(name: textToSetCountry!) else {return}
        do {
            self.weathers =  try jsonDecoder.decode([Weather].self, from: dataAsset.data)
        } catch {
            print(error.localizedDescription)
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weathers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:WeatherTableViewCell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath) as! WeatherTableViewCell
        let weather:Weather = weathers[indexPath.row]
        
        let fahrenheitDegree =  weather.celsius * 1.8 + 32
        let output = floor(fahrenheitDegree * 100) / 100
//        13: 눈

//        12 : 비

//        11 : 구름

//        10: 맑음
        switch weather.state {
        case 10:
            cell.weatherImageView.image=UIImage(named: "sunny")
        case 11: cell.weatherImageView.image=UIImage(named: "cloudy")
        case 12: cell.weatherImageView.image=UIImage(named: "rainy")
        case 13: cell.weatherImageView.image=UIImage(named: "snowy")
        
        default:
            debugPrint("존재하지 않는 state")
        }
        
        cell.cityName.text = weather.cityName
        cell.temperature.text = "섭씨 \(weather.celsius)도 / 화씨 \(output)도"
        cell.rainFallProbability.text = "강수확률: \(weather.rainfallProbability)%"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
  
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
