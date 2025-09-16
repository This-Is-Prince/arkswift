//
//  Sets.swift
//  Swift_Collections
//
//  Created by Prince on 15/09/25.
//

import Foundation

func Sets(_ run: Bool) {
    if !run {
        return;
    }
    
    var s: Set = [1, 2, 3, 44, 44, 44, 55, 66, 2, 3, 1]
    for a in s {
        print(a)
    }
}

func Run_Sets(run: Bool) {
    if !run {
        return;
    }
    
    Sets(true)
}
