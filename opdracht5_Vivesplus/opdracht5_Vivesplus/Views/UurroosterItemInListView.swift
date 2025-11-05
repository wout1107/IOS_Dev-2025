//
//  UurroosterItemInListView.swift
//  opdracht5_Vivesplus
//
//  Created by Wout Devriese on 04/11/2025.
//

import SwiftUI

struct UurroosterItemInListView: View {
    var event: EventModel
        var body: some View {
            VStack {
                HStack{
                    if event.allDay {
                        Text(DateUtil.formatDate(date: event.startDateTime)).font(.headline)
                        
                    } else {
                        Text(DateUtil.formatDateTime(date: event.startDateTime)).font(.headline)
                        
                    }
                    Spacer()
                }
                HStack{
                    Text(event.title).font(.subheadline)
                    Spacer()
                }
            }
        }
    }
