//
//  ChartView.swift
//  Lega Watch WatchKit Extension
//
//  Created by Indah Nurindo on 23/08/21.
//

import SwiftUI
import UIKit
struct Verses: Identifiable{
    var id: Int
    var verse : Int
}
struct ChartView: View {
    
    let reports: [Report]
    var body: some View {
        ZStack {
            GeometryReader{ g in
                VStack{
                    Text("1000")
                        .font(.bold(.system(size: 7))())
                        .foregroundColor(.gray)
                    Spacer()
                        .frame(width: 10, height: 35)
                    Text("750")
                        .font(.bold(.system(size: 7))())
                        .foregroundColor(.gray)
                }
                VStack{
                    HStack{
                        Rectangle()
                            .padding(.top,2)
                            .frame(width: 0.6, height: 55)
                            .padding(.leading, 20)
                            .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                        Rectangle()
                            .padding(.top,2)
                            .frame(width: 0.5, height: 55)
                            .padding(.leading, 20)
                            .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                            .padding(.leading,13)
                        Rectangle()
                            .padding(.top,2)
                            .frame(width: 0.5, height: 55)
                            .padding(.leading, 33)
                            .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                            
                        Rectangle()
                            .padding(.top,2)
                            .frame(width: 0.5, height: 55)
                            .padding(.leading, 33)
                            .foregroundColor(.gray)
                            
                        }
                }
                VStack{
                    HStack{
                       
                    Text("12AM")
                        .font(.system(size: 7))
                        .foregroundColor(.gray)
                        .padding(.top, 50)
                        .padding(.leading,21)
                    Text("6AM")
                        .font(.system(size: 7))
                        .foregroundColor(.gray)
                        .padding(.top, 50)
                        .padding(.leading,16)
                    Text("12PM")
                        .font(.system(size: 7))
                        .foregroundColor(.gray)
                        .padding(.top, 50)
                        .padding(.leading,18)
                    Text("6PM")
                        .font(.system(size: 7))
                        .foregroundColor(.gray)
                        .padding(.top, 50)
                        .padding(.leading,17)
                    
                        
                }
                }
                
            VStack {
                HStack(alignment: .firstTextBaseline, spacing:0)
                {
                    
                    ForEach(self.reports, id:\.hour)
                    { report in
                        
                        if (report.hour == "1" || report.hour == "7" || report.hour == "13"||report.hour == "19"  ){
//                            Rectangle()
//                                .frame(width: 0.5, height: 54)
//                            .foregroundColor(.gray)
                        }
                        else {
                            Rectangle()
                                .frame(width: 0.5, height: 46)
                            .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                        }
                            
                       
                    BarView(report: report)
                    }
                }
                .frame(width: g.size.width, height: g.size.height/5, alignment:.leading)
                .padding(.top,10)
                .padding(.leading,20)
                .padding(.bottom,20)
                
                
            }
                VStack(alignment:.leading){
                    Text("Air Rate")
                        .font(.system(size: 12))
                        .padding(EdgeInsets(top: 69, leading: 0, bottom: 4, trailing: 0))
                    //text PPM
                    Text("760")
                        .font(.system(size: 25))
                        .foregroundColor(.blue)
                        .padding(.leading,1.5)
                    HStack{
                    Text("760")
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                    Text("PPM, 1m ago")
                        .font(.system(size: 13))
                        .foregroundColor(.gray)
                    
                        }
                }
                VStack{
                    Text("PPM")
                        .font(.system(size: 12))
                        .foregroundColor(.blue)
                        .padding(EdgeInsets(top: 96, leading: 46, bottom: 0, trailing: 0))
                }
                
          
            }
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(reports: Report.all())
    }
}
struct BarView: View {
    let report: Report
    var colors: [Color] = [Color.Color1,Color.Color2]
    var body : some View {
        let value = report.revenue / 21.5
        let yValue = Swift.min(value,1000)
       
        return  HStack {
           
          
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color.Color1, Color.Color2,]), startPoint: .top, endPoint:.bottom))
                .frame(width:3, height: CGFloat(yValue))
                .cornerRadius(5.0)
                .padding(.leading,1.5)
                .padding(.trailing,1.5)
        }
    }
}


