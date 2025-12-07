import Foundation

enum Animals {
    case cat
    case dog
    case rabbit
}

let cat = Animals.cat
cat

if cat == Animals.cat {
    "Thi is a cat"
}

switch cat {
case .cat:
    "This is a cat"
case .dog:
    "This is a dot"
case .rabbit:
    "This is a rabbit"
}


enum Shortcut {
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}

if let url = URL(string: "https://apple.com") {
    let wwwApple = Shortcut.wwwUrl(path: url)


    switch wwwApple {
    case .fileOrFolder(path: let path, name: let name):
        path
        name
    case .wwwUrl(path: let path):
        path
    case .song(artist: let artist, songName: let songName):
        artist
        songName
    }
}

enum Vehicle {
    case car(manufacturer: String, model: String)
    case bike(manufacturer: String, yearMade: Int)
    
    var manufacturer: String {
        switch self {
        case let .car(manufacturer, _), let .bike(manufacturer, _):
            return manufacturer
        }
    }
}

let car = Vehicle.car(manufacturer: "Tesla", model: "X")
car.manufacturer

let bike = Vehicle.bike(manufacturer: "HD", yearMade: 1987)
bike.manufacturer


enum FamilyMember: String {
    case father = "Dad"
    case mother = "Mom"
    case brother = "Bro"
    case sister = "Sis"
}

FamilyMember.father.rawValue
FamilyMember.sister.rawValue

enum FavoriteEmoji: String, CaseIterable {
    case smiley = "😀"
    case heart = "❤️"
    case star = "⭐"
}

FavoriteEmoji.allCases

FavoriteEmoji.allCases.map(\.rawValue)


if let smiley = FavoriteEmoji(rawValue: "😀") {
    "Found the smiley emoji"
    smiley
}


enum Height {
    case short, medium, long
    
    mutating func makeLong() {
        self = Height.long
    }
}

var myHeight = Height.short
myHeight
myHeight.makeLong()
myHeight

indirect enum IntOperation {
    case add(Int, Int)
    case subtract(Int, Int)
    case freehand(IntOperation)
    
    func calculateResult(of operation: IntOperation? = nil) -> Int {
        switch operation ?? self {
        case let .add(lhs, rhs):
            return lhs + rhs
        case let .subtract(lhs, rhs):
            return lhs - rhs
        case let .freehand(operation):
            return calculateResult(of: operation)
        }
    }
}
