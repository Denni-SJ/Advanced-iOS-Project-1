//
//  ModeView.swift
//  Advanced iOS Project 1
//
//  Created by Denni O on 12/2/23.
//
import Foundation
import SwiftUI

struct ModeView : View {
    @State private var showRelaxedModeView = false
    
    var body : some View {
        VStack {
            
            Button(action: {
                // Add your action here
                showRelaxedModeView = true
            }) {
                Text("Relaxed mode")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.black)
                    .frame(width: 300, height: 65)
                    .background(Color(red: 0.63, green: 0.82, blue: 1))
                    .cornerRadius(15)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
            }
            .fullScreenCover(isPresented: $showRelaxedModeView) { // Transition to AddGoalView
            RelaxedModeView()
            }
            
            Spacer().frame(height: 80)
            
            Button(action: {
                // Add your action here
            }) {
                Text("Timed mode")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.black)
                    .frame(width: 300, height: 65)
                    .background(Color(red: 0.63, green: 0.82, blue: 1))
                    .cornerRadius(15)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
            }
            
            //.frame(maxHeight: .infinity, alignment: .bottom)
        }
    }
}
import Foundation
