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
        let cell = EmployeeCell(style: UITableViewCellStyle.default, reuseIdentifier: "EmployeeCell")
        
        
        cell.nameLabel.text = "Name : \(myEmployees?[indexPath.row].getName() ?? "")"
        cell.birthyearLabel.text = "Birth Year: \(myEmployees?[indexPath.row].getBirthYear() ?? 1996)"
        cell.salaryLabel.text = "Salary : \(myEmployees?[indexPath.row].getSalary() ?? "" )"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}







