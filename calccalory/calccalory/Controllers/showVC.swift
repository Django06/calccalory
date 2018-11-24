//
//  ViewController3.swift
//  calccalory
//
//  Created by Mourad on 22/11/2018.
//  Copyright © 2018 Mourad. All rights reserved.
//

import UIKit

class showVC: UIViewController {
    
 var ctrle : Double!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var getwithloswith: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        result.text = "you need :\(ctrle!) Cal"
        getwithloswith.text = "to lose Weight :\(ctrle!-500) cal  to get Weight : \(ctrle!+500) cal "
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
