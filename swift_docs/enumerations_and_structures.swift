
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
    
    func isEqual(rank: Rank) -> Bool {
        return self.rawValue == rank.rawValue
    }
}

let ace = Rank.ace
let aceRawValue = ace.rawValue
print(ace)
print(aceRawValue)
print(ace.simpleDescription())

let five = Rank.five
print(five.simpleDescription())

print(five.isEqual(rank: Rank.five))

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
    print("The raw value of 3 is \(threeDescription).")
}

enum Suit {
    case spades, hearts, diamonds, clubs
    
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    
    func color() -> String {
        if self == .spades || self == .clubs {
            return "black"
        } else {
            return "red"
        }
    }
}

let hearts = Suit.hearts
//print(hearts.rawValue)
print(hearts.simpleDescription())
print(hearts.color())

enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure... \(message)")
}


struct Card {
    var rank: Rank
    var suit: Suit
    
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

let threeOfSpades = Card(rank: .three, suit: .spades)
print(threeOfSpades.simpleDescription())
