//
//  SettingsViewController.swift
//  Places
//
//  Created by José Javier Cueto Mejía on 22/10/20.
//

import UIKit

class SettingsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                print("caso 1")
            default:
                break
            }
        case 1:
            switch indexPath.row {
            case 0:
                print("No hacer nada")
            default:
                break
        }
        default:
            break
     }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
