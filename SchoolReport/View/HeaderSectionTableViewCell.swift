//
//  HeaderSectionTableViewCell.swift
//  SchoolReport
//
//  Created by imac on 24/11/2016.
//  Copyright © 2016 laurent. All rights reserved.
//

import UIKit

class HeaderSectionTableViewCell: UITableViewCell {

    @IBOutlet weak var ui_sectionNameLbl: UILabel!
    @IBOutlet weak var ui_buttonExpColl: UIButton!
    private var _isCollapsed: Bool = false
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    /*override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }*/

    public func displayHeaderSectionName(sectionName:String) {
        ui_sectionNameLbl.text = sectionName
    }
    
    @IBAction func expandCollapseButPushed() {
        let butImColl = UIImage(named: "Minus")
        let butImExp = UIImage(named: "Plus")
        //let bgImg = ui_buttonExpColl.backgroundImage(for:UIControlState.normal)
        let bgImgToDisplay = _isCollapsed ? butImExp : butImColl
        _isCollapsed = !_isCollapsed
        ui_buttonExpColl.setImage(bgImgToDisplay, for:UIControlState.normal)
    }
    
    var isCollapsed:Bool{
        get {
            return _isCollapsed
        }
        set {
            _isCollapsed = newValue
        }
    }
    
}
