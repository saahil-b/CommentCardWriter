//
//  SubjectView.swift
//  CommentCardWriter
//
//  Created by Bahadur, Saahil (PAH) on 15/03/2021.
//

import SwiftUI

struct SubjectView: View {
    var term: Term
    
    var body: some View {
        
        VStack {
            Text(term.name)
                .bold()
            
            List(term.subjects, id: \.self.name) { subject in
                NavigationLink(
                    destination: CommentView(subject: subject),
                    label: {
                        Text(subject.name)
                    })
            }
        }
    }
}

struct SubjectView_Previews: PreviewProvider {
    static var previews: some View {
        SubjectView(term: Term.examples[0])

    }
}
