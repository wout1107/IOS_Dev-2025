//
//  UurroosterRow.swift
//  opdracht5_Vivesplus
//
//  Created by Wout Devriese on 04/11/2025.
//

import SwiftUI

struct UurroosterRow: View {
    var uurrooster: EventModel
    var body: some View {
        VStack {
            HStack{
                Text(uurrooster.title)
                    .foregroundColor(Color.white)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .background(Color.black)
                    .cornerRadius(10
                    )
            }
            Divider()
            Spacer()
        }
        
    }
}

