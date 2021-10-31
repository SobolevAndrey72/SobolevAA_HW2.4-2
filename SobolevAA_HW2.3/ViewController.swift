//
//  ViewController.swift
//  SobolevAA_HW2.3
//
//  Created by Андрей Соболев on 26.10.2021.
//

import UIKit

class ViewController: UIViewController {

      
    @IBOutlet var UserName: UITextField!
    @IBOutlet var Password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        //        let userName = UserName.text ?? ""
    }

    @IBAction func TouchLogin(_ sender: Any) {
    }
    
    @IBAction func ValidNamePassword(_ sender: Any) {
        if UserName.text == "User" && Password.text == "Password" {
            
        }
        else {
            
            let alert = UIAlertController(title: "Alert!", message: "Incorrect User Name or password.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)

        }
    }
    
    // Создаем модель
    let userData = UserData.getUserData()

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
            let tabBarController = segue.destination as! UITabBarController
            let settingVC = tabBarController.viewControllers?.first as! WelcomeUserViewController
            let navigationVC = tabBarController.viewControllers?.last as! UINavigationController
            let aboutUserVC = navigationVC.topViewController as! AboutUserViewController
        // посредники
        // userData.login == UserName.text
         settingVC.userData = userData
         aboutUserVC.userData = userData
     }

//    let tabBarController = segue.destination as! UITabBarController
//    let welcomeVC = tabBarController.viewControllers?.first as! WelcomeViewController
//    let navigationVC = tabBarController.viewControllers?.last as! UINavigationController
//    let aboutUserVC = navigationVC.topViewController as! AboutMeViewController
//    welcomeVC.user = user
//    aboutUserVC.user = user
    
    
//        guard let settingsVC = segue.destination as? WelcomeUserViewController
//        else { return }
//        // посредники
//        settingsVC.userName = UserName.text

    
    
    @IBAction func ShowPassword(_ sender: Any) {
        // create the alert
        let alert = UIAlertController(title: "Remainder :", message: "Your password - Password .", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func ShowName(_ sender: Any) {
        // create the alert
        let alert = UIAlertController(title: "Remainder :", message: "Your Name - User .", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }

    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        // print("Debug-Debug-Debug")
        UserName.text  = ""
        Password.text  = ""
    }
}

