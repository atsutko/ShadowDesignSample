//
//  ShadowTableViewCell.swift
//  ShadowDesignSample
//
//  Created by TakaoAtsushi on 2019/03/01.
//  Copyright © 2019 TakaoAtsushi. All rights reserved.
//

import UIKit

class ShadowTableViewCell: UITableViewCell {
    
    //weak：　弱参照
    @IBOutlet weak var baseView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        // BaseView
        baseView.layer.cornerRadius = 8.0
        baseView.layer.shadowColor = UIColor.black.cgColor
        baseView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        baseView.layer.shadowOpacity = 0.2
        baseView.layer.shadowRadius = 4.0
        baseView.layer.masksToBounds = false
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
