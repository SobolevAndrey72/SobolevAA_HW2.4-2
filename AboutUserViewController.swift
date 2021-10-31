//
//  AboutUserViewController.swift
//  SobolevAA_HW2.3
//
//  Created by Андрей Соболев on 31.10.2021.
//

import UIKit

class AboutUserViewController: UIViewController {

    
    var userData:  UserData!
    
    @IBOutlet var Hobby: UILabel!
    @IBOutlet var HobbyText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Hobby.text = userData.hobbys[0].zagolovok
        HobbyText.text = userData.hobbys[0].text
        // Do any additional setup after loading the view.
    }
    
 
}
