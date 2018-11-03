//
//  TableViewCell.swift
//  IOS-Swift-UIFontList
//
//  Created by Pooya on 2018-11-02.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var cellLabelView: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
