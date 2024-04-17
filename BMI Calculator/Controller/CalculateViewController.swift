//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Furkan Ceylan on 6.04.2024.
//

import UIKit

class CalculateViewController: UIViewController {
    
    // MARK: - UI Elements
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    // MARK: - Property
    
    var bmi: Float = 0.0

    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Functions
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toCalculateViewController" {
            
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.result = bmi
        }
    }
    
    // MARK: - Actions

    @IBAction func heightSliderValueChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + " m"

    }
    
    @IBAction func weightSliderValueChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.f", sender.value) + " kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        bmi = weight / pow(height, 2)
        
        print(String(format: "%.2f", bmi))
        
        performSegue(withIdentifier: "toCalculateViewController", sender: nil)
    }
}

