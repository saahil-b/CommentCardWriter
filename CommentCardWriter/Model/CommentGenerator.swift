//
//  CommentGenerator.swift
//  CommentCardWriter
//
//  Created by Bahadur, Saahil (PAH) on 12/03/2021.
//

import Foundation

class CommentGenerator {
    
    var comment: String
    
    init(enjoyed: String, workOn: String, happiness: Double) {
        
        self.comment = ""
        self.comment = firstGenerateComment(enjoyed: enjoyed, workOn: workOn, happiness: happiness)
    }
    
    func getHappyWords(happiness: Double) -> String {
        
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
    
    func firstGenerateComment(enjoyed: String, workOn: String, happiness: Double) -> String {
                
        var final = ""
        
        final += "I am \(getHappyWords(happiness: happiness))happy with my progress. "
        final += "I really enjoyed studying \(enjoyed.trimmingCharacters(in: .whitespacesAndNewlines)) "
        final += "but I think I need to work on \(workOn.trimmingCharacters(in: .whitespacesAndNewlines))."
        
        return final

    }
    
    #if DEBUG
    
    //examples
    
    static let example = CommentGenerator(enjoyed: "mechanics", workOn: "hypothesis testing", happiness: 3.0).comment
    
    #endif
}
