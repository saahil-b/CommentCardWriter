//
//  CommentView.swift
//  CommentCardWriter
//
//  Created by Bahadur, Saahil (PAH) on 15/03/2021.
//

import SwiftUI

struct CommentView: View {
    
    @State var subject: Subject
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            //top line
            HStack (alignment: .center, spacing: 20){
                
                NavigationLink(
                    destination: Text("back"),
                    label: {
                        Image(systemName: "chevron.left.circle")
                    })
                
                Text(subject.name)
                    .bold()
                    .font(.largeTitle)
                
            }
            
            Divider()
            Spacer()
                
            //comment
            TextEditor(text: $subject.comment)
                .font(.body)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            
            Spacer()
            Divider()
            
            //buttons
            HStack {
                
                Button(action: {
                    // save func
                    
                }, label: {
                    VStack {
                        Image(systemName: "folder.circle")
                            .imageScale(.large)
                            
                        
                        Text("save").font(.title2)
                        
                    }.frame(width: 100, height: 100, alignment: .center)
                })
                
                NavigationLink(
                    destination: TakeInputView(subject: subject),label: {
                    VStack {
                        
                        Image(systemName: "arrow.counterclockwise.circle")
                            .imageScale(.large)
                        
                        Text("redo").font(.title2)
                        
                    }.frame(width: 100, height: 100, alignment: .center)
                })
                
            }
                
        }
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView(subject: Subject.examples[0])
    }
}
