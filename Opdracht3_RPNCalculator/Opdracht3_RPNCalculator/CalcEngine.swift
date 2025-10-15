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
    private var numberText = ""
    private var stack = [Double] ()
    var result = ""
    
    func showStack() {
        addNumber()
        result = "\n/(stack.description)\(result)"
    }
    
    func clear() {
        numberText = ""
        result = ""
        stack = [Double]()
    }
    
    func addNumberText(number: Int) {
            //to add digits to the current number e.g. change 1 to 12, you have to remove the existing digits (count) and add the new digit to them and make the concatenation of those two the content of the result
            result.removeFirst(numberText.count)
            numberText = "\(numberText)\(number)"
            result = "\(numberText)\(result)"
        }
        
        func addNumber() {
            let number = Double(numberText)
            if let n = number {
                stack.append(n)
                result = "\n\(result)"
            }
            numberText = ""
        }
        
        func addOperatorPressed() {
            addNumber()
            result = "\n+\(result)"
            if checkNumberOfOperands() {
                let sum = stack.popLast()! + stack.popLast()!
                addCalculationResult(calculationResult: sum)
            }
        }
        
        func minusOperatorPressed() {
            addNumber()
            result = "\n-\(result)"
            if checkNumberOfOperands() {
                let diff = stack.popLast()! - stack.popLast()!
                addCalculationResult(calculationResult: diff)
            }
        }
        
        func multiplierOperatorPressed() {
            addNumber()
            result = "\n*\(result)"
            if checkNumberOfOperands() {
                let mult = stack.popLast()! * stack.popLast()!
                addCalculationResult(calculationResult: mult)
            }
        }
        func dividerOperatorPressed() {
            addNumber()
            result = "\n/\(result)"
            if checkNumberOfOperands() {
                let div = stack.popLast()! / stack.popLast()!
                addCalculationResult(calculationResult: div)
            }
        }
    
        private func addCalculationResult(calculationResult: Double) {
           result = "\n\(calculationResult)\(result)"
           stack.append(calculationResult)
       }
       
       private func checkNumberOfOperands() -> Bool {
           if stack.count < 2 {
               result = "\nNot enough operands...\(result)"
               return false
           } else {
               return true
           }
       }
}
