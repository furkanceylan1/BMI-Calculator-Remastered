//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Furkan Ceylan on 6.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderValueChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + " m"
    }
    
    @IBAction func weightSliderValueChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.f", sender.value) + " kg"
    }
}

