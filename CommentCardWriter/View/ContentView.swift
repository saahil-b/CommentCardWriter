//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Bahadur, Saahil (PAH) on 12/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var data: Data
    
    var body: some View {
        
        VStack {
        
            List(data.terms, id: \.self.name) { term in
                NavigationLink(
                    destination: SubjectView(),
                    label: {
                        TermItem(term: term)
                    })
            }
            .navigationTitle("Comment Card Writer")
            
            HStack {
                VStack {
                    Image(systemName: "plus.circle")
                    Button("add", action: {
                        data.addTerm(term: Term(name: "New Term"))
                    })
                }
                
                VStack {
                    Image(systemName: "minus.circle")
                    Button("remove", action: {} )
                }
                
            }
        
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
