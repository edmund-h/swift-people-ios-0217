//
//  person.swift
//  swift-people
//
//  Created by Edmund Holderbaum on 2/2/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    /*
     name, an immutable String,
     ageInYears, a mutable Int optional,
     skills, an empty mutable Array of Strings,
     qualifiedTutor, a calculated property of type Bool that, for now, simply returns false.
    */
    
    private(set) var name: String
    private(set) var ageInYears: Int?
    private(set) var skills: [String]
    private(set) var qualifiedTutor: Bool
    
    convenience init(name nameIn: String) {
        self.init(name: nameIn, ageInYears: nil)
    }
    convenience init() {
        self.init(name : "John Doe", ageInYears: nil)
    }
    /*
    convenience init(name nameIn: String, ageInYears ageIn: Int) {
        self.init(name: nameIn, ageInYears: ageIn)
    }
    */
    init(name nameIn: String , ageInYears ageIn: Int?) {
        self.name = nameIn
        if let myAge = ageIn {
            self.ageInYears = myAge
        }else{
            self.ageInYears = nil
        }
        self.skills = []
        self.qualifiedTutor = false
    }
    
    func celebrateBirthday () -> String {
        var birthdayMessage: String
        if ageInYears != nil {
            var myAge = ageInYears!
            myAge += 1
            birthdayMessage = "HAPPY \(myAge)\(myAge.ordinal().uppercased()) BIRTHDAY, \(name.uppercased())!!!"
            ageInYears = myAge
        }else{
            birthdayMessage = "HAPPY BIRTHDAY, \(name.uppercased())!!!"
        }
        return birthdayMessage
    }
    func learnSkillBash(){
        if !skills.contains("bash") {
            skills.append("bash")
        }
        skillCheck()
    }
    func learnSkillXcode(){
        if !skills.contains("Xcode"){
            skills.append("Xcode")
        }
        skillCheck()
    }
    func learnSkillObjectiveC(){
        if !skills.contains("Objective-C"){
            skills.append("Objective-C")
        }
    }
    func learnSkillSwift(){
        if !skills.contains("Swift"){
            skills.append("Swift")
        }
        skillCheck()
    }
    func learnSkillInterfaceBuilder(){
        if !skills.contains("Interface Builder"){
            skills.append("Interface Builder")
        }
        skillCheck()
    }
    private func skillCheck(){
        self.qualifiedTutor = skills.count >= 4
    }
}
