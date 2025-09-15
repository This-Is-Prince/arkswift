//
//  For_Loop.swift
//  Swift_FlowControl
//
//  Created by Prince on 15/09/25.
//

import Foundation

func ForLoop(_ run: Bool) {
    if !run {
        return;
    }
    
    let a = ["A", "B", "C", "D", "E", "F"]
    
    for a in a {
        print(a)
    }
    
    print()
    
    for a in a.reversed() where a != "C" {
        print(a)
    }
    
    print()
    
    for i in 1...10 where i % 2 == 0 {
        print(i)
    }
    
    print()
    
    for i in 1..<5 {
        print(i)
    }
    
    print()
    
    for i in 1...5 {
        print(i)
    }
    
    print()
    print()
    
    for i in stride(from: 1, to: 10, by: 3) {
        print(i)
    }
}

func Run_ForLoop(run: Bool) {
    if !run {
        return;
    }
    
    ForLoop(true)
}
