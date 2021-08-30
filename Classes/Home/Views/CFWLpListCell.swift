//
//  CFWLpListCell.swift
//  CFW-iOS-Swift
//
//  Created by CFW on 2021/6/29.
//

import UIKit
import Kingfisher

class CFWLpListCell: UITableViewCell {
    
    @IBOutlet weak var coverpic: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var staeteLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var zmhxLabel: UILabel!
    @IBOutlet weak var promotionView: UIView!
    @IBOutlet weak var promotionLabel: UILabel!
    @IBOutlet weak var traitLabel: UILabel!
    @IBOutlet weak var tefangView: UIView!
    
    var model: CFWLpModel? {
           didSet {
            guard let model = model else {return}
            nameLabel.text = model.name
            staeteLabel.text = model.status
            priceLabel.text = model.price + "元/㎡"
            zmhxLabel.text = !model.zlhx.isEmpty ? "建面"+model.zlhx : ""
            traitLabel.text = "\(model.bk) \(model.trait)"
            let url = URL(string: "https://tu.07358.com"+model.coverPic)
            coverpic.kf.setImage(with: url)
            
            if(!model.promotion.isEmpty){
                promotionLabel.text = model.promotion
                promotionView.isHidden = false
                tefangView.isHidden = true
            }else{
                promotionView.isHidden = true
                tefangView.isHidden = false
            }
            

           }
       }

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.coverpic.layer.masksToBounds = true
        self.coverpic.layer.cornerRadius = 4
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
