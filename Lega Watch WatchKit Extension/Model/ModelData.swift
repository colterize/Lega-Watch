//
//  ModelData.swift
//  Lega Watch WatchKit Extension
//
//  Created by Yani . on 20/08/21.
//

import Foundation

struct Lega: Hashable, Identifiable {
    let id: Int
    let name: String
    let imageData: String
    let summary: String

    static let legas: [Lega] = [
        Lega(id: 0, name: "Bedroom", imageData: "bikeriding", summary: "Belum ada"),
        Lega(id: 1, name: "Living Room", imageData: "bikeriding", summary: "Belum ada 2")
    ]



}
