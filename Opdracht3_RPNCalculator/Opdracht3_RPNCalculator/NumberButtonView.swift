//
//  NumberButtonView.swift
//  Opdracht3_RPNCalculator
//
//  Created by Wout Devriese on 15/10/2025.
//

import SwiftUI

struct NumberButtonView: View {
    var number : Int
    var code : () -> Void
    
    var body : some View {
        Button("\(number)", action: code)
    }
}

#Preview {
    NumberButtonView(number: 1){
        print("1")
    }
}
