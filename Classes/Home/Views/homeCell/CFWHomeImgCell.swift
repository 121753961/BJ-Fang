//
//  CFWHomeImgCell.swift
//  CFW-iOS-Swift
//
//  Created by CFW on 2021/6/29.
//

import UIKit
import ImageSlideshow

class CFWHomeImgCell: UITableViewCell {
    
    @IBOutlet weak var imageSlideshow: ImageSlideshow!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageSlideshow.zoomEnabled = false
//        imageSlideshow.circular = false
        imageSlideshow.contentScaleMode = .scaleAspectFill
        imageSlideshow.activityIndicator = DefaultActivityIndicator()
        imageSlideshow.slideshowInterval = 2.5
        
        let kingfisherSource = [KingfisherSource(urlString: "https://tu.07358.com/cfw/20210513212420_20t_07.jpg")!, KingfisherSource(urlString: "https://tu.07358.com/cfw/2021062184632_32t_09.jpg")!, KingfisherSource(urlString: "https://tu.07358.com/cfw/2021051018156_13t_07.jpg")!, KingfisherSource(urlString: "https://tu.07358.com/cfw/2021050512384_4t_06.jpg")!]
        imageSlideshow.setImageInputs(kingfisherSource)

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
