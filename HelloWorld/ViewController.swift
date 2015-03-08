//
//  ViewController.swift
//  HelloWorld
//
//  Created by Rohan Venapusala on 3/4/15.
//  Copyright (c) 2015 Rohan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainText: UILabel!
    
    @IBOutlet var mainTextInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainTextInput.placeholder = "name";
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func updateView(inputField: UITextField) {
        mainText.text = "hi " + inputField.text;
        inputField.text = "";
    }
    
    func reset(){
        mainText.text = "Enter Your Name";
        mainTextInput.text = "";
        mainTextInput.placeholder = "name";
    }
    
    @IBAction func resetView(sender: AnyObject) {
        reset()
    }
    
}

