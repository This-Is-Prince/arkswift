import UIKit

var highScore = 0;
highScore = 0;

let myName = "Prince"
var currentActiveUsers = 124

currentActiveUsers = 1458;

var ages = [21, 55, 19, 47, 47, 55, 19, 21]

ages.count
print(ages, ages.count)
ages.removeFirst()
print(ages, ages.count)
print(ages[2])

ages.insert(44, at: 0)
print(ages)

ages.sort()
print(ages)
ages.reverse()
print(ages)

ages.shuffle()
print(ages)

var agesSet = Set(ages)
print(agesSet)

print(agesSet.contains(19))

let devices: [String: String] = [
    "phone": "iPhone X",
    "tablet": "iPad Pro 11-inch",
    "laptop": "MacBook Pro 13-inch",
];

print(devices)
print(devices["laptop"])


func printInstructiorsName(a: String, b: Int, c: Float, d: Bool) {
    print(a, b, c, d)
}

printInstructiorsName(a: "1", b: 1, c: 2.0, d: false)

func add(a firstNumber: Int, b secondNumber: Int ) -> Int {
    return firstNumber + secondNumber
}

print(add(a: 5, b: 6))

let programmingLanguage = "Swift"
var currentVersion = 5
currentVersion = 6

let language = "Swift"
var progress: Double = 15.5
let message = "My progress in \(language) is \(progress)%."

print(message)

var highScores = [100, 95, 78]

print(highScores)
highScores.append(89)
print(highScores)
print(highScores[2], highScores.max(), highScores.count, highScores.min(), highScores.capacity)

var dict = [
    1: "One",
    2: "Two",
]
print(dict)
dict[3] = "Three"
print(dict)

var dict2: [Int: Any] = [
    1: "One",
    2: 2,
    3: "Three False"
]

if let one = dict2[2] as? Int, one == 2 {
    print("Present")
} else {
    print("None")
}
