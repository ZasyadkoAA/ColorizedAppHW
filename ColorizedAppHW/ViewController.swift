//
//  ViewController.swift
//  ColorizedAppHW
//
//  Created by Александр Засядько on 15.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewRGB: UIView!
    @IBOutlet var redPositionLabel: UILabel!
    @IBOutlet var greenPositionLabel: UILabel!
    @IBOutlet var bluePositionLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewRGB.layer.cornerRadius = 20
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
    }

    @IBAction func redSliderAction() {
        redPositionLabel.text = String(format: "%.2f", redSlider.value)
        colorized()
    }
    
    @IBAction func greenSliderAction() {
        greenPositionLabel.text = String(format: "%.2f", greenSlider.value)
        colorized()
    }
    
    @IBAction func blueSliderAction() {
        bluePositionLabel.text = String(format: "%.2f", blueSlider.value)
        colorized()
    }
    
    private func colorized() {
        viewRGB.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        
    }
}

