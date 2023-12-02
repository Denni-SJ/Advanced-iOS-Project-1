//
//  PayByCardView.swift
//  Advanced iOS Project 1
//
//  Created by Denni O on 12/2/23.
//

import SwiftUI

struct PayByCardView: View {
    
    var body: some View {
        VStack{
            Text("Pay by Card")
                .font(.system(size: 32, weight: .bold))
                .foregroundColor(.black)
            
            Spacer()
                .frame(height: 76)
            
            Image("Scanner")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 185, height: 266)
            
            Spacer()
                .frame(height:36)
            
            Text("Scan your card below\n& enter pin")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
            
            Spacer()
                .frame(height: 168)
            
            Button(action: {
                
            }) {
                Text("Finish")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.black)
                    .frame(width: 300, height: 50)
                    .background(Color(red: 0.63, green: 0.82, blue: 1))
                    .cornerRadius(15)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
            }
        }
    }
    
}

#Preview {
    PayByCardView()
}

