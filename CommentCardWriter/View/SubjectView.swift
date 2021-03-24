//
//  SubjectView.swift
//  CommentCardWriter
//
//  Created by Bahadur, Saahil (PAH) on 15/03/2021.
//

import SwiftUI

struct SubjectView: View {
    
    @State var term: Term
    
    var body: some View {
        
        VStack {
            Spacer()
            
            //top line
            HStack {
                
                //back button
                NavigationLink(
                    destination: ContentView(),
                    label: {
                        Image(systemName: "chevron.left.circle")
                            .imageScale(.medium)
                    })
                        
                //main title
                Text(term.name)
                    .bold()
                    .font(.largeTitle)
                
            }
            
            Spacer()
            Spacer()
            Divider()
            
            //data list
            List(term.subjects, id: \.self.name) { subject in
                NavigationLink(
                    destination: CommentView(subject: subject),
                    label: {
                        Text(subject.name)
                    })
            }
            
            Divider()
            
            //buttons
            HStack {
                
                Button(action: {
                    term.addSubject(subject: Subject(name: "New Subject", comment: "OK"))}) {
                    VStack {
                        Image(systemName: "plus.circle").imageScale(.large)
                            
                        Text("add").font(.title2)
                        
                    }.frame(width: 100, height: 100, alignment: .center)
                }
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
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

struct SubjectView_Previews: PreviewProvider {
    static var previews: some View {
        SubjectView(term: Term.examples[0])

    }
}
