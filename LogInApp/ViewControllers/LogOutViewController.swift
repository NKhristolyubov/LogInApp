//
//  LogOutViewController.swift
//  LogInApp
//
//  Created by Николай Христолюбов on 03.10.2022.
//

import UIKit

class LogOutViewController: UIViewController {
    
    @IBOutlet var welcomeTF: UITextField!
    @IBOutlet var logOutButton: UIButton!
    
    var userTF: User!
    
    override func viewDidLoad() {
        welcomeTF.text = "Welkome, \(userTF.user)!"
    }
 
}
