//
//  DistanceUnitTableViewController.swift
//  Keep Pace iOS
//
//  Created by Daniel Katz on 2018-05-04.
//  Copyright © 2018 Daniel Katz. All rights reserved.
//

import UIKit

class DistanceUnitTableViewController: UITableViewController {
    
    @IBOutlet weak var mUnit: UITableViewCell!
    @IBOutlet weak var kmUnit: UITableViewCell!

    let unitType = UserDefaults.standard.string(forKey: "unitType")

    override func viewDidLoad() {

        super.viewDidLoad()
        self.clearsSelectionOnViewWillAppear = false
        
//        let tapUnit = UITapGestureRecognizer(target: self, action: #selector(DistanceUnitTableViewController.toggleUnit))
//        kmUnit.addGestureRecognizer(tapUnit)
//        mUnit.addGestureRecognizer(tapUnit)
    }
    
    
    // togglesUnit
    @objc func toggleUnit(sender:UITapGestureRecognizer) {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 // Kilometers tapped
        {
            UserDefaults.standard.set("Km", forKey: "unitType")
        }
        else if indexPath.row == 1 // Miles tapped
        {
            UserDefaults.standard.set("M", forKey: "unitType")
        }
        self.performSegue(withIdentifier: "unwindToVC1", sender: self)
        // navigationController?.popViewController(animated: true)
    }
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
