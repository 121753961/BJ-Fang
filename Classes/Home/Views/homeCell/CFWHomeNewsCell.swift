//
//  CFWHomeNewsCell.swift
//  CFW-iOS-Swift
//
//  Created by CFW on 2021/6/30.
//

import UIKit

class CFWHomeNewsCell: UITableViewCell {
    
    @IBOutlet weak var news_1_picView: UIImageView!
    @IBOutlet weak var news_1_tagLabel: UILabel!
    @IBOutlet weak var news_1_titleLabel: UILabel!
    
    @IBOutlet weak var news_2_titleLabel: UILabel!
    @IBOutlet weak var news_3_titleLabel: UILabel!
    
    
    var newsList : [CFWNewsModel]?{
        didSet{
            guard let newsList = newsList else { return }
            guard newsList.count > 0 else{ return }
            let news_1 = newsList[0]
            
//            let url = URL(string: "https://tu.07358.com"+model.coverPic)
//            coverpic.kf.setImage(with: url)
            let url = URL(string: news_1.coverImage)
            news_1_picView.kf.setImage(with: url)
            
            news_1_titleLabel.text = news_1.title
            news_1_tagLabel.text = news_1.name
            
            guard newsList.count > 1 else{ return }
            let news_2 = newsList[1]
            news_2_titleLabel.text = news_2.title
//            print(news_2.title)
            
            guard newsList.count > 2 else{ return }
            let news_3 = newsList[2]
            news_3_titleLabel.text = news_3.title
//            print(news_3.title)
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
