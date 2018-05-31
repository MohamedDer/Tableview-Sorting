//
//  EmployeeCell.swift
//  TableView Sorting
//
//  Created by Mohamed Derkaoui on 30/05/2018.
//  Copyright © 2018 Mohamed Derkaoui. All rights reserved.
//

import UIKit

class EmployeeCell: UITableViewCell {
    
    let nameLabel = UILabel()
    let salaryLabel = UILabel()
    let birthyearLabel = UILabel()

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:)")
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        nameLabel.frame = CGRect(x: 5, y: 5, width: 190, height: 20)
        salaryLabel.frame = CGRect(x: 250, y: 5, width: 150, height: 20)
        birthyearLabel.frame = CGRect(x: 5, y: 35, width: 150, height: 20)

        contentView.addSubview(nameLabel)
        contentView.addSubview(salaryLabel)
        contentView.addSubview(birthyearLabel)
        
    }
    
}
