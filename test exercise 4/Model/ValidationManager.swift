//
//  ValidationManager.swift
//  test exercise 4
//
//  Created by Vladimir Gorbunov on 10.05.2021.
//

import Foundation

struct ValidationManager {
    
    func isValidLenght(_ input: String) -> Bool {
        let pattern = ".{3,32}"
        let predicate = NSPredicate(format:"SELF MATCHES %@", pattern)
        return predicate.evaluate(with: input)    }
    
    func isValidNicknameLetters (_ input: String) -> Bool {
        let pattern = "[a-zA-Z\\d.-]+"
        let predicate = NSPredicate(format:"SELF MATCHES %@", pattern)
        return predicate.evaluate(with: input)
    }
    
    func isValidNicknameFirstLetter (_ input: String) -> Bool {
        let pattern = "^[a-zA-Z]+.*"
        let predicate = NSPredicate(format:"SELF MATCHES %@", pattern)
        return predicate.evaluate(with: input)
    }
    
    //very wrong email checking, but this is according to the terms of the assignment!!! what doing if email is more than 32 letters?
    func isValidEmail (_ input: String) -> Bool {
        let pattern = "[a-zA-Z]+[a-zA-Z\\d.-]+@[a-zA-Z\\d.-]+\\.[a-zA-Z]{2,64}"
        let predicate = NSPredicate(format:"SELF MATCHES %@", pattern)
        return predicate.evaluate(with: input)
    }    
}
