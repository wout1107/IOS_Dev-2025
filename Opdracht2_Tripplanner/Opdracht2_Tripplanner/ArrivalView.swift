//
//  ArrivalView.swift
//  Opdracht2_Tripplanner
//
//  Created by Wout Devriese on 01/10/2025.
//

import SwiftUI

struct ArrivalView: View {
    var body: some View {
        VStack{
            
            HStack{
                Grid{
                    GridRow{
                        Text("BCN").foregroundStyle(Color.green).fontWeight(.bold)
                        Text("")
                        Text("BRU").foregroundStyle(Color.green).fontWeight(.bold)
                    }
                    GridRow{
                        Text("Barcelona").foregroundStyle(Color.gray)
                        Image(systemName: "airplane")
                        Text("Brussels").foregroundStyle(Color.gray)
                    }
                    GridRow{
                        Text("13:05")
                        Text("")
                        Text("15:15")
                    }
                }
                
            }
            Divider().padding()
            HStack{
                Grid
                {
                    GridRow{
                        Text("flight")
                        Text("gate")
                        Text("seat")
                    }
                    GridRow{
                        Text("SN205")
                        Text("XD-30")
                        Text("17C")
                    }
                }.foregroundColor(.white).padding().background(.green).cornerRadius(10)
            }
            Divider().padding()
            HStack{
                VStack{
                    Text("Passenger").foregroundStyle(Color.gray)
                    Text("Dirk Hostens")
                    Text("Class").foregroundStyle(Color.gray)
                    Text("Business")
                    Text("Flight Data").foregroundStyle(Color.gray)
                    Text("27/08/2024")
                }
                VStack{
                    Image(systemName: "person.crop.artframe").font(Font.system(size: 200)).foregroundStyle(.gray)
                }
            }
            Spacer()

        }
    }
}

#Preview {
    ArrivalView()
}
