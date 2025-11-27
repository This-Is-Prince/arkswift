class Shape {
    let radius = 5.6
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }

    func updateRadius(newRadius: Double) {
        print("Updating radius from \(radius) to \(newRadius)")
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
print(shapeDescription)

class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let test = Square(sideLength: 5.2, name: "my test square")
print(test.area())
print(test.simpleDescription())

class Circle: NamedShape {
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        numberOfSides = 1
    }
    
    func area() -> Double {
        return 3.14 * radius * radius
    }
    
    override func simpleDescription() -> String {
        return "A circle with radius of length \(radius)."
    }
}


let smollCircle = Circle(radius: 3, name: "New")
print(smollCircle.area())
print(smollCircle.simpleDescription())


class ETriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An E Triangle with sides of length \(sideLength)."
    }
}

var t = ETriangle(sideLength: 3.1, name: "A Triangle")
print(t.perimeter)
print(t.sideLength)
t.perimeter = 9.9
print(t.perimeter)
print(t.sideLength)

let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sidelength = optionalSquare?.sideLength
