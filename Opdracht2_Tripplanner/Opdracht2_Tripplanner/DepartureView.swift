//
//  FlightView.swift
//  Opdracht2_Tripplanner
//
//  Created by Wout Devriese on 30/09/2025.
//

import SwiftUI

struct DepartureView: View {
    var body: some View {
        VStack{
            
            HStack{
                Grid{
                    GridRow{
                        Text("BRU").foregroundStyle(Color.green).fontWeight(.bold)
                        Text("")
                        Text("BCN").foregroundStyle(Color.green).fontWeight(.bold)
                    }
                    GridRow{
                        Text("Brussels").foregroundStyle(Color.gray)
                        Image(systemName: "airplane")
                        Text("Barcelona").foregroundStyle(Color.gray)
                    }
                    GridRow{
                        Text("8:15")
                        Text("")
                        Text("11:15")
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
                        Text("SN23A")
                        Text("B23")
                        Text("27A")
                    }
                }.padding().background(.green).cornerRadius(10)
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
                    Image(systemName: "person.crop.artframe")
                }
            }
            Spacer()

        }
    }
}

#Preview {
    DepartureView()
}
