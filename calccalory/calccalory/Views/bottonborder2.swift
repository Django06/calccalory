//
//  bottonborder2.swift
//  calccalory
//
//  Created by Mourad on 24/11/2018.
//  Copyright © 2018 Mourad. All rights reserved.
//

import UIKit

class bottonborder2: UIButton {

    override func awakeFromNib() {
        super .awakeFromNib()
        layer.borderWidth = 1
        layer.borderColor = UIColor.white.cgColor
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
