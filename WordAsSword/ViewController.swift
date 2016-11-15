//
//  ViewController.swift
//  WordAsSword
//
//  Created by iOS Akademija on 11/14/16.
//  Copyright © 2016 Stefan Lazarevic. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var topView: UIView!
    
    @IBOutlet weak var bottomView: UIView!
    
    @IBOutlet var buttons: [UIButton]!
    
    @IBOutlet weak var topLabel: UILabel!

    @IBOutlet weak var mainTextField: UITextView!

    @IBAction func Warfare(_ sender: Any) {
        topLabel.text = "Warfare"
        mainTextField.text = "Warfare"
    }
    
    @IBAction func Defence(_ sender: Any) {
        topLabel.text = "Defence"
        mainTextField.text = "Defence"
    }
 
    @IBAction func Intercessiory(_ sender: Any) {
        topLabel.text = "Intercessiory"
        mainTextField.text = "Intercessiory"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainTextField.delegate = self
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return .none
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


extension ViewController {
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        self.topView.isHidden = true
        self.bottomView.isHidden = true
        self.mainTextField.font = self.mainTextField.font?.withSize(32)
//        self.mainTextField.textColor = UIColor.red
//        UIView.animate(withDuration: 0, animations: {
//        self.mainTextField.font = self.mainTextField.font?.withSize(32)
//        self.mainTextField.textColor = UIColor.red
//         }, completion: nil)
        
    }
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        self.topView.isHidden = false
        self.bottomView.isHidden = false
        self.mainTextField.font = self.mainTextField.font?.withSize(30)
//        self.mainTextField.textColor = UIColor.black
//        UIView.animate(withDuration: 0, animations: {
//        self.mainTextField.font = self.mainTextField.font?.withSize(30)
//        self.mainTextField.textColor = UIColor.black
//             }, completion: nil)
    }
    
}

