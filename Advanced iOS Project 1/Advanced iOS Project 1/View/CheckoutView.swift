//
//  CheckoutView.swift
//  Advanced iOS Project 1
//
//  Created by Denni O on 12/2/23.
//

import Foundation
import SwiftUI

struct CheckoutView: View {
    
    var body: some View {
        VStack {
            Text("Checkout")
                .font(.system(size: 32, weight: .bold))
                .foregroundColor(.black)
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(red: 0.71, green: 0.71, blue: 0.71), lineWidth: 3)
                    .background(Color.white)
                    .frame(width: UIScreen.main.bounds.width * 0.8, height: 120)
                
                HStack{
                    Spacer()
                        .frame(width: 28)
                    
                    VStack(alignment: .leading){
                        Text("Beef Burger")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.black)
                            .padding(.bottom, 2)
                        
                        HStack{
                            Text("$")
                                .font(.system(size: 16, weight: .medium))
                            Text("8.00")
                                .font(.system(size: 16, weight: .medium))
                            
                            Spacer()
                        }
                    }
                    .padding(.leading, 24)
                    .padding(.bottom, 12)
                    .padding(.top)
                    .padding(.trailing)
                }
                .padding(.leading, 24)
            }
            
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
    }
}
