import Foundation


func noArgumentsAndNoReturnValue() {
    "I don't know what I'm doing"
}

noArgumentsAndNoReturnValue()

func plusTwo(value: Int) {
    let newValue = value + 2
}

plusTwo(value: 30)


func newPlusTwo(value: Int) -> Int {
    return value + 2
}

func customAdd(
    value1: Int,
    value2: Int
) -> Int {
    value1 + value2
}

let customAdded = customAdd(value1: 10, value2: 20)

//func customMinus(
//    lhs: Int,
//    rhs: Int
//) -> Int {
//    return lhs - rhs
//}
//
//let customSubtracted = customMinus(lhs: 20, rhs: 20)

//func customMinus(
//    _ lhs: Int,
//    _ rhs: Int
//) -> Int {
//    return lhs - rhs
//}
//
//let customSubtracted = customMinus(20, 20)

func customMinus(
    a lhs: Int,
    b rhs: Int
) -> Int {
    return lhs - rhs
}

let customSubtracted = customMinus(a: 20, b: 20)

@discardableResult
func myCustomAdd(
    _ lhs: Int,
    _ rhs: Int
) -> Int {
    return lhs + rhs
}

myCustomAdd(10, 20)


func doSomethingComplicated(
    with value: Int
) -> Int {
    func mainLogic(value: Int) -> Int {
        return value + 2
    }
    
    return mainLogic(value: value + 3)
}

doSomethingComplicated(with: 30)

func getFullName(
    firstName: String = "Foo",
    lastName: String = "Bar"
) -> String {
    return "\(firstName) \(lastName)"
}

getFullName()
getFullName(firstName: "Joe")
getFullName(lastName: "Doe")
getFullName(firstName: "Joe", lastName: "Doe")
