//
//  WelcomeUserViewController.swift
//  SobolevAA_HW2.3
//
//  Created by Андрей Соболев on 26.10.2021.
//

import UIKit

class WelcomeUserViewController: UIViewController {

 //   @IBOutlet var Welcome: UIView!
    
    @IBOutlet var Welcome: UILabel!
    
    var userName: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Момент истины
        Welcome.text = userName + "!"
    }
    

}
