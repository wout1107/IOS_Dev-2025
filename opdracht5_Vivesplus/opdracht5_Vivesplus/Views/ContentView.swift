//
//  ContentView.swift
//  opdracht5_Vivesplus
//
//  Created by Wout Devriese on 04/11/2025.
//

import SwiftUI

struct ContentView: View {
    @State var uurroosterDataStore = UurroosterDataStore()
    
    var body: some View {
        UurroosterList().environment(uurroosterDataStore)
        
    }
}

struct ContentView_Previews: PreviewProvider {
   
    static var previews: some View {
        ContentView()
    }
}
