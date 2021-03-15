//
//  Data.swift
//  CommentCardWriter
//
//  Created by Bahadur, Saahil (PAH) on 15/03/2021.
//

import Foundation

class Data: ObservableObject {
    @Published var terms: [Term]
    
    init(terms: [Term] = [] ) {
        self.terms = terms
    }
    
    func addTerm(term: Term) {
        terms.append(term)
    }
    
    #if DEBUG
    
    //examples
    
    static let example = Data(terms: Term.examples)
    
    #endif
    
}
