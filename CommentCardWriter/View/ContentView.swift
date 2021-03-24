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
            
            //main title
            Text("Comment Card Writer")
                .bold()
                .font(.largeTitle)
            
            Spacer()
            
            //subtitle
            Text("by Mango Fruit Co.")
                .font(.title2)
            
            Spacer()
            Spacer()
            Divider()

            //data list
            List(data.terms, id: \.self.name) { term in
                NavigationLink(
                    destination: SubjectView(term: term),
                    label: {
                        TermItem(term: term)
                    })
            }
           
            Divider()
            
            //buttons
            HStack {
                
                Button(action: {
                        data.addTerm(term: Term(name: "New Term"))
                    
                }, label: {
                    VStack {
                        Image(systemName: "plus.circle").imageScale(.large)
                            
                        Text("add").font(.title2)
                        
                    }.frame(width: 100, height: 100, alignment: .center)
                })
                
                Button(action: {
                    // remove func
                }, label: {
                    VStack {
                        
                        
                        Image(systemName: "minus.circle").imageScale(.large)
                        
                        Text("remove")
                            .font(.title2)
                        
                    }.frame(width: 100, height: 100, alignment: .center)
                })
                
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
