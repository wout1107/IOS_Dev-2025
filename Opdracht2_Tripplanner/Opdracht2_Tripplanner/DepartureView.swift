//
//  FlightView.swift
//  Opdracht2_Tripplanner
//
//  Created by Wout Devriese on 30/09/2025.
//

import SwiftUI

struct DepartureView: View {
    var body: some View {
        GeometryReader { geometry in
            ScrollView { // Maak de hele view scrollbaar, zodat het niet wordt afgebroken op grotere schermen
                VStack(spacing: 16) {
                    
                    // Eerste HStack met Grid
                    HStack {
                        Grid {
                            GridRow {
                                Text("BRU").foregroundStyle(Color.green).fontWeight(.bold)
                                Text("")
                                Text("BCN").foregroundStyle(Color.green).fontWeight(.bold)
                            }
                            GridRow {
                                Text("Brussels").foregroundStyle(Color.gray)
                                Image(systemName: "airplane")
                                Text("Barcelona").foregroundStyle(Color.gray)
                            }
                            GridRow {
                                Text("8:15")
                                Text("")
                                Text("11:15")
                            }
                        }
                        .frame(maxWidth: .infinity) // Zorg ervoor dat het Grid de beschikbare breedte opvult
                    }
                    .padding(.horizontal)
                    
                    Divider().padding(.vertical)
                    
                    // Tweede HStack met Grid voor vluchtinformatie
                    HStack {
                        Grid {
                            GridRow {
                                Text("flight")
                                Text("gate")
                                Text("seat")
                            }
                            GridRow {
                                Text("SN23A")
                                Text("B23")
                                Text("27A")
                            }
                        }
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                        .frame(maxWidth: .infinity) // Vul de breedte uit
                    }
                    .padding(.horizontal)
                    
                    Divider().padding(.vertical)
                    
                    // HStack met twee VStack's voor passagiersgegevens en foto
                    HStack {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Passenger").foregroundStyle(Color.gray)
                            Text("Dirk Hostens")
                            Text("Class").foregroundStyle(Color.gray)
                            Text("Business")
                            Text("Flight Data").foregroundStyle(Color.gray)
                            Text("27/08/2024")
                        }
                        .frame(maxWidth: geometry.size.width * 0.45, alignment: .leading) // Zorg ervoor dat de tekstruimte zich aanpast
                        
                        VStack {
                            Image(systemName: "person.crop.artframe")
                                .font(.system(size: 200))
                                .foregroundStyle(Color.gray)
                                .frame(maxWidth: geometry.size.width * 0.45, maxHeight: 200) // Beperk de afbeelding aan de breedte
                        }
                    }
                    .padding(.horizontal)
                    
                    Spacer() // Zorg ervoor dat er flexibele ruimte is
                }
                .padding()
            }
        }
    }

}

#Preview {
    DepartureView()
}
