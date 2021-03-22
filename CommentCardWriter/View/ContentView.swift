//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Bahadur, Saahil (PAH) on 12/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var data: StateController
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Text("Comment Card Writer")
                .bold()
                .font(.system(size: 35))
            
            Text("by Mango Fruit Co.")
                .font(.system(size: 20))
                    
            List(data.terms, id: \.self.name) { term in
                NavigationLink(
                    destination: SubjectView(term: term),
                    label: {
                        TermItem(term: term)
                    })
            }
           
            Spacer()
            
            HStack {
                
                VStack {
                    Image(systemName: "plus.circle")
                        
                    Button("add", action: {
                        data.addTerm(term: Term(name: "New Term"))
                    }).font(.system(size: 22))
                    
                }.frame(width: 125, height: 125, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                

                VStack {
                    Image(systemName: "minus.circle")
                    
                    Button("remove", action: {
                        //
                    } )
                        .font(.system(size: 22))
                    
                }.frame(width: 125, height: 125, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            }

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(StateController())
        
    }
}
