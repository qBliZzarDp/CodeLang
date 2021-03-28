//
//  DetailVC.swift
//  CodLang
//
//  Created by Алексей Филатов on 17.03.2021.
//

import UIKit

class DetailVC: UIViewController {
    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var detailInfo: UITextView!
    
    var lang: Language?
        
    override func viewDidLoad() {
        super.viewDidLoad()
       configUI()
    }
    
    func configUI(){
        detailImage.image = lang?.image
        detailImage.layer.masksToBounds = true
        detailImage.layer.cornerRadius = detailImage.bounds.width / 2
        detailLabel.text = lang?.title
        detailInfo.text = lang?.description
        detailInfo.isEditable = false
        detailInfo.isSelectable = false
    }
}
