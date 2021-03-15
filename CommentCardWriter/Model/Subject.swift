//
//  Subject.swift
//  CommentCardWriter
//
//  Created by Bahadur, Saahil (PAH) on 15/03/2021.
//

import Foundation

class Subject {
    var name: String
    var comment: String
    
    init(name: String, comment: String) {
        self.name = name
        self.comment = comment
        
    }
    
    #if DEBUG
    
    //examples
    
    static let examples = [Subject(name: "Physics", comment: "Very fun"),
                    Subject(name: "Maths", comment: "fun"),
                    Subject(name: "Chemistry", comment: "not fun"),
                    Subject(name: "Compsci", comment: "unbearably fun")]
    
    #endif
}
