//
//  WelcomeUserViewController.swift
//  SobolevAA_HW2.3
//
//  Created by Андрей Соболев on 26.10.2021.
//

import UIKit

class WelcomeUserViewController: UIViewController {

    @IBOutlet var Welcome: UILabel!
    
 //   var userName: String!
    var userData:  UserData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Момент истины
        // print(userData.userName)
        Welcome.text = userData.userName + " " + userData.userFamily  + "!"
    }

}
