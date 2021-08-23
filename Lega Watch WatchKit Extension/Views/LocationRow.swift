//
//  LocationRow.swift
//  Lega Watch WatchKit Extension
//
//  Created by Yani . on 20/08/21.
//

import SwiftUI

struct LocationRow: View {
    @StateObject var firebasemodel = FirebaseViewModel()
    var lega: Lega
    var firebaseId: Int

    var body: some View {
        HStack {
            Image(systemName: "mappin.and.ellipse")
                .scaledToFit()
                .frame(height: 20)
                .foregroundColor(Color(#colorLiteral(red: 0.09803921569, green: 0.7098039216, blue: 0.9882352941, alpha: 1)))
                .padding()
            
            VStack(alignment: .leading){
                Text(lega.name)
                Text(firebasemodel.healthStatus)
                    .foregroundColor(Color(#colorLiteral(red: 0.4274509804, green: 0.4470588235, blue: 0.4705882353, alpha: 1)))

            }
            .font(.system(size: 15, weight: .regular, design: .rounded))
            .padding(.init(top: 14, leading: 5, bottom: 14, trailing: 0))

        }
        .onAppear(){
            firebasemodel.makeFirebaseCall(id: firebaseId)
        }
            
    }
}

struct LocationRow_Previews: PreviewProvider {
    static var previews: some View {
        LocationRow(lega: Lega.legas[0], firebaseId: 0)
    }
}


