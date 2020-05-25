//
//  ViewController.swift
//  MyThirdApp
//
//  Created by Виталик Молоков on 25.05.2020.
//  Copyright © 2020 Виталик Молоков. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeColorView: UIView!
    
    @IBOutlet weak var redColorSlider: UISlider!
    @IBOutlet weak var greenColorSlider: UISlider!
    @IBOutlet weak var blueColorSlider: UISlider!
    
    @IBOutlet weak var saturationRedLabel: UILabel!
    @IBOutlet weak var saturationGreenLabel: UILabel!
    @IBOutlet weak var saturationBlueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        redColorSlider.minimumValue = 0
        redColorSlider.maximumValue = 1
        redColorSlider.tintColor = .red
        
        greenColorSlider.minimumValue = 0
        greenColorSlider.maximumValue = 1
        greenColorSlider.tintColor = .green
        
        blueColorSlider.minimumValue = 0
        blueColorSlider.maximumValue = 1
        blueColorSlider.tintColor = .blue
        
    }
    
    func changeColor() {
        changeColorView.backgroundColor = UIColor(red: CGFloat(redColorSlider.value), green: CGFloat(greenColorSlider.value), blue: CGFloat(blueColorSlider.value), alpha: 1)
    }

    @IBAction func colorSliderChange(_ sender: UISlider) {
        changeColor()
    }
    
    @IBAction func valueLabelChange(_ sender: Any) {
        saturationRedLabel.text = String(redColorSlider.value)
        saturationGreenLabel.text = String(greenColorSlider.value)
        saturationBlueLabel.text = String(blueColorSlider.value)
    }
    
}

