//
//  ViewController.swift
//  Task_2_19_Nov
//
//  Created by Digvijay Nikam on 19/11/22.
//

import UIKit

class ViewController: UIViewController {

   
    
    @IBOutlet weak var SwitchBtn: UISwitch!
    @IBOutlet weak var firstVCLabel: UILabel!
    @IBOutlet weak var secondVCLabel: UILabel!
    @IBOutlet weak var thirdVCLabel: UILabel!
    @IBOutlet weak var forthVCLabel: UILabel!
    @IBOutlet weak var UiView: UIView!
    
    
    @IBOutlet weak var FirstVCTextField: UITextField!
    @IBOutlet weak var SecondVCTextField: UITextField!
    
    @IBOutlet weak var ThirdVCTextField: UITextField!
    
    @IBOutlet weak var ForthVCTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func SwitchOnOfBtn(_ sender: Any){
        
        if SwitchBtn.isOn == true{
            self.UiView.isHidden = false
        }else {
            self.UiView.isHidden = true
        }
    }
    
    @IBAction func FirstVCBtn(_ sender: Any) {
        let secondvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        let dataToPassed1 = self.FirstVCTextField.text
        secondvc.dataFromFirstVC1 = dataToPassed1
        let dataToPassed2 = self.SecondVCTextField.text
        secondvc.dataFromFirstVC2 = dataToPassed2
        let dataToPassed3 = self.ThirdVCTextField.text
        secondvc.dataFromFirstVC3 = dataToPassed3
        let dataToPassed4 = self.ForthVCTextField.text
        secondvc.dataFromFirstVC4 = dataToPassed4
    
        navigationController?.pushViewController(secondvc, animated: true)
    }
}
