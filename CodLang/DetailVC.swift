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
    
    var deImage: UIImage?
    var deLabel = ""
    var deInfo = ""
        
    override func viewDidLoad() {
        super.viewDidLoad()
       configUI()
    }
    
    func configUI(){
        detailImage.image = deImage
        detailLabel.text = deLabel
        detailInfo.isEditable = false
        detailInfo.isSelectable = false
        detailInfo.text = deInfo
    }
}
