//
//  RelaxedModeView.swift
//  Advanced iOS Project 1
//
//  Created by Denni O on 12/2/23.
//

import Foundation
import SwiftUI

struct RelaxedModeView : View {
    @State private var showCategoryView = false
    
    var body : some View {
        VStack {
            Spacer()
                .frame(height: 120)
            
            Image("LeekBurger")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 380)
            
            HStack(alignment: .top) {
                ZStack {
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 185, height: 185)
                      .background(Color(red: 1, green: 0.9, blue: 0))
                      .cornerRadius(12)
                      .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                    
                    VStack {
                            Text("Scan Below")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.black)
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 64, height: 95)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .inset(by: 1)
                                        .stroke(.black, lineWidth: 2)
                                )
                        
                            Image("Arrow")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 13)
                        }
                }
                
                Button(action: {
                    // Add your action here
                    showCategoryView = true
                }) {
                    Text("Start Order")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.black)
                        .frame(width: 140, height: 84)
                        .background(Color(red: 0.63, green: 0.82, blue: 1))
                        .cornerRadius(12)
                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                }
                .frame(maxHeight: .infinity, alignment: .top)
                .fullScreenCover(isPresented: $showCategoryView) {
                CategoryView()
                }
            }
            .padding(.top, 60)
            
        }
    }
}

struct RelaxedModeView_Previews: PreviewProvider {
    static var previews: some View {
        RelaxedModeView()
    }
}
