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
        
        changeColorView.layer.cornerRadius = 15
        
        redColorSlider.tintColor = .red
        greenColorSlider.tintColor = .green
        
        setColor()
        setValue(for: saturationRedLabel, saturationGreenLabel, saturationBlueLabel)
        
    }

    // Change colors
    @IBAction func colorSliderChange(_ sender: UISlider) {
        switch sender.tag {
        case 0: saturationRedLabel.text = string(from: sender)
        case 1: saturationGreenLabel.text = string(from: sender)
        case 2: saturationBlueLabel.text = string(from: sender)
        default: break
        }
        
        setColor()
    }
    
    private func setColor() {
            changeColorView.backgroundColor = UIColor(
                red: CGFloat(redColorSlider.value),
                green: CGFloat(greenColorSlider.value),
                blue: CGFloat(blueColorSlider.value),
                alpha: 1
            )
        }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label.tag {
            case 0: saturationRedLabel.text = string(from: redColorSlider)
            case 1: saturationGreenLabel.text = string(from: greenColorSlider)
            case 2: saturationBlueLabel.text = string(from: blueColorSlider)
            default: break
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

