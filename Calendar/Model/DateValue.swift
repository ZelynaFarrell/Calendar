//
//  DateValue.swift
//  Calendar
//
//  Created by Zelyna Sillas on 12/12/23.
//

import Foundation

struct DateValue: Identifiable {
    var id = UUID().uuidString
    var day: Int
    var date: Date
}

struct Task: Identifiable {
    var id = UUID().uuidString
    var title: String
    var time: Date = Date()
}

struct TaskMetaData: Identifiable {
    var id = UUID().uuidString
    var task: [Task]
    var taskDate: Date
}

func getSampleDate(offset: Int)-> Date {
    let calendar = Calendar.current
    
    let date = calendar.date(byAdding: .day, value: offset, to: Date())
    
    return date ?? Date()
}

var tasks: [TaskMetaData] = [
    TaskMetaData(task: [Task(title: "Dentist Appointment"),
                        Task(title: "Meeting - all hands"),
                        Task(title: "workout"),
                       ], taskDate: getSampleDate(offset: 1)),
    TaskMetaData(task: [Task(title: "Pediatric Appointment"),
                        Task(title: "Meeting"),
                        Task(title: "Interview"),
                       ], taskDate: getSampleDate(offset: -3)),
    TaskMetaData(task: [Task(title: "Dog Groomer"),
                        Task(title: "Block out time for coding"),
                        Task(title: "Date night"),
                       ], taskDate: getSampleDate(offset: -8)),
    TaskMetaData(task: [Task(title: "keys to new house!"),
                        Task(title: "Holiday"),
                        Task(title: "vacation"),
                       ], taskDate: getSampleDate(offset: 10)),
    TaskMetaData(task: [Task(title: "Coffee with Nate"),
                        Task(title: "Follow-up Meeting"),
                        Task(title: "Out of town"),
                       ], taskDate: getSampleDate(offset: 15)),

]
