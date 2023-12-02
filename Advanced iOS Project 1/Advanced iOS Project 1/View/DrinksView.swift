//
//  DrinksView.swift
//  Advanced iOS Project 1
//
//  Created by Denni O on 12/2/23.
//

import SwiftUI

struct DrinksView: View {
    @ObservedObject var save = Save()
    @State private var showCategoryView = false

    var body: some View {
        NavigationView {
            List {
                ForEach(9..<min(12, save.menus.count), id: \.self) { index in NavigationLink(destination: SimpleMenuDetailView(menu: $save.menus[index], save: save))
                    { MenuRow(menu: $save.menus[index], save: save) }
                }
            }
            .navigationBarItems(leading: backButton)
        }
    }
    
    // Define the back button
    private var backButton: some View {
        Button(action: {
            showCategoryView = true
        }) {
            Text("< Go Back")
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(.black)
                .padding(.leading, 20)
        }
        .fullScreenCover(isPresented: $showCategoryView) {
        CategoryView()
        }
    }
}

struct Drinks_Previews: PreviewProvider {
    static var previews: some View {
        DrinksView(save: Save())
    }
}

