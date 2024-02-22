//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Ouahchia, Mohamed (JD) on 22/02/2024.
//

import Foundation

class Student {
    let forename: String
    let surname: String
    let dob: Date
    
    init(forename: String, surname: String, dob: Date) {
        self.forename = forename
        self.surname = surname
        self.dob = dob
    }
}
