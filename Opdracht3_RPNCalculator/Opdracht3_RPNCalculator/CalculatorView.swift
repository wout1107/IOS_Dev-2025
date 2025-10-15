//
//  CalculatorView.swift
//  Opdracht3_RPNCalculator
//
//  Created by Wout Devriese on 08/10/2025.
//

import SwiftUI

struct CalculatorView: View {
    @State var result: String = "5366984"
    var body: some View {
        HStack{
            VStack{
                TextEditor(text: .constant(result))
                Button("Show stack"){
                    
                }
            }
            VStack{
                Grid{
                    GridRow{
                        ForEach(7..<10){ number in Button("\(number)"){}
                        }
                        Button("/"){}
                    }
                    GridRow{
                        ForEach(4..<7){ number in Button("\(number)"){}
                        }
                        Button("*"){}

                    }
                    GridRow{
                        ForEach(1..<4){ number in Button("\(number)"){}
                        }
                        Button("-"){}

                    }
                    GridRow{
                        Button("0"){}
                        Text("")
                        Text("")
                        Button("+"){}
                    }
                    GridRow{
                        Button("Clear"){}.gridCellColumns(2)
                        Button("Enter"){}.gridCellColumns(2)
                    }
                }
            }
        }
        }
    }

#Preview {
    CalculatorView()
}
