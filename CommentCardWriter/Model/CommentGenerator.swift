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
    
    func getHappyWords() -> String {
        
        var happyWords = ""
        
        switch happiness {
        
        case 0..<1:
            happyWords = "not at all "
        
        case 1..<2:
            happyWords = "not "
        
        case 3..<4:
            happyWords = "quite "
        
        case 4..<5:
            happyWords = "very "
        
        default:
            happyWords = ""
        
        }
        
        return happyWords
        
    }
    
    func generateComment() -> String {
                
        var final = ""
        
        final += "I am \(getHappyWords())happy with my progress. "
        final += "I really enjoyed studying \(enjoyed) "
        final += "but I think I need to work on \(workOn)."
        
        return final

    }
    
    #if DEBUG
    
    //examples
    
    static let example = CommentGenerator(enjoyed: "mechanics", workOn: "hypothesis testing", happiness: 3.0).generateComment()
    
    #endif
}
