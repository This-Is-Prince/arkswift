print(5 + 6)

var add = 5 + 6
var sub = 6 - 5
var mul = 5 * 6
var div = 6 / 5
var mod = 6 % 5

print(add, sub, mul, div, mod, separator: " ! ", terminator: "TERMINATOR\n")

print(true && false)
print(true && true)
print(!false && !false)

print(add == 11 ? "ELEVEN" : "NOT ELEVEN")

var a: Int? = 5
print(a ?? 10)

print(1...5)

for a in 1...5 {
    print(a)
}
