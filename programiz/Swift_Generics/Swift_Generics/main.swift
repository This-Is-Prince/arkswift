//
//  main.swift
//  Swift_Generics
//
//  Created by Prince on 15/09/25.
//

import Foundation

func displayData<T>(data: T) {
    print(data)
}

displayData(data: 10)
displayData(data: "Hello World!")

class Array<T> {
    var elements: [T] = []
    private var count: Int = 0
    private var capacity: Int = 0
    
    func len() -> Int {
        return self.count
    }
    
    func cap() -> Int {
        return self.capacity
    }
}

var arr = Array<Int>()

