//
//  ViewController.swift
//  WordAsSword
//
//  Created by iOS Akademija on 11/14/16.
//  Copyright © 2016 Stefan Lazarevic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    
    @IBOutlet weak var MainTextField: UITextView!
    
    func returnbackMainTextFieldColor() -> Bool {
      //  if MainTextField.touchesBegan()
        return true
    }
    
    
    @IBAction func Warfare(_ sender: Any) {
        print ("IBAction Warfare works")
        MainTextField.textColor = UIColor.lightGray
    }
    
    @IBAction func Defence(_ sender: Any) {
        print ("IBAction Defence works")
        MainTextField.textColor = UIColor.lightGray
    }
 
    @IBAction func Intercessiory(_ sender: Any) {
        print ("IBAction Intercessiory works")
        MainTextField.textColor = UIColor.lightGray
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

