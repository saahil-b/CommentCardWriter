//
//  CommentGenerator.swift
//  CommentCardWriter
//
//  Created by Bahadur, Saahil (PAH) on 12/03/2021.
//

import Foundation

class CommentGenerator {
    let enjoyed: String
    let workOn: String
    let happiness: Double
    
    init(enjoyed: String, workOn: String, happiness: Double) {
        self.enjoyed = enjoyed
        self.workOn = workOn
        self.happiness = happiness
    }
    
    func generateComment() -> String {
        var final = ""
        
        final += "I really enjoyed studying \(enjoyed)"
        final += "but I think I need to work on \(workOn)."
        
        return final

    }
}
