var myVariable = 42
myVariable = 50
let myConstant = 100

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
let explicitFloat: Float = 4


let label = "The width is "
let width = 94
let widthLabel = label + String(width)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

let quotation = """
Hey
What's up?
How's everything going?
"""

print(quotation)

var fruits = ["strawberries", "limes", "tangerines"]
fruits[1] = "grapes"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]

occupations["Jayne"] = "Public Relations"

fruits.append("blueberries")
print(fruits)

fruits = []
occupations = [:]

let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]