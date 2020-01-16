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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "korea", for: indexPath)
            return cell
        } else if indexPath.section == 1 {
            let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "german", for: indexPath)
            return cell
        } else if indexPath.section == 1 {
            let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "italy", for: indexPath)
            return cell
        } else if indexPath.section == 1 {
            let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "usa", for: indexPath)
            return cell
        } else if indexPath.section == 1 {
            let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "france", for: indexPath)
            return cell
        } else {
            let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "japan", for: indexPath)
            return cell
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let nextViewController:SecondViewController = segue.destination as? SecondViewController else { return }
        
 }
}
