//
//  ViewController.swift
//  test exercise 4
//
//  Created by Vladimir Gorbunov on 10.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nicknameOrEmailText: UILabel!
    @IBOutlet weak var lengthText: UILabel!
    @IBOutlet weak var lettersText: UILabel!
    @IBOutlet weak var loginStartText: UILabel!
    @IBOutlet weak var passedText: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    let VM = ValidationManager()
    
    @IBAction func textFieldChanged(_ sender: UITextField) {
        passed(state: false)
        
        if VM.isValidEmail(textField.text!) {
            passed(state: true)
        } else {
            loginStartText.textColor = VM.isValidNicknameFirstLetter(textField.text!) ? .green : .red
            lettersText.textColor  = VM.isValidNicknameLetters(textField.text!) ? .green : .red
            lengthText.textColor = VM.isValidLenght(textField.text!) ? .green : .red
            
            if VM.isValidNicknameFirstLetter(textField.text!), VM.isValidNicknameLetters(textField.text!), VM.isValidLenght(textField.text!) {
                passed(state: true)
            }
        }
    }
    
    func passed(state: Bool) {
        if state {
            passedText.textColor = .green
            nicknameOrEmailText.textColor = .green
            lengthText.isEnabled = !state
            lettersText.isEnabled = !state
            loginStartText.isEnabled = !state
        } else {
            passedText.textColor = .red
            nicknameOrEmailText.textColor = .black
            lengthText.isEnabled = !state
            lettersText.isEnabled = !state
            loginStartText.isEnabled = !state
        }
    }
}

