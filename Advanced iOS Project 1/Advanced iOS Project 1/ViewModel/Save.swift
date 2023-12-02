//
//  Save.swift
//  Advanced iOS Project 1
//
//  Created by Denni O on 12/2/23.
//

import Foundation

class Save: ObservableObject {
    @Published var menus: [Menu]

    // Define the initializer for the Menu class
    init(filename: String = "MenuData.json") {
        let decoder = JSONDecoder()
        guard let url = Bundle.main.url(forResource: filename, withExtension: nil),
              let data = try? Data(contentsOf: url),
              let menus = try? decoder.decode([Menu].self, from: data)
        else {
            self.menus = []
            return
        }
        self.menus = menus
    }
}

