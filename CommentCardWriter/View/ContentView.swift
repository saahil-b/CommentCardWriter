//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Bahadur, Saahil (PAH) on 12/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var data: Data
    
    var body: some View {
        
        HStack {
            Button("add", action: {
                data.addTerm(term: Term(name: "New Term"))
            })
            
            Button("remove", action: {} )
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(data: Data.example)
        
    }
}
