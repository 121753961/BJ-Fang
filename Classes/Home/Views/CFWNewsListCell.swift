//
//  CFWNewsListCell.swift
//  CFW-iOS-Swift
//
//  Created by CFW on 2021/6/30.
//

import UIKit

class CFWNewsListCell: UITableViewCell {
    
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    
    var model : CFWNewsModel? {
        didSet{
            guard let model = model else {return }
            titleLabel.text = model.title
            let url = URL(string: model.coverImageUrl)
            coverImage.kf.setImage(with: url)
            
            timeLabel.text = Date().bj_dateToTimeStr(time:model.addDate)
            
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.coverImage.layer.masksToBounds = true
        self.coverImage.layer.cornerRadius = 4
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
