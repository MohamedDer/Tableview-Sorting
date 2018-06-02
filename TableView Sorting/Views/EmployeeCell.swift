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
    
    let backgroundColors = [UIColor.red,UIColor.green,UIColor.yellow,UIColor.orange,UIColor.blue,UIColor.brown]

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:)")
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(nameLabel)
        contentView.addSubview(salaryLabel)
        contentView.addSubview(birthyearLabel)
        
        self.backgroundColor = backgroundColors[Int(arc4random_uniform(UInt32(backgroundColors.count)))].withAlphaComponent(0.4)
        
        let randomStyle = Int(arc4random_uniform(3))
        
        switch randomStyle {
            case 0:
                nameLabel.frame = CGRect(x: 5, y: 5, width: 190, height: 20)
                salaryLabel.frame = CGRect(x: 250, y: 5, width: 150, height: 20)
                birthyearLabel.frame = CGRect(x: 5, y: 35, width: 150, height: 20)
            case 1:
                nameLabel.frame = CGRect(x: 120, y: 5, width: 270, height: 20)
                salaryLabel.frame = CGRect(x: 210, y: 35, width: 150, height: 20)
                birthyearLabel.frame = CGRect(x: 25, y: 35, width: 150, height: 20)
                nameLabel.font = UIFont(name: "Helvetica", size: 22)
            default:
                nameLabel.frame = CGRect(x: 5, y: 2, width: 190, height: 20)
                salaryLabel.frame = CGRect(x: 5, y: 22, width: 150, height: 20)
                birthyearLabel.frame = CGRect(x: 5, y: 41, width: 150, height: 20)
            
        
        }
        
    }
    
}
