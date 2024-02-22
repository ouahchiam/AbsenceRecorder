//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Ouahchia, Mohamed (JD) on 22/02/2024.
//

import Foundation

func randomAlphanumericString(_ length: Int) -> String {
   let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
   let randomString = (0..<length).map{ _ in String(letters.randomElement()!) }.reduce("", +)
   return randomString
}

class Division {
    let code: String
    var students: [String] = []
    
    init(code: String) {
        self.code = code
    }
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        var students: [Student] = []
        
        for i in 0..<size {
            students.append(Student(forename: randomAlphanumericString(Int.random(in: 0..<7)), surname: randomAlphanumericString(Int.random(in: 0..<7)), dob: Date(timeIntervalSince1970: 3155760000)))
        }
        
        return division
    }
    
    static let examples = [Division.createDivision(code: ("\(randomAlphanumericString(3))-\(Int.random(in: 0..<9))"), of: 8),
                           Division.createDivision(code: ("\(randomAlphanumericString(3))-\(Int.random(in: 0..<9))"), of: 8),
                           Division.createDivision(code: ("\(randomAlphanumericString(3))-\(Int.random(in: 0..<9))"), of: 8),
                           Division.createDivision(code: ("\(randomAlphanumericString(3))-\(Int.random(in: 0..<9))"), of: 8),
                           Division.createDivision(code: ("\(randomAlphanumericString(3))-\(Int.random(in: 0..<9))"), of: 8),
                           Division.createDivision(code: ("\(randomAlphanumericString(3))-\(Int.random(in: 0..<9))"), of: 8),
                           Division.createDivision(code: ("\(randomAlphanumericString(3))-\(Int.random(in: 0..<9))"), of: 8),
                           Division.createDivision(code: ("\(randomAlphanumericString(3))-\(Int.random(in: 0..<9))"), of: 8),
                           Division.createDivision(code: ("\(randomAlphanumericString(3))-\(Int.random(in: 0..<9))"), of: 8),
                           Division.createDivision(code: ("\(randomAlphanumericString(3))-\(Int.random(in: 0..<9))"), of: 8),
                           Division.createDivision(code: ("\(randomAlphanumericString(3))-\(Int.random(in: 0..<9))"), of: 8)]
    #endif
}

