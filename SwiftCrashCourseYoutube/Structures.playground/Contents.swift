import Foundation

struct Person {
    let name: String
    let age: Int
}

let foo = Person(name: "Foo", age: 20)

foo.name
foo.age

struct CommodoreComputer {
    let name: String
    let manufacturer: String = "Commodore"
    
//    init(name: String) {
//        self.name = name
//        self.manufacturer = "Commodore"
//    }
}

let c64 = CommodoreComputer(name: "My commodore")
c64.name
c64.manufacturer


struct Person2 {
    let firstName: String
    let lastName: String
    
    var fullName: String {
        return firstName + lastName
    }
}

let fooBar = Person2(firstName: "Foo", lastName: "Bar")
fooBar.firstName
fooBar.lastName
fooBar.fullName

struct Car {
    var currentSpeed: Int
    
    mutating func drive(speed: Int) {
        "Driving..."
        currentSpeed = speed
    }
}

var car = Car(currentSpeed: 20)
car.currentSpeed
car.drive(speed: 50)
car.currentSpeed

let copy = car
car.drive(speed: 30)
car.currentSpeed
copy.currentSpeed

var cpy = car
car.drive(speed: 20)
car.currentSpeed
cpy.currentSpeed

struct Bike {
    let manufacturer: String
    var currentSpeed: Int
    
    func copy(currentSpeed: Int) -> Bike {
        return Bike(manufacturer: self.manufacturer, currentSpeed: currentSpeed)
    }
}

let bike1 = Bike(
    manufacturer: "HD", currentSpeed: 20
)

var bike2 = bike1.copy(currentSpeed: 30)
bike1.currentSpeed
bike2.currentSpeed



