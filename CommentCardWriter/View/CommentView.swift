//
//  CommentView.swift
//  CommentCardWriter
//
//  Created by Bahadur, Saahil (PAH) on 15/03/2021.
//

import SwiftUI

struct CommentView: View {
    
    var subject: Subject
    
    var body: some View {
        VStack {
            Text(subject.name)
            
            Text(subject.comment)
        }
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView(subject: Subject.examples[0])
    }
}
