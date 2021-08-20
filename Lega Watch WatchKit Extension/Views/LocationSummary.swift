//
//  LocationSummary.swift
//  Lega Watch WatchKit Extension
//
//  Created by Yani . on 20/08/21.
//

import SwiftUI

struct LocationSummary: View {
    var lega: Lega

    var body: some View {
        VStack{
            Text(lega.summary)
        }
        .navigationTitle("Summary")
    }
}

struct LocationSummary_Previews: PreviewProvider {
    static var previews: some View {
        LocationSummary(lega: Lega.legas[0])
    }
}
