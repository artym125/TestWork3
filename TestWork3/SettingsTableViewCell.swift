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
    
    
    @IBOutlet weak var statusLabel: UILabel!
    
    
    @IBOutlet weak var thirdSectionLabel: UILabel!
    @IBOutlet weak var imageThirdSection: UIImageView!
    @IBOutlet weak var fourSectionLabel: UILabel!
    @IBOutlet weak var premiunMusicBtton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = #colorLiteral(red: 0.1462551653, green: 0.1466015875, blue: 0.1569609344, alpha: 1)
        
        //Перша секція
        nameAccount?.textColor = .white
        nameAccount?.font = nameAccount?.font.withSize(22)
        
        emailAccount?.textColor = .white
        emailAccount?.font = nameAccount?.font.withSize(13)
        
        secondSectionLabel?.textColor = .white
        secondSectionLabel?.font = secondSectionLabel?.font.withSize(17)
        
        thirdSectionLabel?.textColor = .white
        thirdSectionLabel?.font = thirdSectionLabel?.font.withSize(17)
        
        fourSectionLabel?.textColor = .white
        fourSectionLabel?.font = fourSectionLabel?.font.withSize(17)
        
        premiunMusicBtton?.setTitle("Music Premium", for: .application)
        premiunMusicBtton?.backgroundColor = .red
        premiunMusicBtton?.setTitleColor(.white, for: .normal)
        premiunMusicBtton?.setImage(UIImage(named: "Frame_33564"), for: .normal)
        premiunMusicBtton?.configuration?.imagePadding = 10
        self.premiunMusicBtton?.titleLabel?.font =  UIFont(name: "Roboto", size: 20)
        premiunMusicBtton?.title(for: .normal)
        
        
        
    
        
        
        
    }
    
    
    func setOne(object: AccountInfo) {
        self.nameAccount.text = object.fullName
        self.emailAccount.text = object.emailAdress
        self.imageFirstSection.image = object.accountImage
    }
    
    func setTwo(object: SettingsTwo) {
        self.imageFirstSetting.image = object.imageSettings
        self.secondSectionLabel.text = object.settingTitle
        self.statusLabel.text = object.status
    }
    
    func setThree(object: Settings) {
        self.imageTwoSettings.image = object.imageSettings
        self.thirdSectionLabel.text = object.settingTitle
    }
    
    func setFour(object: Settings) {
        self.imageThirdSection.image = object.imageSettings
        self.fourSectionLabel.text = object.settingTitle
    }
    
    

            
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

}



