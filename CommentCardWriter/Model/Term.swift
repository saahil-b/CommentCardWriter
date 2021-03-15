//
//  Term.swift
//  CommentCardWriter
//
//  Created by Bahadur, Saahil (PAH) on 15/03/2021.
//

import Foundation

class Term {
    var name: String
    var subjects: [Subject]
    
    init(name: String, subjects: [Subject] = []) {
        self.name = name
        self.subjects = subjects
        
    }
    
    func addSubject(subject: Subject) {
        subjects.append(subject)
    }
    
    #if DEBUG
    
    //examples
    
    static let examples = [Term(name: "Mich 2018", subjects: Subject.examples),
                    Term(name: "Lent 2019", subjects: Subject.examples),
                    Term(name: "Summer 2019", subjects: Subject.examples),
                    Term(name: "Mich 2020", subjects: Subject.examples)]
    
    #endif
}
