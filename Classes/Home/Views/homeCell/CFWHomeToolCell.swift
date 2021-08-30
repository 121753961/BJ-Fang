//
//  CFWHomeToolCell.swift
//  CFW-iOS-Swift
//
//  Created by CFW on 2021/6/29.
//

import UIKit


@objc protocol CFWHomeToolCellDelegate {
    func cfw_homeTools(_ cell:CFWHomeToolCell,index:Int)
}

class CFWHomeToolCell: UITableViewCell {
    
    weak var _delegate:CFWHomeToolCellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        

        // Configure the view for the selected state
    }
    
    func navBtnAction(btn:UIButton) -> Void{
        if let delegate = _delegate{
            delegate.cfw_homeTools(self, index: btn.tag)
        }
    }
    
    @IBAction func btnAction(_ sender: UIButton) {
        if let delegate = _delegate{
            delegate.cfw_homeTools(self, index: sender.tag)
        }
    }
    
}
