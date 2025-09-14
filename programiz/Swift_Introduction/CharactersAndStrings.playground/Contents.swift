var letter: Character = "H"
var symbol: Character = "@"

let name: String = "John"

let message = "I Love \(name)"

let str1 = "Hello World!"
let str2 = "Hello World!"
str1 == str2

var greet = "hello "
var name1 = "jack"
greet.append(name1) // Uses the same memory of greet (CoW)

var newStr = greet + name1 // Create a new string expensive operation

print(greet)
print(greet.count)

var A = "A"
var a = A
print(A, a==A)
print(a, a==A)

A.append("C")

print(A, a==A)
print(a, a==A)
