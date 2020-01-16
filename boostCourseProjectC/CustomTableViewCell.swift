//
//  CustomTableViewCell.swift
//  boostCourseProjectC
//
//  Created by 차요셉 on 16/01/2020.
//  Copyright © 2020 차요셉. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var countryImageView:UIImageView!
    @IBOutlet weak var countryLabel:UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
