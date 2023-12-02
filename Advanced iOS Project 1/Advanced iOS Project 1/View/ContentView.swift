//
//  ContentView.swift
//  Advanced iOS Project 1
//
//  Created by Denni O on 12/2/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showModeView = false
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 100)
            
            Image("DigitalHelp")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 275, height: 156)
            
            Button(action: {
                // Add your action here
                showModeView = true
            }) {
                Text("Start")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.black)
                    .frame(width: 300, height: 65)
                    .background(Color(red: 0.63, green: 0.82, blue: 1))
                    .cornerRadius(15)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
            }
            .frame(maxHeight: .infinity, alignment: .bottom)
        }
        .fullScreenCover(isPresented: $showModeView) { // Transition to AddGoalView
        ModeView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
