//
//  textfeildstyle.swift
//  calccalory
//
//  Created by Mourad on 24/11/2018.
//  Copyright © 2018 Mourad. All rights reserved.
//

import UIKit

class textfeildstyle: UITextField {

    override func awakeFromNib() {
        
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4974047517)
        layer.cornerRadius = 5.0
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
       
        if placeholder == nil {
            placeholder = " "
        }
        let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.59)])
    attributedPlaceholder = place
    }

}
