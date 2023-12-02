//
//  PayByCashView.swift
//  Advanced iOS Project 1
//
//  Created by Denni O on 12/2/23.
//

import SwiftUI

struct PayByCashView: View {
    
    var body: some View {
        VStack{
            Text("Pay by Cash")
                .font(.system(size: 32, weight: .bold))
                .foregroundColor(.black)
            
            Spacer()
                .frame(height: 108)
            
            Image("Ticket")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 302, height: 244)
            
            Spacer()
                .frame(height:24)
            
            Text("Show this number at \n the counter & pay")
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
    PayByCashView()
}

