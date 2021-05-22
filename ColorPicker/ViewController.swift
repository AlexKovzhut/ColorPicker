//
//  ViewController.swift
//  ColorPicker
//
//  Created by Alexander Kovzhut on 21.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainColorView: UIView!
    
    @IBOutlet weak var redColorTextField: UITextField!
    @IBOutlet weak var greenColorTextField: UITextField!
    @IBOutlet weak var blueColorTextField: UITextField!
    
    @IBOutlet weak var redColorSlider: UISlider!
    @IBOutlet weak var greenColorSlider: UISlider!
    @IBOutlet weak var blueColorSlider: UISlider!
    @IBOutlet weak var claritySlider: UISlider!
    
    @IBOutlet weak var resetBitton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainColorView.backgroundColor = UIColor.black
    }

    @IBAction func changeColorSlider(_ sender: UISlider) {
        changeMainColorView()
    }
    
    @IBAction func resetPressedButton(_ sender: UIButton) {
        resetAllParameters()
    }
    
    func changeMainColorView() {
        let redScoreField = CGFloat(redColorSlider.value)
        redColorTextField.text = "Red \(String(format: "%0.2f", redScoreField))"
        
        let greenScoreField = CGFloat(greenColorSlider.value)
        greenColorTextField.text = "Green \(String(format: "%0.2f", greenScoreField))"
        
        let blueScoreField = CGFloat(blueColorSlider.value)
        blueColorTextField.text = "Blue \(String(format: "%0.2f", blueScoreField))"
        
        let clarity = CGFloat(claritySlider.value)

        let colorMainView = UIColor(red: redScoreField, green: greenScoreField, blue: blueScoreField, alpha: clarity)
        mainColorView.backgroundColor = colorMainView
    }
    
    func resetAllParameters() {
        mainColorView.backgroundColor = UIColor.black
        
        redColorTextField.text = "Red 0.00"
        greenColorTextField.text = "Green 0.00"
        blueColorTextField.text = "Blue 0.00"
        
        redColorSlider.value = 0
        greenColorSlider.value = 0
        blueColorSlider.value = 0
        claritySlider.value = 1
    }
}

