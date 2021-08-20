//
//  LocationRow.swift
//  Lega Watch WatchKit Extension
//
//  Created by Yani . on 20/08/21.
//

import SwiftUI

struct LocationRow: View {
    var lega: Lega

    var body: some View {
        HStack {
            Image(lega.imageData)
                .resizable()
                .frame(width: 25, height: 25)
                .padding()
            Text(lega.name)
        }
    }
}

struct LocationRow_Previews: PreviewProvider {
    static var previews: some View {
        LocationRow(lega: Lega.legas[0])
    }
}
