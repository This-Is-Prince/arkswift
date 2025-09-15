//
//  Guard.swift
//  Swift_FlowControl
//
//  Created by Prince on 15/09/25.
//

import Foundation

func Guard(_ run: Bool) {
    if !run {
        return
    }
    
    var i = 1
    while i <= 10 {
        guard i % 2 == 0 else {
            i += 1
            continue
        }
        
        print(i)
        i += 1
    }
    
    var age = 33
    
    guard age >= 18, age <= 40 else {
        return;
    }
    
    print("You are eligible")
    
    var a: Int? = nil
    
    guard let a = a else {
        print("A is nil")
        return;
    }
    
    print(a)
}


func Run_Guard(run: Bool) {
    if !run {
        return;
    }
    
    Guard(true)
}
