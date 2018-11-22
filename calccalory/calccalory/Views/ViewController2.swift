//
//  ViewController2.swift
//  calccalory
//
//  Created by Mourad on 22/11/2018.
//  Copyright © 2018 Mourad. All rights reserved.
//

import UIKit

class ViewController2: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    var numberofweek = ["1 to 2","3 to 4","5 to 6","7"]
    var sex = ["Male","Famel"]
    var selectedsex = 0
    var selectednweek = 0
    @IBOutlet weak var picker2: UIPickerView!
    @IBOutlet weak var labelresult: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var laAge: UITextField!
    @IBOutlet weak var laCM: UITextField!
    @IBOutlet weak var laKG: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 0 {
            return numberofweek.count
        }else {
            return sex.count
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 0 {
            selectednweek = row
             return numberofweek[row]
        }else {
            selectedsex = row
             return sex[row]
        }
       
    }
    
    
    
    
    @IBAction func buttresult(_ sender: Any) {
        let kg  = Double(laKG.text!)
        let cm = Double(laCM.text!)
        let age = Int(laAge.text!)
        var BMR :Double?
        var p1 : Double
        var p2 : Double
        var p3 : Double
        if selectedsex == 0 {
            p1 = 6.3 * ( Double(kg!) * 2.20 )
            p2 = 12.9 * ( Double(cm!) * 0.40 )
            p3 = Double(age!) * 6.8
            BMR = 66 + p1 + p2 - p3
        } else
        {    p1 = 4.3  * ( Double(kg!) * 2.20 )
             p2  = 4.7 * ( Double(cm!) * 0.40 )
              p3 = Double(age!) * 4.7
            BMR = 655 + p1 + p2 - p3
      
        }
        
        if selectednweek == 0 {
            BMR = BMR! * 1.2
        } else if selectednweek == 1 {
            BMR = BMR! * 1.375
        } else if selectednweek == 2 {
            BMR = BMR! * 1.55
        }else  {
            BMR = BMR! * 1.725
        }
            
        labelresult.text = " your BMR is \(BMR as Double?)"
        
        
        
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
