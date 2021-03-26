//
//  CustomCell.swift
//  CodLang
//
//  Created by Алексей Филатов on 19.03.2021.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
    super.layoutSubviews()
    cellImage.layer.masksToBounds = true
    cellImage.layer.cornerRadius = cellImage.bounds.width / 2
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
