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
        mainTextField.text = "SomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareTextSomeWarfareText"
        textFieldAlphaChange()
    }
    
    @IBAction func Defence(_ sender: Any) {
        topLabel.text = "Defence"
        mainTextField.text = "SomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceTextSomeDefenceText"
        textFieldAlphaChange()
    }
 
    @IBAction func Intercessiory(_ sender: Any) {
        topLabel.text = "Intercessiory"
        mainTextField.text = "SomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryTextSomeIntercessioryText"
        textFieldAlphaChange()
    }
    
    var doubleTap: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        doubleTap = UITapGestureRecognizer(target: self,
                                            action: #selector(ViewController.handleDoubleTap))
        doubleTap.numberOfTapsRequired = 2
        mainTextField.addGestureRecognizer(doubleTap)
        mainTextField.delegate = self
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

typealias SomeAnimationsandTouchEvents = ViewController
extension SomeAnimationsandTouchEvents {
    

    
    func handleDoubleTap(_ gestureRecognizer: UIGestureRecognizer) {
        mainTextField.text = nil
        topLabel.text = nil
    }
    

    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        self.topView.isHidden = true
        self.bottomView.isHidden = true
        self.mainTextField.font = self.mainTextField.font?.withSize(32)
    }
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        self.topView.isHidden = false
        self.bottomView.isHidden = false
        self.mainTextField.font = self.mainTextField.font?.withSize(30)
}
    func textFieldAlphaChange() {
        UIView.animate(withDuration: 0.4, animations: {
            self.mainTextField.alpha = 0
        }, completion: nil)
        UIView.animate(withDuration: 0.4, animations: {
            self.mainTextField.alpha = 1
        }, completion: nil)
    }

}
