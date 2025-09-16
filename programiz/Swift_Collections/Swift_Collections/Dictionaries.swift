//
//  Dictionaries.swift
//  Swift_Collections
//
//  Created by Prince on 15/09/25.
//

import Foundation

func Dictionaries(_ run: Bool) {
    if !run {
        return;
    }
    
    var dict = [1: "One", 2: "Two", 3: "Three"]
    
    print(dict)
    
    for a in dict {
        print(a.key)
    }
    
    print()
    
    for (k, v) in dict {
        print(k, v)
    }
}

func Run_Dictionaries(run: Bool) {
    if !run {
        return;
    }
    
    Dictionaries(true)
}
