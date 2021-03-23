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
    
    static let examples = [Subject(name: "Physics", comment: CommentGenerator.example),
                    Subject(name: "Maths", comment: CommentGenerator.example),
                    Subject(name: "Chemistry", comment: CommentGenerator.example),
                    Subject(name: "Compsci", comment: CommentGenerator.example)]
    
    #endif
}
