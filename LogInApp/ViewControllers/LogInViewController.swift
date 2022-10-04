//
//  ViewController.swift
//  LogInApp
//
//  Created by Николай Христолюбов on 02.10.2022.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    private let user = User.getUser()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else {return}
        guard let tabBarControllers = tabBarController.viewControllers else {return}
        
        for _ in tabBarControllers {
            if let logOutVC = segue.destination as? LogOutViewController {
                logOutVC.userTF = user
            } else if let navigationVC = segue.destination as? UINavigationController{
                let infoVC = navigationVC.topViewController as! MoreInfoViewController
                infoVC.info = user
                
            }
        }
    }
        
        
        //let logOutVC = segue.destination as! LogOutViewController
    
    
    @IBAction func logInButtonPressed() {
        if userNameTF.text != user.user || passwordTF.text != user.password {
            showAlert(
                title: "Wrong user name or password!",
                message: "Please, try again.",
                textField: passwordTF)
        }
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        if sender.tag == 0 {
            showAlert(title: "Oops!", message: "Your user name is \(user.user)😉")
        } else {
            showAlert(title: "Oops!", message: "Your password is \(user.password)😉")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

extension LogInViewController {
    private func showAlert (title: String, message: String, textField: UITextField! = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
}

