//
//  CalcEngine.swift
//  Opdracht3_RPNCalculator
//
//  Created by Wout Devriese on 08/10/2025.
//
import Foundation
import Observation
@Observable
class CalcEngine{
    var Stack : [String] = []
    
    func showStack() -> [String]
    {
        return Stack
    }
    
    func addToStack(_ element: String)
    {
        Stack.append(element)
    }
    
    
    
}
