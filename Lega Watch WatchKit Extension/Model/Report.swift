//
//  Chart.swift
//  Lega Watch WatchKit Extension
//
//  Created by Indah Nurindo on 23/08/21.
//

import Foundation
import SwiftUI

struct Report {
    let hour: String
    let revenue: Int
}

class chartData: ObservableObject {
    var data = [Report]()
    var test: Int {
        var averageData = 0
        for data2 in data {
            if let currentHour = Int(data2.hour) {
                if currentHour == 2 {
                    averageData += data2.revenue
                }
            }
        }
        return averageData / data.count
    }
    
}


extension Report {
    static func all() -> [Report] {
    return [
        Report(hour: "12AM",revenue: 1500),
        Report(hour: "6AM",revenue: 1020),
        Report(hour: "12PM",revenue: 1090),
        Report(hour: "6PM",revenue: 900),
        Report(hour: "12AM",revenue: 1500),
        Report(hour: "6AM",revenue: 1020),
        Report(hour: "12PM",revenue: 1090),
        Report(hour: "6PM",revenue: 900),
        Report(hour: "12AM",revenue: 1500),
        Report(hour: "6AM",revenue: 1020),
        Report(hour: "12PM",revenue: 1090),
        Report(hour: "6PM",revenue: 900),
        Report(hour: "12AM",revenue: 1500),
        Report(hour: "6AM",revenue: 1020),
        Report(hour: "12PM",revenue: 1090),
        Report(hour: "6PM",revenue: 900),
        Report(hour: "12AM",revenue: 1500),
        Report(hour: "6AM",revenue: 1020),
        Report(hour: "12PM",revenue: 1090),
        Report(hour: "6PM",revenue: 900),
        Report(hour: "12AM",revenue: 1500),
        Report(hour: "6AM",revenue: 1020),
        Report(hour: "12PM",revenue: 1090),
        Report(hour: "6PM",revenue: 900),
      
    ]
    }
}


