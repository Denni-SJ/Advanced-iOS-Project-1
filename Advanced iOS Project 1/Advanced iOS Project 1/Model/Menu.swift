//
//  Menu.swift
//  Advanced iOS Project 1
//
//  Created by Denni O on 12/2/23.
//

import Foundation

struct Menu : Identifiable, Decodable {
    let id: Int
    let name : String
    let imageName : String
    let price : Float
    let imageWidth: CGFloat
}

let menuList = [
    Menu(id: 1,name: "Beef Burger", imageName: "BeefBurger", price: 8.0, imageWidth: 80),
    Menu(id: 2,name: "Chicken Burger", imageName: "ChickenBurger", price: 7.8, imageWidth: 80),
    Menu(id: 3,name: "Cheese Burger", imageName: "CheeseBurger", price: 4.8, imageWidth: 80),
    Menu(id: 4,name: "Double Beef", imageName: "DoubleBeef", price: 10.10, imageWidth: 80),
    Menu(id: 5,name: "Double Chicken", imageName: "DoubleChicken", price: 9.9, imageWidth: 80),
    Menu(id: 6,name: "French Fries", imageName: "Fries", price: 3.4, imageWidth: 52),
    Menu(id: 7,name: "Onion Rings", imageName: "OnionRing", price: 3.8, imageWidth: 56),
    Menu(id: 8,name: "Chicken Nuggets", imageName: "ChickenNuggets", price: 7.5, imageWidth: 56),
    Menu(id: 9,name: "Hash Brown", imageName: "HashBrown", price: 3.1, imageWidth: 52),
    Menu(id: 10,name: "Coca Cola", imageName: "Cola", price: 3.9, imageWidth: 56),
    Menu(id: 11,name: "Sprite", imageName: "Sprite", price: 3.9, imageWidth: 56),
    Menu(id: 12,name: "Fanta", imageName: "Fanta", price: 3.9, imageWidth: 56),
    Menu(id: 13,name: "Soft Serve Cone", imageName: "SoftServe", price: 0.8, imageWidth: 48),
    Menu(id: 14,name: "Caramel Sundae", imageName: "CaramelSundae", price: 3.2, imageWidth: 56),
    Menu(id: 15,name: "Chocolate Sundae", imageName: "ChocolateSundae", price: 3.2, imageWidth: 56),
    Menu(id: 16,name: "Lava Pudding", imageName: "LavaPudding", price: 3.9, imageWidth: 76),
]
