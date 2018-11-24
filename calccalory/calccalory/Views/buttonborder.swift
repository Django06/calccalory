//
//  buttonborder.swift
//  calccalory
//
//  Created by Mourad on 22/11/2018.
//  Copyright © 2018 Mourad. All rights reserved.
//

import UIKit

class buttonborder: UIButton {
    
    override func awakeFromNib() {
        super .awakeFromNib()
        layer.borderWidth = 1
        layer.borderColor = #colorLiteral(red: 0.9591045976, green: 0.1606014967, blue: 0.3506667614, alpha: 1)
    
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
