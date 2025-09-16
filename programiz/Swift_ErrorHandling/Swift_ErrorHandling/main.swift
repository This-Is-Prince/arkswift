//
//  main.swift
//  Swift_ErrorHandling
//
//  Created by Prince on 15/09/25.
//

import Foundation

enum MyError: Error {
    case FirstError
    case SecondError
    case ThirdError(msg: String)
    case OtherError
}

func testError(code: Int) throws -> Int {
    
    guard code == 0 else {
        switch code {
        case 1:
            throw MyError.FirstError
        case 2:
            throw MyError.SecondError
        case 3:
            throw MyError.ThirdError(msg: "Third Error please resolve")
        default:
            throw MyError.OtherError
        }
    }
    
    return 0
}

do {
    let r = try testError(code: 3)
    print(r)
} catch MyError.FirstError {
    print("First Error")
} catch MyError.SecondError {
    print("Second Error")
} catch MyError.ThirdError(let msg) {
    print(msg)
} catch MyError.OtherError {
    print("Other Error")
}
