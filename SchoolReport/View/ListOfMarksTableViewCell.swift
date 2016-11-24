//
//  ListOfMarksTableViewCell.swift
//  SchoolReport
//
//  Created by imac on 21/11/2016.
//  Copyright © 2016 laurent. All rights reserved.
//

import UIKit

class ListOfMarksTableViewCell: UITableViewCell {

    @IBOutlet weak var ui_subLbl: UILabel!
    @IBOutlet weak var ui_TestLbl: UILabel!
    @IBOutlet weak var ui_markValLbl: UILabel!
    @IBOutlet weak var ui_coefLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func displayCell(mark:Mark) {
        ui_subLbl.text = mark.subject
        ui_TestLbl.text = mark.testName
        ui_markValLbl.text = String(mark.val)
        ui_coefLbl.text = String(mark.coef)
    }

}
