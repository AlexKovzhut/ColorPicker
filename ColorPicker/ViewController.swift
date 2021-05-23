//
//  ViewController.swift
//  ColorPicker
//
//  Created by Alexander Kovzhut on 21.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainColorView: UIView!
    
    @IBOutlet weak var redColorLabel: UILabel!
    @IBOutlet weak var greenColorLabel: UILabel!
    @IBOutlet weak var blueColorLabel: UILabel!
    
    @IBOutlet weak var redColorSlider: UISlider!
    @IBOutlet weak var greenColorSlider: UISlider!
    @IBOutlet weak var blueColorSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainColorView.backgroundColor = UIColor.black
    }

    @IBAction func changeColorSlider(_ sender: UISlider) {
        changeMainColorView()
    }
    
    func changeMainColorView() {
        
        let redScoreField = CGFloat(redColorSlider.value)
        redColorLabel.text = "\(String(format: "%0.2f", redScoreField))"
        
        let greenScoreField = CGFloat(greenColorSlider.value)
        greenColorLabel.text = "\(String(format: "%0.2f", greenScoreField))"
        
        let blueScoreField = CGFloat(blueColorSlider.value)
        blueColorLabel.text = "\(String(format: "%0.2f", blueScoreField))"

        let colorMainView = UIColor(red: redScoreField, green: greenScoreField, blue: blueScoreField, alpha: 1)
        mainColorView.backgroundColor = colorMainView
    }

}

