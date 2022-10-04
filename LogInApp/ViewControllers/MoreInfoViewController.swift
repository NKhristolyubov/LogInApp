//
//  MoreInfoViewController.swift
//  LogInApp
//
//  Created by Николай Христолюбов on 04.10.2022.
//

import UIKit

class MoreInfoViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    
    var info: User!
    
    override func viewDidLoad() {
        infoLabel.text = info.person.surname
    }
    
    
}
