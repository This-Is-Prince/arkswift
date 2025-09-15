//
//  While_Loop.swift
//  Swift_FlowControl
//
//  Created by Prince on 15/09/25.
//

import Foundation

func While(_ run: Bool) {
    if !run {
        return;
    }
    
    var a = 5
    
    while a > 0 {
        print(a)
        a -= 1
    }
    
    repeat {
        print(a)
        a += 1
    } while a < 5
}

func Run_WhileLoop(run: Bool) {
    if !run {
        return;
    }
    
    While(true)
}
