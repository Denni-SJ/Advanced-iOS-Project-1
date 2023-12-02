//
//  QuantityPicker.swift
//  Advanced iOS Project 1
//
//  Created by Denni O on 12/2/23.
//

import SwiftUI

struct QuantityPicker: View {
    @Binding var quantity : Int
    var range : ClosedRange<Int> = 1...20
    
    var body: some View {
        HStack{
            Button {
                decreaseQuantity()
            } label: {
                ZStack {
                    Circle()
                        .frame(width: 36)
                        .foregroundColor(Color(red: 1, green: 0.9, blue: 0))
                    
                    Text("-")
                        .font(.system(size: 24, weight: .semibold))
                        .foregroundColor(.black)
                }
            }
            
            Text("\(quantity)")
                .font(.system(size: 28, weight: .semibold))
                .frame(minWidth: 40, maxWidth: 60)
            
            Button {
                increaseQuantity()
            } label: {
                ZStack {
                    Circle()
                        .frame(width: 36)
                        .foregroundColor(Color(red: 1, green: 0.9, blue: 0))
                    
                    Text("+")
                        .font(.system(size: 24, weight: .semibold))
                        .foregroundColor(.black)
                }
            }

        }
    }
    
    func increaseQuantity(){
        if quantity < range.upperBound {
            quantity += 1
        }
    }
    
    func decreaseQuantity(){
        if quantity > range.lowerBound {
            quantity -= 1
        }
    }
}


//MARK: - PREVIEW
struct QuantityPicker_Previews: PreviewProvider {
    static var previews: some View {
        QuantityPicker(quantity: .constant(1))
    }
}

