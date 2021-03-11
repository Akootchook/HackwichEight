//
//  ViewController.swift
//  HackwichEight
//
//  Created by Berdell Akootchook on 3/9/21.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    var currentValue = 50
    
    var targetValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.value = 50
        
        // Do any additional setup after loading the view.
        currentValue = Int(slider.value)
        //Int has an instance method called random
        targetValue = Int.random(in: 0...100)
    }
    
    @IBAction func sliderHasMoved(_ sender: Any) {
        
        print("The value of the slider is: \(slider.value)")
        currentValue = Int(slider.value)
    
    }

    //function to start a new round so that we get a new target value
    
    @IBOutlet weak var targetLabel: UILabel!
    func startNewRound(){
        
        
        targetValue = Int.random(in: 0...100)
        currentValue = Int(slider.value)
        
    }
    
    @IBAction func myGuessButtonPressed(_ sender: Any) {
        
        
        func updateTarget
        
        
        
        let message = "The value is\(currentValue)" + " \n The Target value is: \(targetValue)"
        
        let alert = UIAlertController(title: "Hello World", message: message , preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
}
