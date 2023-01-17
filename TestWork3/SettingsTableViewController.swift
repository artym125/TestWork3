//
//  SettingsTableViewController.swift
//  TestWork3
//
//  Created by Ostap Artym on 16.01.2023.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    
    
    let objectsOne = [
        AccountInfo(accountImage: #imageLiteral(resourceName: "AccountPhoto"), fullName: "Lin See", emailAdress: "lin.see@gmail.com")
    ]
    let objectsTwo = [
        SettingsTwo(imageSettings: #imageLiteral(resourceName: "Frame 33563-2"), settingTitle: "Recommendations", status: "Auto"),
        SettingsTwo(imageSettings: #imageLiteral(resourceName: "Frame 33563-3"), settingTitle: "Achievements", status: ""),
        SettingsTwo(imageSettings: #imageLiteral(resourceName: "Frame 33563-4"), settingTitle: "Sleep timer", status: ""),
        SettingsTwo(imageSettings: #imageLiteral(resourceName: "Frame 33563-5"), settingTitle: "Appearance", status: "")
    ]
    let objectThree = [
        Settings(imageSettings: #imageLiteral(resourceName: "Frame 33563-6"), settingTitle: "Share"),
        Settings(imageSettings: #imageLiteral(resourceName: "Frame 33563-7"), settingTitle: "Rate us"),
        Settings(imageSettings: #imageLiteral(resourceName: "Frame 33563-8"), settingTitle: "Privacy Policy")
    ]
    let objectFour = [
        Settings(imageSettings: #imageLiteral(resourceName: "Fram1png"), settingTitle: "Report a bug")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.title = "Settings"
       
        self.tableView.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.1882352941, blue: 0.1921568627, alpha: 1)
        
        //self.navigationItem.rightBarButtonItem = self.editButtonItem
        

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 6
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return objectsOne.count
        } else if section == 1 {
            return objectsTwo.count
        } else if section == 2 {
            return objectThree.count
        } else if section == 3 {
            return objectFour.count
        } else if section == 4 {
            return 1
        }
        return 0
    }

    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "accountCell", for: indexPath) as! SettingsTableViewCell
            let object = objectsOne[indexPath.row]
            cell.setOne(object: object)
            return cell
            
        } else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingsCellOne", for: indexPath) as! SettingsTableViewCell
            let object = objectsTwo[indexPath.row]
            cell.setTwo(object: object)
                return cell
            
        } else if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingsCellTwo", for: indexPath) as! SettingsTableViewCell
            let object = objectThree[indexPath.row]
            cell.setThree(object: object)
            return cell
            
        } else if indexPath.section == 3 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "settingsCellThree", for: indexPath) as! SettingsTableViewCell
            let object = objectFour[indexPath.row]
            cell.setFour(object: object)
                return cell
            } else if indexPath.section == 4 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "settingsButtonOne", for: indexPath) as! SettingsTableViewCell
                return cell
                
            }
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingsCellOne", for: indexPath) as! SettingsTableViewCell
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
