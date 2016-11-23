//
//  DetailedTableViewCell.swift
//  SchoolReport
//
//  Created by imac on 21/11/2016.
//  Copyright © 2016 laurent. All rights reserved.
//

import UIKit

class DetailedTableViewCell: UITableViewCell {

    @IBOutlet weak var ui_testName: UILabel!
    @IBOutlet weak var ui_markValueLbl: UILabel!
    @IBOutlet weak var ui_coefValLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func displayDetailed(markIn:Mark) {
        ui_testName.text = markIn.testName
        ui_markValueLbl.text = String(markIn.val)
        ui_coefValLbl.text = String(markIn.coef)
    }
    
}
