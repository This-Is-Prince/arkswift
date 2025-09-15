//
//  Switch.swift
//  Swift_FlowControl
//
//  Created by Prince on 15/09/25.
//

import Foundation

func Switch(_ run: Bool) {
    if !run {
        return;
    }
    
    var a: Int? = nil;
    
    switch a {
    case nil:
        print("A is nil")
    case 5:
        print("A is 5")
    default:
        print("A is something else")
    }
    
    a = 5
}

func Switch_Range(_ run: Bool) {
    if !run {
        return;
    }
    
    var a: Int = 10;
    
    switch a {
    case 1...5:
        print("Switch is in between 1-5")
    case 8...9:
        print("Switch is 10")
    case let b where b >= 10:
        print("A is greater than equal to 10")
        
    default:
        print("N/A")
    }
}

func Switch_Tuple(_ run: Bool) {
    if !run {
        return;
    }
    
    var a: (Int, String) = (1, "One")
    
    switch a {
    case (2, "Two"):
        print("2")
    default:
        print("Something else")
    }
}

func Run_Switch(run: Bool) {
    if !run {
        return;
    }
    
    Switch(true)
    Switch_Range(true)
    Switch_Tuple(true)
}
