//
//  ContentView.swift
//  Opdracht2_Tripplanner
//
//  Created by Wout Devriese on 30/09/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab("departure", systemImage: "airplane.departure") {
                DepartureView()
            }
            Tab("info", systemImage: "info.bubble.fill") {
                InfoView()
            }
            Tab("arrival", systemImage: "airplane.arrival") {
                ArrivalView()
            }
        }
    }
}

#Preview {
    ContentView()
}
