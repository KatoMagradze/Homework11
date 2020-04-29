//
//  TableViewController.swift
//  Homework11(2)
//
//  Created by Kato on 4/29/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    
    
    var finalFirstName = ""
    var finalLastName = ""
    var finalEmail = ""
    
    var finalInfo: [String] = []

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    

}


extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return finalInfo.count/3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_identifier", for: indexPath) as! CustomTableViewCell
        
        
        cell.firstNameLabel.text = finalFirstName
        cell.lastNameLabel.text = finalLastName
        cell.emailLabel.text = finalEmail
        
        return cell
    }
}
