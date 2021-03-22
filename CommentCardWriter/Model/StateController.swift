//
//  Data.swift
//  CommentCardWriter
//
//  Created by Bahadur, Saahil (PAH) on 15/03/2021.
//

import Foundation

class StateController: ObservableObject {
    @Published var terms: [Term]
    
    init() {
        terms = Term.examples
    }
    
    func addTerm(term: Term) {
        terms.append(term)
    }
    
    #if DEBUG
    
    //examples
        
    #endif
    
}
