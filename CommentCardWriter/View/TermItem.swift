//
//  TermItem.swift
//  CommentCardWriter
//
//  Created by Rakesh Bahadur on 16/03/2021.
//

import SwiftUI

struct TermItem: View {
    
    var term: Term
    
    var body: some View {
        
        HStack {
            Text(term.name)

        }
    }
}

struct TermItem_Previews: PreviewProvider {
    static var previews: some View {
        TermItem(term: Term.examples[0])
    }
}
