import Foundation

let myAge = 22
let yourAge = 20

if myAge > yourAge {
    "i'm older than you"
} else if myAge < yourAge {
    "i'm younger than you"
} else {
    "oh hey, we are the same age"
}

let myMothersAge = myAge + 30
let doubleMyAge = myAge * 2

/// 1. unary prefix
let foo = !true
/// 2. unary postfix
let name = Optional("Prince")
print(type(of: name))
let unaryPostFix = name!
print(type(of: unaryPostFix))
/// 3. binary infix
let result = 1 + 2
let names = "Foo" + " " + "Bar"

let age = 30
let message = age > 30 ? "you are over 30": "you are under 30"

