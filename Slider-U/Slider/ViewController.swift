//
//  ViewController.swift
//  Slider
//
//  Created by dinesh danda on 23.09.16.
//  Copyright © 2016 dinesh danda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // ui obj
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    var alphaSlider: UISlider!
    @IBOutlet weak var colorValueLabel: UILabel!
    
    
    // first load func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Slider Programmatically
        alphaSlider = UISlider()
        alphaSlider.frame = CGRect(x: 37, y: 493, width: 300, height: 31)
        alphaSlider.backgroundColor = UIColor.white
        alphaSlider.addTarget(self, action: #selector(slider_action(_:)), for: .valueChanged)
        
        alphaSlider.value = 0.5
        alphaSlider.minimumValue = 0
        alphaSlider.maximumValue = 1
        
        alphaSlider.minimumValueImage = UIImage()
        alphaSlider.maximumValueImage = UIImage(named: "white.png")
        alphaSlider.isContinuous = true
        
        alphaSlider.minimumTrackTintColor = UIColor.groupTableViewBackground
        alphaSlider.maximumTrackTintColor = UIColor.lightGray
        //alphaSlider.thumbTintColor = .white
        
        self.view.addSubview(alphaSlider)
        
        
        // shortcuts
        // shortcuts
        let red = CGFloat(round(redSlider.value))
        let green = CGFloat(round(greenSlider.value))
        let blue = CGFloat(round(blueSlider.value))
        let alpha = CGFloat(alphaSlider.value)
        
        // show value or color in label
        colorValueLabel.text = "R: \(red)   G: \(green)   B: \(blue)   A: \(alpha)"
        colorValueLabel.backgroundColor = UIColor.white
        
        
        self.view.backgroundColor = UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: alpha)
        
    }
    
    
    // called when did slide
    @IBAction func slider_action(_ sender: AnyObject) {
        print("slided")
        
        // shortcuts
        let red = CGFloat(round(redSlider.value))
        let green = CGFloat(round(greenSlider.value))
        let blue = CGFloat(round(blueSlider.value))
        let alpha = CGFloat(alphaSlider.value)
        
        colorValueLabel.text = "R: \(red)   G: \(green)   B: \(blue)   A:\(alpha)"
        
        self.view.backgroundColor = UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: alpha)
        
    }
    
    
}






