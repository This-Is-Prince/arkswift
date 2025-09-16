//
//  main.swift
//  Swift_Enum
//
//  Created by Prince on 15/09/25.
//

import Foundation

enum Season: CaseIterable {
    case spring
    case summer
    case autumn
    case winter
}

enum Season1 {
    case spring, summer, autumn, winter
}

var currentSeason: Season

currentSeason = Season.summer

print(currentSeason)

switch currentSeason {
case .spring:
    print("Spring")
case .summer:
    print("Summer")
case .autumn:
    print("Autumn")
case .winter:
    print("Winter")
}

for s in Season.allCases {
    print(s)
}

enum Size : Int {
    case small = 10
    case medium = 12
}

print(Size.small.rawValue)

enum Laptop {
    case name(String)
    case price(Int)
}

var brand = Laptop.name("Razer")
print(brand)

var offer = Laptop.price(1599)
print(offer)

switch (offer) {
case let .name(n):
    print(n)
case let .price(p):
    print(p)
}


