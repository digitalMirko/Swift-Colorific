//
//  ColorViewController.swift
//  Colorific
//
//  Created by Mirko Cukich on 9/7/15.
//  Copyright © 2015 Digital Mirko. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
    
    // label on colored background
    @IBOutlet var colorLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // take which ever color is chosen and print out its color on the label
    // update: displaying the color labels in spanish now
    override func viewWillAppear(animated: Bool) {
        if self.view.backgroundColor == UIColor.redColor() {
            
            // change text of color label
//            self.colorLabel.text = "RED!"
            self.colorLabel.text = "ROJO!"
            
        } else if self.view.backgroundColor == UIColor.blueColor() {
            
            // change text of color label
//            self.colorLabel.text = "BLUE!"
            self.colorLabel.text = "AZUL!"
            
        } else if self.view.backgroundColor == UIColor.greenColor() {
            
            // change text of color label
//            self.colorLabel.text = "GREEN!"
            self.colorLabel.text = "VERDE!"
            
        } else if self.view.backgroundColor == UIColor.purpleColor() {
            
            // change text of color label
//            self.colorLabel.text = "PURPLE!"
            self.colorLabel.text = "MORADO!"
            
        } else if self.view.backgroundColor ==  UIColor(red: 255/255, green: 0/255, blue: 128/255, alpha: 1.0) {
            
            // change text of color label
//            self.colorLabel.text = "PINK!"
            self.colorLabel.text = "ROSA!"
            
        } else if self.view.backgroundColor ==  UIColor.yellowColor() {
            
            // change text of color label
//            self.colorLabel.text = "YELLOW!"
            self.colorLabel.text = "AMARILLO!"
        }

        
    }

}
