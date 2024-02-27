//
//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Ouahchia, Mohamed (JD) on 22/02/2024.
//

import SwiftUI

struct DivisionsView: View {
    var divisions: [Division]
    @State private var currentDate: Date = Date()
    
    var body: some View {
        NavigationStack {
            List(divisions, id: \.self.code) {division in
                NavigationLink(destination: AbsenceView(division: division)) {
                    DivisionItem(division: division)
                }
            }
            .navigationTitle(currentDate.formatted(date: .abbreviated, time: .omitted))
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: { currentDate = currentDate.previousDay() }) {
                        Image(systemName: "arrow.backward")
                    }
                };
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: { currentDate = currentDate.nextDay() }) {
                        Image(systemName: "arrow.forward")
                    }
                }
            }
        }
    }
    
}

#Preview {
    DivisionsView(divisions: Division.examples)
}
