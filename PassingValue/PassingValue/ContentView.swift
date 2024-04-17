//
//  ContentView.swift
//  PassingValue
//
//  Created by Utsav Budathoki on 17/4/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var textInput: String = ""
    @State private var isShowSecondView = false
    
    var body: some View {
            VStack {
                TextField("Enter text", text: $textInput)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button {
                    isShowSecondView.toggle()
                } label: {
                    Text("Go to Second Screen")
                        .font(.title2)
                        .frame(width: 280, height: 50)
                        .foregroundStyle(Color.white)
                        .background(Color.red)
                        .cornerRadius(10)
                    
                }
                
                
            }
            .padding()
            .fullScreenCover(isPresented: $isShowSecondView) {
                SecondView(isShowingView: $isShowSecondView, textToShow: textInput)
            }
        }
    }

#Preview {
    ContentView()
}
