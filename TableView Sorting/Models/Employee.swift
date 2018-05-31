//
//  Employee.swift
//  TableView Sorting
//
//  Created by Mohamed Derkaoui on 30/05/2018.
//  Copyright © 2018 Mohamed Derkaoui. All rights reserved.
//

import Foundation


class Employee  {
    
    let name: String
    private let birthYear: Int
    private var salary: Int?
    
    private let startingSalary = 1000
    private let salaryCurrency = "EUR"
    
    init(name: String, birthYear: Int) {
        self.name = name
        self.birthYear = birthYear
        self.salary = startingSalary
    }
    
    func getName() -> String { return self.name }
    func getBirthYear() -> Int { return self.birthYear }
    func getSalary() -> String {
        let locale = NSLocale(localeIdentifier: self.salaryCurrency)
        let currencySymbol = locale.displayName(forKey: NSLocale.Key.currencySymbol, value: self.salaryCurrency)!
        return "\(self.salary!) \(currencySymbol)"
    }
    
    func setSalary(newSalary: Int) { self.salary = newSalary }
}
