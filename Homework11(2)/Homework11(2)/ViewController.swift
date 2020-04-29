//
//  ViewController.swift
//  Homework11(2)
//
//  Created by Kato on 4/29/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstName = ""
    var lastName = ""
    var email = ""
    
    var info: [String] = []
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var genderTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    @IBAction func onButtonTapped(_ sender: UIButton)   {
        
        firstName = firstNameTextField.text!
        lastName = lastNameTextField.text!
        email = emailTextField.text!
        
        info.append(firstName)
        info.append(lastName)
        info.append(email)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let infoVC = storyboard.instantiateViewController(withIdentifier: "info_vc")
        
        if let realinfoVC = infoVC as? TableViewController {
            realinfoVC.finalFirstName = firstName
            realinfoVC.finalLastName = lastName
            realinfoVC.finalEmail = email
            realinfoVC.finalInfo = info
        }
        
        //present(infoVC, animated: true, completion: nil)
        
    }
    
    
    @IBAction func onListTapped(_ sender: UIBarButtonItem) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let infoVC = storyboard.instantiateViewController(withIdentifier: "info_vc")
        
        self.navigationController?.pushViewController(infoVC, animated: true)
        
    }
    
    
    
}




