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
            ZStack{
                Pulsation()
                
            }
            
            Image(lega.imageData)
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
        
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle(lega.name)
    }
}

struct LocationPulsation_Previews: PreviewProvider {
    static var previews: some View {
        LocationPulsation(lega: Lega.legas[0])
    }
}
