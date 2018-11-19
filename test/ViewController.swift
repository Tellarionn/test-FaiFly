//
//  ViewController.swift
//  test
//
//  Created by Максим  on 11/17/18.
//  Copyright © 2018 Максим . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var button: UIButton!
    
    
    fileprivate func setupTextView() {
        textView.layer.borderColor = UIColor.lightGray.cgColor
        textView.layer.borderWidth = 1
    }
    fileprivate func setupButton() {
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.layer.borderWidth = 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTextView()
        setupButton()
    }
    @IBAction func split(_ sender: UITextField) {
        if let text = textField.text?.split(separator: " "){
            var result:String = ""
            for (index , value) in text.enumerated(){
                result += value + " "
                if (index + 1) % 4 == 0 {
                    result += "\n"
                }
            }
            textView.text = result
        }
    }
    

}

