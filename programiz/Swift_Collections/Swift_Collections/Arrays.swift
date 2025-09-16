//
//  Arrays.swift
//  Swift_Collections
//
//  Created by Prince on 15/09/25.
//

import Foundation


func Arrays(_ run: Bool) {
    if !run {
        return;
    }
    
    var arr: [Int] = [1, 2, 3, 436,26,26]
    
    for a in arr {
        print(a)
    }
    
    print()
    
    var a2: [Any] = ["STHI", 134, "C", 3.4, false]
    
    for a in a2 {
        print(a)
    }
}

func Run_Arrays(run: Bool) {
    if !run {
        return;
    }
    
    Arrays(true)
}
