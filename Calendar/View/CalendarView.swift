//
//  CalendarView.swift
//  Calendar
//
//  Created by Zelyna Sillas on 12/12/23.
//

import SwiftUI

struct CalendarView: View {
    @State var currentDate: Date = Date()

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 20) {
                CustomDatePicker(currentDate: $currentDate)
            }
            .padding(.vertical)
        }
        .safeAreaInset(edge: .bottom) {
            HStack {
                Button {
                    
                } label: {
                    Text("Add Task")
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(.green, in: Capsule())
                }
                
                Button {
                    
                } label: {
                    Text("Add Reminder")
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(.indigo, in: Capsule())
                }
            }
            .padding(.horizontal)
            .padding(.top, 10)
            .foregroundStyle(.white)
            .background(.ultraThinMaterial)
           
        }
    }
}

#Preview {
    CalendarView()
}
