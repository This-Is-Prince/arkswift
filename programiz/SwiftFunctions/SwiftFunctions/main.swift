//
//  main.swift
//  SwiftFunctions
//
//  Created by Prince on 15/09/25.
//

import Foundation


func sum(numbers: Int...) {
    var s = 0
    for a in numbers {
        s += a
    }
    
    print(s)
}

func cantChangeParam(x: Int) {
//    x = 10 // x is a let constant
}

func canChangeparam(x: inout Int) {
    x = 10
}

func compute(number: Int) -> (Int, Int, Int) {
    var square = number * number
    var cube = square * number
    return (number, square, cube)
}

func Functions(run: Bool = true) {
    if !run {
        return;
    }
    
    sum(numbers: 1, 2, 3, 4, 5, 56)
    
    var x = 2
    print(x)
    canChangeparam(x: &x)
    print(x)
    
    let (n, s, c) = compute(number: 2)
    print(n, s, c)
}

Functions()

var greet = {
    print("GREET")
}

greet()

let greetUser = { (name: String) in
    print("Hey \(name)")
}

greetUser("Prince")

var findSquare = { (num: Int) -> Int in
    return num * num
}

var r = findSquare(3)
print(r)

func grabLunch(search: () -> ()) {
    search()
}


grabLunch(search: {
    print("Searching...")
})

grabLunch {
    print("Searching again....")
}

func testFunc(m: String, anotherFunc: (String, Int) -> (Int, String)) {
    print(m)
    let r = anotherFunc(m, 2)
    print(r)
}

testFunc(m: "HEY", anotherFunc: { (s: String, n: Int) -> (Int, String) in
    return (s.count + n, "\(n)")
})

testFunc(m: "OK") { s, n in
    return (s.count + n, "\(n)")
}
