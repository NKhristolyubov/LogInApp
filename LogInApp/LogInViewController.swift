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
    
    private let userName = "Nikolay"
    private let password = "12345"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let logOutVC = segue.destination as! LogOutViewController
        logOutVC.user = userName
    }
    
    @IBAction func logInButtonPressed() {
        if userNameTF.text != userName || passwordTF.text != password {
            showAlert(
                title: "Wrong user name or password!",
                message: "Please, try again.",
                textField: passwordTF)
        }
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        if sender.tag == 0 {
            showAlert(title: "Oops!", message: "Your user name is \(userName)😉")
        } else {
            showAlert(title: "Oops!", message: "Your password is \(password)😉")
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

