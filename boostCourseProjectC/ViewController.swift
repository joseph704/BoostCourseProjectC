//
//  ViewController.swift
//  boostCourseProjectC
//
//  Created by 차요셉 on 15/01/2020.
//  Copyright © 2020 차요셉. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var tableView:UITableView!
    var countries = [Country]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jsonDecoder:JSONDecoder = JSONDecoder()
        guard let dataAsset :NSDataAsset = NSDataAsset(name: "countries") else { return }
        do {
            self.countries = try jsonDecoder.decode([Country].self, from: dataAsset.data)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:CustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        let country:Country = countries[indexPath.row]
        
        let countryFlag:String = "flag_\(country.assetName)"
        cell.countryImageView.image = UIImage(named: countryFlag)
        cell.countryLabel.text = country.koreanName
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let nextViewController:SecondViewController = segue.destination as? SecondViewController else { return }
        
 }
}
