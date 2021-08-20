//
//  LocationDetailView.swift
//  Lega Watch WatchKit Extension
//
//  Created by Yani . on 20/08/21.
//

import SwiftUI

struct LocationDetailView: View {
    @State private var currentTab = 0
    var id: Int

    var body: some View {
        TabView(selection: $currentTab,
                content:  {
                    LocationPulsation(lega: Lega.legas[id])
                    LocationSummary(lega: Lega.legas[id])
                })

    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView(id: 0)
    }
}
