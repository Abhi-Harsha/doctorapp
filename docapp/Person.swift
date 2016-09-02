//
//  Person.swift
//  docapp
//
//  Created by Abhishek H P on 9/2/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//

import Foundation


class Person {
    private var _name: String!
    
    private var _gender: String?
    
    private var _age: Int?
    
    private var _hasBreathingProblems: Bool?
    
    private var _isDiabetic: Bool?
    
    init(name: String, gender: String, age: Int, breathingProblem: Bool, diabetic: Bool){
        self._name = name
        self._gender = gender
        self._age = age
        self._hasBreathingProblems = breathingProblem
        self._isDiabetic = diabetic
    }
    
    var PersonName: String {
        return _name
    }
    
    var PersonGender: String {
        if let gender = _gender{
            return gender
        }
        return ""
    }
    
    var PersonAge: Int {
        if let age = _age{
            return age
        }
        return 0
    }
    
    var PersonBreathingProblems: Bool {
        if let breathingprob = _hasBreathingProblems {
            return breathingprob
        }
        return false
    }
    
    var PersonIsDiabetic: Bool {
        if let diabetic = _isDiabetic {
            return diabetic
        }
        return false
    }
    
}