//
//  CustomTableViewCell.swift
//  SampleTableView
//
//  Created by dhoney96 on 2022/06/18.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var customImage: UIImageView!
    @IBOutlet weak var customLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
