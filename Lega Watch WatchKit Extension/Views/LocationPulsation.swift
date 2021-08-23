//
//  LocationPulsation.swift
//  Lega Watch WatchKit Extension
//
//  Created by Yani . on 20/08/21.
//

import SwiftUI

struct LocationPulsation: View {
    @StateObject var firebaseManager = FirebaseViewModel()
    var firebaseId: Int
    
    var lega: Lega
    
    var body: some View {
        VStack{
            ZStack{
                if firebaseManager.isHealthy {
                    Pulsation()
                } else {
                    Pulsation1()
                }
//                Pulsation()
                
            }
            .frame(height: 150)
            
            Text(firebaseManager.healthStatus.uppercased())
                .frame(height: 50, alignment: .top)
                .font(.system(size: 20, weight: .regular, design: .rounded))
        
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle(lega.name)
        .onAppear() {
            firebaseManager.makeFirebaseCall(id: firebaseId)
//            firebaseManager.postToken(Token: firebaseManager.token)
        }
    }
}

struct LocationPulsation_Previews: PreviewProvider {
    static var previews: some View {
        LocationPulsation(firebaseId: 0, lega: Lega.legas[0])
    }
}
