//
//  LocationView.swift
//  Lega Watch WatchKit Extension
//
//  Created by Yani . on 20/08/21.
//

import SwiftUI

struct LocationView: View {
    var body: some View {
        List {
            ForEach(Lega.legas) { viewData in
                NavigationLink(destination: LocationDetailView(id: viewData.id)) {
                    LocationRow(lega: viewData)
                }
                
            }
        }
        .navigationTitle("Lega")
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
