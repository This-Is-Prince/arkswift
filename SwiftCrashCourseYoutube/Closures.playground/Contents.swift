import Foundation


//func add(_ lhs: Int, _ rhs: Int) -> Int {
//    return lhs + rhs
//}

let add: (Int, Int) -> Int = { (lhs: Int, rhs: Int) -> Int in
    return lhs + rhs
}

add(1, 2)

func customAdd(
    _ lhs: Int,
    _ rhs: Int,
    using function: (Int, Int) -> Int
) -> Int {
    return function(lhs, rhs)
}

customAdd(2, 3, using: { (lhs: Int, rhs: Int) -> Int in
    return lhs + rhs
})

customAdd(3, 4) { (lhs: Int, rhs: Int) -> Int in
    return lhs + rhs
}

customAdd(4, 5) { (lhs, rhs) in
    return lhs + rhs
}

customAdd(5, 6) { $0 + $1 }


let ages = [30, 20, 19, 40]
//ages.sorted(by: { (lhs: Int, rhs: Int) -> Bool in
//    lhs < rhs
//})

//ages.sorted(by: { $0 < $1 })
ages.sorted(by: < )

func customAdd2(
    _ lhs: Int,
    _ rhs: Int,
    using function: (Int, Int) -> Int
) -> Int {
    return function(lhs, rhs)
}
