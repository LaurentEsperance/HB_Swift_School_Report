//
//  FooterTableViewCell.swift
//  SchoolReport
//
//  Created by imac on 23/11/2016.
//  Copyright © 2016 laurent. All rights reserved.
//

import UIKit

class FooterTableViewCell: UITableViewCell {

    @IBOutlet weak var ui_nbMarksLbl: UILabel!
    @IBOutlet weak var ui_meanMarkLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func displayMean(nbMarks:Int, meanVal:Double){
        let plural:String = (nbMarks > 1) ? "s" : ""
        ui_nbMarksLbl.text = String(nbMarks) + " note" + plural
        ui_meanMarkLbl.text = "Moyenne :" + String(meanVal)
    }
    @IBAction func essai_function() {
        print("OK fonctionne")
    }

}
