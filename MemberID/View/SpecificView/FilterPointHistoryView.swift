//
//  FilterPointHistory.swift
//  MemberID
//
//  Created by Juansyah - on 29/02/20.
//  Copyright © 2020 Juansyah. All rights reserved.
//

import SwiftUI

struct FilterPointHistoryView: View {
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    @EnvironmentObject var users : UserData
    var body: some View {
        ZStack{
            if self.users.historyPoint != 0 {
                HStack{
                    Text("Point: ").font(.caption).fontWeight(.bold)
                    Spacer().frame(width: screenWidth*0.01)
                    Text("10000 - \(String(format: "%.0f", Double(self.users.historyPoint)))").font(.caption)
                    Image(systemName: "multiply.circle.fill").foregroundColor(.orange).onTapGesture {
                        self.users.historyPoint = 0
                    }
                        
                }.padding(.top, 8).padding(.bottom,8).padding(.trailing,4).padding(.leading,4).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 2))
            }
            else {
               HStack{
                Text("Point: ").font(.caption).foregroundColor(.clear)
                   Spacer().frame(width: screenWidth*0.01)
                Text("10000 - \(String(format: "%.0f", Double(self.users.historyPoint)))").font(.caption).foregroundColor(.clear)
                   Image(systemName: "multiply.circle.fill").foregroundColor(.clear)
                       
               }.padding(.top, 8).padding(.bottom,8).padding(.trailing,4).padding(.leading,4).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.clear, lineWidth: 2))
            }
        }
    }
}

struct FilterPointHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        FilterPointHistoryView()
    }
}
