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
    
    var deImage = ""
    var deLabel = ""
    var deInfo = ""
        
    override func viewDidLoad() {
        super.viewDidLoad()
        detailImage.image = UIImage(named: deImage)
        detailLabel.text = deLabel
        detailInfo.isEditable = false
        detailInfo.isSelectable = false
        detailInfo.text = deInfo
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
