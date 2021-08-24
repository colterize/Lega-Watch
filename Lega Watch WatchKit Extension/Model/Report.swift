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
        Report(hour: "1",revenue: 940),
        Report(hour: "2",revenue: 1000),
        Report(hour: "3",revenue: 960),
        Report(hour: "4",revenue: 800),
        Report(hour: "5",revenue: 600),
        Report(hour: "6",revenue: 500),
        Report(hour: "7",revenue: 400),
        Report(hour: "8",revenue: 500),
        Report(hour: "9",revenue: 580),
        Report(hour: "10",revenue: 710),
        Report(hour: "11",revenue: 730),
        Report(hour: "12",revenue: 760),
        Report(hour: "13",revenue: 730),
        Report(hour: "14",revenue: 650),
        Report(hour: "15",revenue: 560),
        Report(hour: "16",revenue: 500),
        Report(hour: "17",revenue: 400),
        Report(hour: "18",revenue: 350),
        Report(hour: "19",revenue: 250),
        Report(hour: "20",revenue: 100),
        Report(hour: "21",revenue: 250),
        Report(hour: "22",revenue: 400),
        Report(hour: "23",revenue: 600),
        Report(hour: "24",revenue: 791),
      
    ]
    }
}
