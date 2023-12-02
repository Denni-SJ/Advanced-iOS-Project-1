//
//  MenuRow.swift
//  Advanced iOS Project 1
//
//  Created by Denni O on 12/2/23.
//

import Foundation
import SwiftUI

struct MenuRow: View {
    @Binding var menu : Menu
    var save : Save
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(red: 0.71, green: 0.71, blue: 0.71), lineWidth: 3)
                .background(Color.white)
                .frame(width: UIScreen.main.bounds.width * 0.8, height: 120)
            
            HStack{
                Image(menu.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: menu.imageWidth)
            
                VStack(alignment: .leading){
                    Text(menu.name)
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.black)
                        .padding(.bottom, 2)
                    
                    HStack{
                        Text("$")
                            .font(.system(size: 16, weight: .medium))
                        Text(String(format: "%.2f", menu.price))
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

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        let save = Save()
        
        MenuRow(menu: .constant(menuList[0]), save: save).previewLayout(.sizeThatFits)
    }
}
