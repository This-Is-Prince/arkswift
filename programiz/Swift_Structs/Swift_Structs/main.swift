//
//  main.swift
//  Swift_Structs
//
//  Created by Prince on 15/09/25.
//

import Foundation

struct Person {
    static var countObj: Int = 0
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        Person.countObj += 1
    }
    
    func Display() {
        print("\(self.name) \(self.age)")
    }
    
    
    mutating func increaseAge() {
        self.age += 1
    }
}

var p1 = Person(name: "Prince", age: 20)
print(p1)
p1.Display()
print(Person.countObj)
var p2 = Person(name: "Prince Kumar", age: 24)
print(Person.countObj)

p1.increaseAge()
print(p1)
