//
//  ViewController.swift
//  HackwichEight
//
//  Created by Marion Ano on 3/9/21.
//  Copyright © 2021 Marion Ano. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
// viewcontroller
    @IBOutlet weak var slider: UISlider!
    //IBOulet for slider
    var currentValue = 0
    //creates var of "currentValue"
    var targetValue = 0
    //creates var of"targetValue"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        currentValue = Int(slider.value)
        //sets number of slider
        targetValue = Int.random(in: 0...100)
       //sets value of slider from 0-100
   
        
        
            //set image to slider
        let thumbImageNormal = UIImage(named: "SliderTumb-Normal")
        slider.normal
        //sets image of the icon
        
        
    }
    
    @IBAction func sliderHasMoved(_ sender: Any) {
        //when the slider moves then do this
        print("The value of the slider is: \(slider.value)")
        currentValue = Int(slider.value)
    //shows value of slider
    }

    @IBAction func myGuessButtonPressed(_ sender: Any) {
        //when button is pressed do this
        let message = "The value is\(currentValue)"
        //when slider is set the currentValue is xxx
        let alert = UIAlertController(title: "Hello World", message: message , preferredStyle: .alert)
        //message or Hello World
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        //displays "awesome"
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
}
//
