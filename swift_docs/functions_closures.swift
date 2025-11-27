func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}

print(greet(person: "Bob", day: "Tuesday"))

func hello(_ name: String, b bc: Bool) -> String {
    if bc {
        print(name)
        return name + "!"
    }

    return "ok"
}

print(hello("Alice", b: true))

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }

    return (min, max, sum)
}

let result = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(result.min, result.max, result.sum)
let (min, max, sum) = result
print(min, max, sum)

print(result.0, result.1, result.2)


func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }

    add()

    return y
}

print(returnFifteen())

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }

    return addOne
}

var increment = makeIncrementer()
print(increment(7))

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
print(hasAnyMatches(list: numbers, condition: lessThanTen))

var result1 = numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

print(result1)

let mappedNumbers = numbers.map({ number in 3 * number})
print(mappedNumbers)

let sortedNumbers = numbers.sorted { $1 > $0 }
print(sortedNumbers)