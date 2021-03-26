import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellName: UILabel!
    
    override func layoutSubviews() {
    super.layoutSubviews()
    cellImage.layer.masksToBounds = true
    cellImage.layer.cornerRadius = cellImage.bounds.width / 2
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func set(language: Language) {
        cellName.text = language.title
        cellImage.image = language.image
    }
}
