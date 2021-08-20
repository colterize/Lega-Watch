//
//  LocationPulsation.swift
//  Lega Watch WatchKit Extension
//
//  Created by Yani . on 20/08/21.
//

import SwiftUI

struct LocationPulsation: View {
    var lega: Lega
    
    var body: some View {
        VStack{
            Text(lega.name)
            Image(lega.imageData)
        }
        .navigationTitle(lega.name)
    }
}

struct LocationPulsation_Previews: PreviewProvider {
    static var previews: some View {
        LocationPulsation(lega: Lega.legas[0])
    }
}
