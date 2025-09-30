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
            Tab("home", systemImage: "house") {
                HomeView()
            }
            Tab("departure", systemImage: "airplane.departure") {
                DepartureView()
            }
            Tab("arrival", systemImage: "airplane.arrival") {
                DepartureView()
            }
        }
    }
}

#Preview {
    ContentView()
}
