//
//  EmployeeDirectory.swift
//  TableView Sorting
//
//  Created by Mohamed Derkaoui on 30/05/2018.
//  Copyright © 2018 Mohamed Derkaoui. All rights reserved.
//

import Foundation
import PromiseKit


class EmployeeDirectory: NSObject {
    
    
    var employees: [Employee]?
    var isUpdating = false
    
    
    func update() {
        if isUpdating {
            return
        } else {
            isUpdating = true
            DispatchQueue.global(qos: .background).async {
                self.updateEmployeesInTheBackground()
            }
        }
    }
    
    
    func updateEmployeesInTheBackground()   {
        sleep(2)
        let names = ["Anne", "Lucas", "Marc", "Zeus", "Hermes", "Bart", "Paul", "John","Ringo", "Dave", "Taylor"]
        let surnames = ["Hawkins", "Simpson", "Lennon", "Grohl", "Hawkins", "Jacobs",
                        "Holmes", "Mercury", "Matthews"]
        let amount = names.count*surnames.count
        var employees = [Employee]()
        for _ in 1...amount {
            let fullName = "\(names[Int(arc4random_uniform(UInt32(names.count)))]) \(surnames[Int(arc4random_uniform(UInt32(surnames.count)))])"
            employees.append(Employee(name: fullName, birthYear: 1997 - Int(arc4random_uniform(50))))
        }

        self.updateDidFinishWithResults(employees: employees)
    }
    
    
    func updateDidFinishWithResults(employees: [Employee]) {
        self.employees = employees
        self.isUpdating = false
    }

    
}
