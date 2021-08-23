//
//  PulsationView.swift
//  Lega
//
//  Created by Ardyansyah Wijaya on 05/08/21.
//

import Foundation
import SwiftUI

struct Pulsation:View {
    @State private var pulsate = false
    var colors: [Color] = [Color.pulsatingColor, Color.pulsatingColor2, Color.pulsatingColor1]
    var body: some View {
        GeometryReader{ geo in
            ZStack(alignment: .center) {
                Circle()
                    .foregroundColor(Color.pulsatingColor2)
                    .frame(width: geo.size.width, height: geo.size.height * 0.8)
                    .scaleEffect(pulsate ? 1.2 :1.0)
                    .animation(Animation.easeInOut(duration: 0.9).repeatForever(autoreverses: true))
                Circle()
                    .foregroundColor(Color.pulsatingColor1)
                    .frame(width: geo.size.width, height: geo.size.height * 0.7)
                    .scaleEffect(pulsate ? 1.2 :1.0)
                    .animation(Animation.easeInOut(duration: 0.9).repeatForever(autoreverses: true))
                Circle()
                    .foregroundColor(Color.pulsatingColor)
                    .frame(width: geo.size.width, height: geo.size.height * 0.55)
                    .scaleEffect(pulsate ? 1.3 :1.0)
                    .animation(Animation.easeInOut(duration: 0.9).repeatForever(autoreverses: true))
                  Image("healthy")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40, alignment: .center)

            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .onAppear {
                self.pulsate.toggle()
            }
        }
    }
}
    struct Pulsation1:View {
        @State private var pulsate = false
        var colors: [Color] = [Color.pulsatingColorH, Color.pulsatingColor2H, Color.pulsatingColor1H]
        var body: some View {
                GeometryReader{ geo in
                    ZStack(alignment: .center) {
                        Circle()
                            .foregroundColor(Color.pulsatingColor2H)
                            .frame(width: geo.size.width, height: geo.size.height * 0.6)
                            .scaleEffect(pulsate ? 1.3 :1.0)
                            .animation(Animation.easeInOut(duration: 0.8).repeatForever(autoreverses: true))
                        Circle()
                            .foregroundColor(Color.pulsatingColor1H)
                            .frame(width: geo.size.width, height: geo.size.height * 0.5)
                            .scaleEffect(pulsate ? 1.3 :1.0)
                            .animation(Animation.easeInOut(duration: 0.8).repeatForever(autoreverses: true))
                        Circle()
                            .foregroundColor(Color.pulsatingColorH)
                            .frame(width: geo.size.width, height: geo.size.height * 0.4)
                            .scaleEffect(pulsate ? 1.2 :1.0)
                            .animation(Animation.easeInOut(duration: 0.8).repeatForever(autoreverses: true))
                        Image("unhealthy")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)

                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .onAppear {
                        self.pulsate.toggle()
                    }
                }
            
        }
    }




extension Color {
    static func rgb(r: Double,g:Double, b:Double)-> Color {
        return Color(red: r / 255, green: g / 255, blue: b / 255)
    }
    static let pulsatingColor = Color.rgb(r: 208, g: 223, b: 255).opacity(1)
    static let pulsatingColor1 = Color.rgb(r: 206, g: 221, b: 255).opacity(0.64)
    static let pulsatingColor2 = Color.rgb(r: 227, g: 236, b: 255).opacity(0.28)
    static let pulsatingColorH = Color.rgb(r: 255, g: 227, b: 227).opacity(0.35)
    static let pulsatingColor1H = Color.rgb(r: 255, g: 228, b: 228).opacity(0.30)
    static let pulsatingColor2H = Color.rgb(r: 255, g: 193, b: 195).opacity(0.46)
    static let Color1 = Color.rgb(r: 15, g: 105, b: 203).opacity(1)
    static let Color2 = Color.rgb(r: 113, g: 229, b: 240).opacity(0.64)
   
}
