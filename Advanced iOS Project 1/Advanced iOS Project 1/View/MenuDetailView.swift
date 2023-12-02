//
//  MenuDetailView.swift
//  Advanced iOS Project 1
//
//  Created by Denni O on 12/2/23.
//

import Foundation
import SwiftUI

struct MenuDetailView: View {
    @Binding var menu : Menu
    var save : Save
    
    @State private var quantity : Int = 1
    @State private var showSetMenuView = false
    var body: some View {
        VStack{
            ZStack {
                Circle()
                    .stroke(Color(red: 0.71, green: 0.71, blue: 0.71), lineWidth: 3)
                    .background(Color.white)
                    .frame(width: UIScreen.main.bounds.width * 0.7)
                
                Image(menu.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width * 0.46)
                    .padding(.bottom, 20)
            }
            
            VStack(alignment: .center){
                Text(menu.name)
                    .font(.system(size: 32, weight: .bold))
                    .foregroundColor(.black)
                    .padding(.bottom, 2)
                
                QuantityPicker(quantity: $quantity)
                
                Spacer()
                    .frame(height: 32)
                
                //Price Info
                HStack{
                    Text("Total:")
                        .font(.system(size: 24, weight: .medium))
                    Text("$")
                        .font(.system(size: 24, weight: .medium))
                    Text(String(format: "%.2f", menu.price))
                        .font(.system(size: 24, weight: .medium))
                    
                }
                
                Spacer()
                    .frame(height: 130)
                
                //Order Button
                Button(action: {
                    showSetMenuView = true
                })
                {
                    Text("Set Menu")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.black)
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.63, green: 0.82, blue: 1))
                        .cornerRadius(15)
                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                }
                
                Spacer()
                    .frame(height: 15)
                
                Button(action: {
                    
                }) {
                    Text("Confirm")
                        .font(.system(size: 20, weight: .semibold))
                        .underline()
                        .foregroundColor(.black)
                }
            }
        }
    }
}


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        let save = Save()
        
        MenuDetailView(menu: .constant(menuList[0]), save: save).previewLayout(.sizeThatFits)
    }
}
