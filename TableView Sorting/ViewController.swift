//
//  ViewController.swift
//  TableView Sorting
//
//  Created by Mohamed Derkaoui on 30/05/2018.
//  Copyright © 2018 Mohamed Derkaoui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var tableView: UITableView!
    let employeeDirectory = EmployeeDirectory()
    var myEmployees: [Employee]?
    
// MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        employeeDirectory.update()

        while employeeDirectory.isUpdating {
            tableView.reloadData()
        }
        
        myEmployees = employeeDirectory.employees
    }
    
// MARK: User Interaction
    
    @IBAction func sortByNameButton(_ sender: Any) {
        myEmployees = myEmployees?.sorted{ $0.name < $1.name }
        tableView.reloadData()
    }
}


// MARK: TableView Delegate and DataSource

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myEmployees?.count ?? 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmployeeCell", for: indexPath) as! EmployeeCell
        cell.nameLabel.text = myEmployees?[indexPath.row].getName()
        cell.birthYearLabel.text = "\(myEmployees?[indexPath.row].getBirthYear() ?? 1996)"
        cell.salaryLabel.text = myEmployees?[indexPath.row].getSalary()
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}







