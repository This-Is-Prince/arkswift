import Foundation

protocol CanBreathe {
    func breathe()
}

struct Animal: CanBreathe {
    func breathe() {
        "Animal Breathing..."
    }
}

struct Person: CanBreathe {
    func breathe() {
        "Person breathing..."
    }
}

let dog = Animal()
dog.breathe()
let foo = Person()
foo.breathe()


protocol CanJump {
    func jump()
}

extension CanJump {
    func jump() {
        "Jumping..."
    }
}

struct Cat: CanJump {
//    func jump() {
//        
//    }
}

let whiskers = Cat()
whiskers.jump()

protocol HasName {
    var name: String { get }
    var age: Int { get set }
}

struct Dog: HasName {
    let name: String
    var age: Int
}

//let woof = Dog(name: "Woof", age: 10)
//woof.name
//woof.age
//woof.age += 1
//woof.age
