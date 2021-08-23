//
//  ChartView.swift
//  Lega Watch WatchKit Extension
//
//  Created by Indah Nurindo on 23/08/21.
//

import SwiftUI

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
                    Text("880")
                        .font(.system(size: 8))
                        .foregroundColor(.gray)
                    Spacer()
                        .frame(width: 10, height: 20)
                    Text("790")
                        .font(.system(size: 8))
                        .foregroundColor(.gray)
                }
//                VStack{
//                    HStack{
//                    Rectangle()
//                        .frame(width: 1, height: 54)
//                        .padding(.leading, 20)
//                        .foregroundColor(.gray)
//                    Rectangle()
//                        .frame(width: 1, height: 54)
//                        .padding(.leading, 20)
//                        .foregroundColor(.gray)
//                        .padding(.leading,11)
//                    Rectangle()
//                        .frame(width: 1, height: 54)
//                        .padding(.leading, 20)
//                        .foregroundColor(.gray)
//                        .padding(.leading,10)
//                    Rectangle()
//                        .frame(width: 1, height: 54)
//                        .padding(.leading, 20)
//                        .foregroundColor(.gray)
//                        .padding(.leading,10)
//                    }
//                }
                VStack{
                    HStack{
                    Rectangle()
                        .frame(width: 1.2, height: 46)
                        .padding(.leading, 27)
                        .foregroundColor(.gray)
                   
                    ForEach(1..<24) { w in
                            
                              
                                
                    }
                    }
                }
//                    Rectangle()
//                        .frame(width: 1.2, height: 46)
//                        .padding(.leading, 27)
//                        .foregroundColor(.gray)
//                    Rectangle()
//                        .frame(width: 1, height: 46)
//                        .foregroundColor(.gray)
//                    Rectangle()
//                        .frame(width: 1, height: 46)
//                        .foregroundColor(.gray)
//                    Rectangle()
//                        .frame(width: 1, height: 46)
//                        .foregroundColor(.gray)
//                    Rectangle()
//                        .frame(width: 1, height: 46)
//                        .foregroundColor(.gray)
//                    Rectangle()
//                        .frame(width: 1, height: 46)
//                        .foregroundColor(.gray)
//                    Rectangle()
//                        .frame(width: 1, height: 46)
//                        .foregroundColor(.gray)
//                    Rectangle()
//                        .frame(width: 1, height: 46)
//                        .foregroundColor(.gray)
//                    Rectangle()
//                        .frame(width: 1, height: 46)
//                        .foregroundColor(.gray)
//                    Rectangle()
//                        .frame(width: 1, height: 46)
//                        .foregroundColor(.gray)
//
//
                
                VStack{
                    HStack{
                        
                    Text("12AM")
                        .font(.system(size: 9))
                        .foregroundColor(.gray)
                        .padding(.top, 45)
                        .padding(.leading,22)
                    Text("6AM ")
                        .font(.system(size: 9))
                        .foregroundColor(.gray)
                        .padding(.top, 45)
                        .padding(.leading,8)
                    Text(" 12PM")
                        .font(.system(size: 9))
                        .foregroundColor(.gray)
                        .padding(.top, 45)
                        .padding(.leading,8)
                    Text(" 6PM")
                        .font(.system(size: 9))
                        .foregroundColor(.gray)
                        .padding(.top, 45)
                        .padding(.leading,8)
                    
                        
                }
                }
                
            VStack {
                HStack(alignment: .firstTextBaseline, spacing:0)
                {
                    
                    ForEach(self.reports, id:\.hour)
                    { report in
                        
                    BarView(report: report)
                    }
                }
                .frame(width: g.size.width, height: g.size.height/5, alignment:.leading)
                .padding(.bottom, g.size.height/11)
                .padding(.top,10)
                .padding(.leading,20)
                
                
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
        let value = report.revenue / 40
        let yValue = Swift.min(value,10000)
       
        return  HStack {
            Rectangle()
                .frame(width: 0.5, height: 46)
            .foregroundColor(.gray)
            Spacer()
                .frame(width: 2, height: 5)
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color.Color1, Color.Color2,]), startPoint: .top, endPoint:.bottom))
                .frame(width:3, height: CGFloat(yValue))
                .cornerRadius(5.0)
            Spacer()
                .frame(width: 0.5, height: 5)
//            Rectangle()
//                .frame(width: 1, height: 35)
//                .foregroundColor(.gray)
        }
    }
}


