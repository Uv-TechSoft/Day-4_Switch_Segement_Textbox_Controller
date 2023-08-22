//
//  ViewController.swift
//  Controller
//
//  Created by Yogesh Patel on 12/10/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var btnSegment: UISegmentedControl!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var fnameTextField: UITextField!
    @IBOutlet weak var lnameTextField: UITextField!
    @IBOutlet weak var btnSlider: UISlider!
    @IBOutlet weak var btnStepper: UIStepper!
    @IBOutlet weak var btnSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fnameTextField.delegate = self
        lnameTextField.delegate = self
        print(#function)
        btnSlider.value = 5
        btnStepper.minimumValue = 0
        btnStepper.maximumValue = 20
        btnStepper.stepValue = 5
        btnStepper.value = 5
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
        }


    @IBAction func btnSwitchTapped(_ sender: UISwitch) {
//        if (sender as? UISwitch)!.isOn{
        if sender.isOn{
            self.view.backgroundColor = .brown
        }else{
            self.view.backgroundColor = .white
        }
    }
    
    @IBAction func btnStepperTapped(_ sender: UIStepper) {
        print(Int(sender.value))
    }
    
    @IBAction func btnSliderTapped(_ sender: UISlider) {
        print(Int(btnSlider.value))
    }
    
    @IBAction func btnSaveTapped(_ sender: UIButton) {
      //  print(btnSlider.value)
      //  print(btnSwitch.isOn)
//        fnameTextField.resignFirstResponder()
//        lnameTextField.resignFirstResponder()
        let v1 = Int(fnameTextField.text ?? "") ?? 0
        let v2 = Int(lnameTextField.text ?? "") ?? 0
        print(v1)
        print(v2)
        print(v1 + v2)
        self.view.endEditing(true)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
        print("Editing Start")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        print("Edinting Ended")
    }
    
    @IBAction func btnSegmentTapped(_ sender: UISegmentedControl) {
        //Switch case ma convert kri dejo
        if sender.selectedSegmentIndex == 0{
            img.image = UIImage(named: "cute1")
        }else if sender.selectedSegmentIndex == 1{
            img.image = UIImage(named: "cute2")
        }else{
            img.image = UIImage(named: "cute3")
        }
    }
    
}

/*
 Textfield
 textfield value change thay aem print thavu joie (textfield.text)
 
 FirstNameTextfield - 1
 LastNameTextfield - 1
 
 print(2) // Addition
 
 check empty condition - Banne jode textfield ma value hase to j addition thase.
 */

/*
 SOLUTIONS
 1. ADD TARGET
 2. ACTION
 */

/*
 Task 2 - Convert Segment if else to switch case.
 */
