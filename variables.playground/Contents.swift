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
