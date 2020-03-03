//
//  ClearAllHistoryView.swift
//  MemberID
//
//  Created by Juansyah - on 29/02/20.
//  Copyright © 2020 Juansyah. All rights reserved.
//

import SwiftUI

struct ClearAllHistoryView: View {
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    @EnvironmentObject var awardss : UserData
    var body: some View {
        ZStack{
            if self.awardss.historyPoint != 0
                && (self.awardss.historyType.contains("Vouchers") || self.awardss.historyType.contains("Products") || self.awardss.historyType.contains("Gift")){
                HStack{
                    Text("Clear All Filter").font(.caption)
                }.padding(.top, 8).padding(.bottom,8).padding(.trailing,4).padding(.leading,4).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 2))
                    .onTapGesture {
                        //Clear All History
                        self.awardss.historyPoint = 0
                        self.awardss.historyType = []
                }
            }
            else {
                HStack{
                    Text("Clear All Filter").font(.caption).foregroundColor(.gray)
                }.padding(.top, 8).padding(.bottom,8).padding(.trailing,4).padding(.leading,4).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 2))
            }
        }
    }
}

struct ClearAllHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        ClearAllHistoryView()
    }
}
