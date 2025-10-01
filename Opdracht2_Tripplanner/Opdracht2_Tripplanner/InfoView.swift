//
//  InfoView.swift
//  Opdracht2_Tripplanner
//
//  Created by Wout Devriese on 01/10/2025.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        ScrollView{
            VStack {
                Image("arc-de-triomf-barcelona.jpg").resizable().aspectRatio(contentMode: .fit)
                    .frame(width: .infinity, height: .infinity)
                Text("Barcelona").font(Font.largeTitle).foregroundStyle(Color.green).fontWeight(.bold)
                Text("Barcelona (/ˌbɑːrsəˈloʊnə/ ⓘ BAR-sə-LOH-nə; Catalan: [bəɾsəˈlonə] ⓘ; Spanish: [baɾθeˈlona] ⓘ) is a city on the northeastern coast of Spain. It is the capital and largest city of the autonomous community of Catalonia, as well as the second-most populous municipality of Spain. With a population of 1.7 million within city limits,[5] its urban area extends to numerous neighbouring municipalities within the province of Barcelona and is home to around 5.7 million people,[3] making it the fifth most populous urban area of the European Union after Paris, the Ruhr area, Madrid and Milan.[3] It is one of the largest metropolises on the Mediterranean Sea, located on the coast between the mouths of the rivers Llobregat and Besòs, bounded to the west by the Serra de Collserola mountain range.").font(Font.headline).foregroundStyle(.gray).padding()
                Text("Climate").font(Font.title).fontWeight(.bold)
                Text("According to the Köppen climate classification, Barcelona has a hot summer Mediterranean climate (Csa), with mild winters and warm to hot summers,[76] while the rainiest seasons are autumn and spring. The rainfall pattern is characterized by a short (3 months) dry season in summer, as well as less winter rainfall than in a typical Mediterranean climate. However, both June and August are wetter than February, which is unusual for the Mediterranean climate. This subtype, labelled as Portuguese by the French geographer George Viers after the climate classification of Emmanuel de Martonne[77] and found in the NW Mediterranean area (e.g. Marseille), can be seen as transitional to the humid subtropical climate (Cfa) found in inland areas.").foregroundStyle(.gray).padding(25)
            }
        }
    }
}

#Preview {
    InfoView()
}
