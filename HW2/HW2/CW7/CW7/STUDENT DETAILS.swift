//
//  STUDENT DETAILS.swift
//  CW7
//
//  Created by fawziah hussain on 17/08/2022.
//

import Foundation
struct StudentDetailsModel:
    Identifiable{
    let id = UUID()
    var fullName : String
    var year : Int
    var age : Int
}
var Ahmed =
StudentDetailsModel(fullName: "Ahmed", year: 2006, age: 16)

var jamal =
StudentDetailsModel(fullName: "Jamal", year: 2004, age: 17)

var batool =
StudentDetailsModel(fullName: "batool", year: 2003, age: 18)
    
    var student = [Ahmed, jamal, batool]

    
