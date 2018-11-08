//
//  CustomTableViewCell.swift
//  Week3Assessment
//
//  Created by Andrew Beauchamp on 11/8/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import Foundation
import UIKit

class CustomTableViewCell : UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var favoriteThingLabel: UILabel!
    
    func setUP (person: Person) {
        nameLabel.text = person.name
        favoriteThingLabel.text = person.favoriteThing
        
    }
}
