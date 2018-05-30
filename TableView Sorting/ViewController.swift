//
//  ViewController.swift
//  TableView Sorting
//
//  Created by Mohamed Derkaoui on 30/05/2018.
//  Copyright © 2018 Mohamed Derkaoui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let employeeDirectory = EmployeeDirectory()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        employeeDirectory.update()
        
    }


}

extension ViewController: UITabBarDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let employeeCell = UITableViewCell(style: .default, reuseIdentifier: "")
        employeeCell.textLabel?.text = ""
        return employeeCell
    }
    
    
}

