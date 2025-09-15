//
//  IF_Else.swift
//  Swift_FlowControl
//
//  Created by Prince on 15/09/25.
//

import Foundation

func IF_Else(_ run: Bool) {
    if !run {
        return;
    }
    
    let a = 5;
    if a == 5 {
        print("A is 5.")
    } else {
        print("A is not 5.")
    }
    
    let b = 10;
    if b == 5 {
        print("B is 5.")
    } else {
        print("B is \(b)")
    }
}

func If_ElseIf_Else(_ run: Bool) {
    if !run {
        return;
    }
    
    let a: Int? = nil;
    if a == nil {
        print("A is nil")
    } else if (a!) < 5 {
        print("A is less than 5")
    } else if (a!) > 5 {
        print("A is greater than 5")
    } else if (a!) == 5 {
        print("A is 5")
    } else {
        print("A is nillllll")
    }
}

func Run_IF_Else(run: Bool) {
    if !run {
        return;4
    }
    
    IF_Else(true)
    If_ElseIf_Else(true)
}
