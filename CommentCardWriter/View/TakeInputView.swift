//
//  TakeInputView.swift
//  CommentCardWriter
//
//  Created by Bahadur, Saahil (PAH) on 22/03/2021.
//

import SwiftUI

struct TakeInputView: View {
    
    var subject: Subject
    
    @State private var enjoyed: String = ""
    @State private var workOn: String = ""
    @State private var happiness: Double = 3
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Text("Comment Generator").font(.largeTitle)
            
            VStack(alignment: .leading, spacing: 20) {
                
                Divider()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("What topic did you enjoy?")
                    TextField("Enter here...", text: $enjoyed)
                }
                
                Divider()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("What topic do you need to work on?")
                    TextField("Enter here...", text: $workOn)
                
                }
                
                Divider()
                
                Text("How happy are you with your progress?")
                Slider(value: $happiness, in: 0...5)
            
                Divider()
                
                Spacer()
            
            }
                        
            Button(action: {
                //save func
            }, label: {
                
                VStack {
                    Image(systemName: "folder.circle").imageScale(.large)
                    Text("save").font(.title2)
                    
                }.frame(width: 100, height: 100, alignment: .center)
            })
            
            Spacer()
        }
    }
    
}

struct TakeInputView_Previews: PreviewProvider {
    static var previews: some View {
        TakeInputView(subject: Subject.examples[0])
    }
}
