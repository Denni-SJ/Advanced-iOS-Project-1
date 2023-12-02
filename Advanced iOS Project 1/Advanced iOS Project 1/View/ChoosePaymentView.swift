//
//  ChoosePaymentView.swift
//  Advanced iOS Project 1
//
//  Created by Denni O on 12/2/23.
//

import Foundation
import SwiftUI

struct ChoosePaymentView: View {
    @ObservedObject var save = Save()
    @State private var showPayByCardView = false
    @State private var showPayByCashView = false
    
    var body: some View {
        VStack {
            Text("Choose Payment")
                .font(.system(size: 32, weight: .bold))
                .foregroundColor(.black)
            
            Spacer()
                .frame(height: 76)
            
            Button(action: {
                showPayByCardView = true
            }) {
                ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 0.71, green: 0.71, blue: 0.71), lineWidth: 3)
                            .background(Color.white)
                            .frame(width: 332, height: 160)
                        
                        HStack {
                            Spacer()
                                .frame(width: 32)
                            Image("Card")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 96, height: 60)
                            
                            Text("Card")
                                .font(.system(size: 28, weight: .bold))
                                .foregroundColor(.black)
                                .padding(.leading, 34)
                            Spacer()
                                .frame(width: 98)
                        }
                    }
            }
            .fullScreenCover(isPresented: $showPayByCardView) {
            PayByCardView()
            }
            
            Spacer()
                .frame(height: 80)
            
            Button(action: {
                showPayByCashView = true
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(red: 0.71, green: 0.71, blue: 0.71), lineWidth: 3)
                        .background(Color.white)
                        .frame(width: 332, height: 160)
                    
                    HStack {
                        Spacer()
                            .frame(width: 28)
                        Image("Cash")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 116, height: 60)
                        
                        Text("Cash")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.black)
                            .padding(.leading, 51)
                        Spacer()
                            .frame(width: 96)
                    }
                }
            }
            .fullScreenCover(isPresented: $showPayByCashView) {
            PayByCashView()
            }
        }
    }
}

struct ChoosePaymentView_Previews: PreviewProvider {
    static var previews: some View {
        ChoosePaymentView()
    }
}
