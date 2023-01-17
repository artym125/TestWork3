//
//  SettingsTableViewCell.swift
//  TestWork3
//
//  Created by Ostap Artym on 16.01.2023.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {


    @IBOutlet weak var imageFirstSection: UIImageView!
    
    @IBOutlet weak var nameAccount: UILabel!
    
    @IBOutlet weak var emailAccount: UILabel!
    
    @IBOutlet weak var imageFirstSetting: UIImageView!
    
    @IBOutlet weak var secondSectionLabel: UILabel!
    
    @IBOutlet weak var imageTwoSettings: UIImageView!
    
    @IBOutlet weak var imageThreeSettings: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = #colorLiteral(red: 0.1462551653, green: 0.1466015875, blue: 0.1569609344, alpha: 1)
        
        //Перша секція
        self.nameAccount?.text = "Lin See"
        self.nameAccount?.textColor = .white
        emailAccount?.text = "lin.see@gmail.com"
        emailAccount?.textColor = .white
        imageFirstSection?.image = #imageLiteral(resourceName: "AccountPhoto")
        //Друга секція
        imageFirstSetting?.image = #imageLiteral(resourceName: "Fram1png")
        secondSectionLabel?.textColor = .white
       
        
    }
            
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

}



