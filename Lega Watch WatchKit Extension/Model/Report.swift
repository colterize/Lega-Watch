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
    let revenue: Double
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


