//
//  CountryCell.swift
//  CountryPicker
//
//  Created by Jerwin on 24/05/2019.
//  Copyright © 2019 WebAppVentures. All rights reserved.
//

import UIKit

class CountryCell: UITableViewCell {
    
    var nameLabel: UILabel?
    var dialingCodeLabel: UILabel?
    
    var country: Country? {
        didSet {
            if let name = country!.name {
                nameLabel?.text = "\(name)"
                dialingCodeLabel?.text = "+\(country!.countryCode)"
            }
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func prepareForReuse() {
        self.nameLabel?.text = ""
        self.dialingCodeLabel?.text = ""
    }
    
    func setup() {
        
        nameLabel = UILabel()
        nameLabel?.textColor = UIColor.black
        nameLabel?.font = UIFont.systemFont(ofSize: 20)
        nameLabel?.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(nameLabel!)
        
        nameLabel?.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        nameLabel?.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        
        dialingCodeLabel = UILabel()
        dialingCodeLabel?.textColor = UIColor.gray
        dialingCodeLabel?.font = UIFont.systemFont(ofSize: 18)
        dialingCodeLabel?.translatesAutoresizingMaskIntoConstraints = false
        addSubview(dialingCodeLabel!)
        dialingCodeLabel?.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        dialingCodeLabel?.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15).isActive = true
    }
}
