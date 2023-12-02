//
//  CategoryView.swift
//  Advanced iOS Project 1
//
//  Created by Denni O on 12/2/23.
//

import Foundation
import SwiftUI

struct CategoryView: View {
    @ObservedObject var save = Save()
    @State private var showBurgerView = false
    @State private var showSidesView = false
    @State private var showDrinksView = false
    @State private var showDessertsView = false
    
    var body: some View {
        VStack {
            Button(action: {
                showBurgerView = true
            }) {
                ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 0.71, green: 0.71, blue: 0.71), lineWidth: 3)
                            .background(Color.white)
                            .frame(width: 338, height: 100)
                        
                        HStack {
                            Spacer()
                                .frame(width: 24)
                            Image("BeefBurger")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80, height: 60)
                            
                            Text("Burgers")
                                .font(.system(size: 28, weight: .bold))
                                .foregroundColor(.black)
                                .padding(.leading, 34)
                            Spacer()
                                .frame(width: 98)
                        }
                    }
            }
            .fullScreenCover(isPresented: $showBurgerView) {
            BurgerView()
            }
            
            Spacer()
                .frame(height: 60)
            
            Button(action: {
                showSidesView = true
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(red: 0.71, green: 0.71, blue: 0.71), lineWidth: 3)
                        .background(Color.white)
                        .frame(width: 338, height: 100)
                    
                    HStack {
                        Spacer()
                            .frame(width: 35)
                        Image("Fries")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 52, height: 80)
                        
                        Text("Sides")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.black)
                            .padding(.leading, 51)
                        Spacer()
                            .frame(width: 127)
                    }
                }
            }
            .fullScreenCover(isPresented: $showSidesView) {
            SidesView()
            }
            
            Spacer()
                .frame(height: 60)
            
            Button(action: {
                showDrinksView = true
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(red: 0.71, green: 0.71, blue: 0.71), lineWidth: 3)
                        .background(Color.white)
                        .frame(width: 338, height: 100)
                    
                    HStack {
                        Spacer()
                            .frame(width: 33)
                        Image("Drink")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 52, height: 80)
                        
                        Text("Drinks")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.black)
                            .padding(.leading, 51)
                        Spacer()
                            .frame(width: 116)
                    }
                }
            }
            .fullScreenCover(isPresented: $showDrinksView) {
            DrinksView()
            }
            
            Spacer()
                .frame(height: 60)
            
            Button(action: {
                showDessertsView = true
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(red: 0.71, green: 0.71, blue: 0.71), lineWidth: 3)
                        .background(Color.white)
                        .frame(width: 338, height: 100)
                    
                    HStack {
                        Spacer()
                            .frame(width: 6) // need to fix this width
                        Image("SoftServe")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 52, height: 80)
                        
                        Text("Desserts")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.black)
                            .padding(.leading, 34)
                        Spacer()
                            .frame(width: 50) // need to fix this width
                    }
                }
            }
            .fullScreenCover(isPresented: $showDessertsView) {
            DessertsView()
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
