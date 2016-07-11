//
//  ViewController.swift
//  LightBulb
//
//  Created by Michael Dippery on 6/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lightBulb: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        lightBulb.backgroundColor = UIColor.redColor()
    }

    func changeColor(to color: UIColor) {
        lightBulb.backgroundColor = color
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        let segment = sender.selectedSegmentIndex
        let title = sender.titleForSegmentAtIndex(segment)
        
        switch title! {
            case "Red": changeColor(to: UIColor.redColor())
            case "Yellow": changeColor(to: UIColor.yellowColor())
            case "Blue": changeColor(to: UIColor.blueColor())
            case "Green": changeColor(to: UIColor.greenColor())
            default: changeColor(to: UIColor.clearColor())
        }
        
    }
    
}
