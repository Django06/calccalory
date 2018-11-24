//
//  ViewController2.swift
//  calccalory
//
//  Created by Mourad on 22/11/2018.
//  Copyright © 2018 Mourad. All rights reserved.
//

import UIKit

class calcVC: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    var numberofweek = ["Sedentary (0-1)time/week ","Lightly Active (2-3)time/week ","Moderately Active (4-5)time/week","Very Active +6 time/week"]
    var sex = ["Male","Famel"]
    var selectedsex = 0
    var selectednweek = 0
    var BMR :Double?
    var result :Double?
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
    
  
    @IBOutlet weak var calcbut: bottonborder2!
    @IBAction func calcbutttap(_ sender: Any) {
        let kg  = Double(laKG.text!)!
        let cm = Double(laCM.text!)!
        let age = Int(laAge.text!)!
        
        
        BMR = getBMR(kg: kg, cm: cm, age: age)
        result = getResult(selectednweek: selectednweek, BMR: BMR!)
        calcbut.isEnabled=true
    }
    
    
    
    func getBMR (kg:Double,cm:Double,age:Int) -> Double{
        if selectedsex == 0 {
             BMR = 66 + (6.3 * ( Double(kg) * 2.20 )) + (12.9 * ( Double(cm) * 0.40 )) - (Double(age) * 6.8)
        } else{
            BMR = 655 + (4.3  * ( Double(kg) * 2.20 )) + (4.7 * ( Double(cm) * 0.40 )) - (Double(age) * 4.7)
            
        }
        
        
      return BMR!
    }
    func getResult(selectednweek:Int, BMR:Double) -> Double {
        
        if selectednweek == 0 {
            return BMR * 1.2
        } else if selectednweek == 1 {
            return BMR * 1.375
        } else if selectednweek == 2 {
            return BMR * 1.55
        } else  {
            return BMR * 1.725
        }
    }
    
    @IBAction func buttresult(_ sender: Any) {
        performSegue(withIdentifier: "show", sender: nil)
        
        print(BMR!)
        print(result!)
        
        }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? showVC {
            destination.ctrle = ceil(result!)
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
}
