//
//  Person.swift
//  docapp
//
//  Created by Abhishek H P on 9/2/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//

import Foundation


class Person: NSObject, NSCoding {
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
    
    var PersonGender: String? {
        if let gender = _gender{
            return gender
        }
        return ""
    }
    
    var PersonAge: Int? {
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
    
    override init(){
        
    }
    
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        self._name = aDecoder.decodeObjectForKey("name") as? String
        self._age = aDecoder.decodeObjectForKey("age") as? Int
        self._gender = aDecoder.decodeObjectForKey("gender") as? String
        self._hasBreathingProblems = aDecoder.decodeObjectForKey("breathingpro") as? Bool
        self._isDiabetic = aDecoder.decodeObjectForKey("isdiabetic") as? Bool
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self._name, forKey: "name")
        aCoder.encodeObject(self._age, forKey: "age")
        aCoder.encodeObject(self._gender, forKey: "gender")
        aCoder.encodeObject(self._hasBreathingProblems, forKey: "breathingpro")
        aCoder.encodeObject(self._isDiabetic, forKey: "isdiabetic")
    }
    
}