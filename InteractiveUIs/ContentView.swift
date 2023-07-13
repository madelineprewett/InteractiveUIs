//
//  ContentView.swift
//  InteractiveUIs
//
//  Created by scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    
        var body: some View {
            
            
            
            VStack {
                Text(textTitle)
                    .font(.title)
                    .fontWeight(.semibold)
                
                TextField("Type name here...", text: $name)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .border(Color.gray, width: 1)
                
                Button("Submit") {
                    textTitle = "Welcome \(name)!"
                    print(name)
                }
                .font(.title)
                .fontWeight(.semibold)
                .buttonStyle(.borderedProminent)
                .tint(.pink)
                
            }
            .padding()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

//hey
