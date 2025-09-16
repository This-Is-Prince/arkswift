//
//  main.swift
//  Swift_OOP
//
//  Created by Prince on 15/09/25.
//

import Foundation

class Person {
    var name: String = ""
    var age: Int = 0
    
    init(name: String = "", age: Int = 0) {
        self.name = name
        self.age = age
    }
    
    func agePlusName() -> String {
        return "\(name) \(age)"
    }
}

var p1 = Person()
print(p1.name, p1.age)

p1.name = "Prince"
p1.age = 25
print(p1.name, p1.age)
print(p1.agePlusName())

var p2 = Person(name: "Prince Kumar", age: 24)
print(p1.agePlusName())

class Calculator {
    var num1: Int = 0
    var num2: Int = 0
    
    var sum: Int {
        print("Computed property")
        return num1 + num2
    }
    
    var sum2: Int {
        get {
            print("Computed Property Getter")
            return num1 + num2
        }
        
        set(modify) {
            print("Computed Property Setter")
            num1 = (modify + 10)
            num2 = (modify + 20)
        }
    }
}


var calc = Calculator()
print(calc.sum2)
calc.num1 = 1
calc.num2 = 2
print(calc.sum2)
print(calc.sum2)
calc.sum2 = 5
print(calc.sum2)

class University {
    static var name: String = ""
    var age: Int = 0
    
    static func uni() {
        print("UNI")
        name = "NIT"
    }
    
    func address() {
        print("DON'T KNOW")
        age = 10
    }
}

University.name = "IIT"
University.uni()
var u = University()
u.address()
print(University.name)
print(u.age)


class Person1 {
    var age: Int
    
    init() {
        age = 20
    }
    
    init(age: Int) {
        self.age = age
    }
    
    func getAge() -> Int {
        return age
    }
}

var person1 = Person1()
var person2 = Person1()

print("Person1 Age:", person1.getAge())
print("Person2 Age:", person2.getAge())

class Univerysity1 {
    var name: String
    var rank: String
    
    init(name: String, rank: String) {
        self.name = name
        self.rank = rank
    }
    
    convenience init() {
        self.init(name: "IIT Kanpur", rank: "1st")
    }
}

var uni1 = Univerysity1()
print(uni1.name, uni1.rank)

class File {
    var folder: String
    
    init?(folder: String) {
        if folder.isEmpty {
            return nil
        }
        
        self.folder = folder
    }
}

var file = File(folder: "")
if file != nil {
    print("File Found Successfully")
} else {
    print("Error Finding File")
}

class Race {
    var laps: Int
    
    init() {
        laps = 5
        print("Race Completed")
        print("Total laps: ", laps)
    }
    
    deinit {
        print("Memory Deallocated")
    }
}

var result1: Race? = Race()

if result1 != nil {
    print(result1!.laps)
}

result1 = nil

class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func eat() {
        print("Eating...")
    }
}

class Dog: Animal {
    var isBark: Bool
    
    init(name: String, isBark: Bool) {
        self.isBark = isBark
        super.init(name: name)
    }
    
    override func eat() {
        print("Eating.... by dog")
    }
}


protocol Greet {
    var name: String { get }
    
    func message()
}

class Employee: Greet {
    var name = "Pretty"
    
    func message() {
        print("Good Morning!")
    }
}
