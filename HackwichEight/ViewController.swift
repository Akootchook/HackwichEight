//
//  ViewController.swift
//  HackwichEight
//
//  Created by Berdell Akootchook on 3/9/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    var currentValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderHasMoved(_ sender: Any) {
    
    print("The value of the slider is: \(slider.value) ")
        currentValue = Int(slider.value)
        
    }
    
    
    @IBAction func MyGuessButtonPressed(_ sender: Any) {
        
        let message = "The value is\(currentValue)"
        
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        
        
    }
    
}

