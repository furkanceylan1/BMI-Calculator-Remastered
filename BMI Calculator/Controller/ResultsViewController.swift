//
//  CalculateViewController.swift
//  BMI Calculator
//
//  Created by Furkan Ceylan on 14.04.2024.
//

import UIKit

class ResultsViewController: UIViewController {
    // MARK: - UI Elements
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // MARK: - Properties
    var result: Float = 0.0
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateResult()
    }
    
    // MARK: - Functions
    
    func updateResult() {
        
        resultLabel.text = String(format: "%.2f", result)
        
        switch result {
        case ..<18.5:
            descriptionLabel.text = "Underweight"
        case 18.5..<25.0:
            descriptionLabel.text = "Normal weight"
        case 25.0..<30.0:
            descriptionLabel.text = "Overweight"
        default:
            descriptionLabel.text = "Obese"
        }
    }
    
    // MARK: - Actions
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    

}
