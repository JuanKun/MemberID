//
//  FilterHistoryView.swift
//  MemberID
//
//  Created by Juansyah - on 29/02/20.
//  Copyright © 2020 Juansyah. All rights reserved.
//

import SwiftUI
import UIKit
struct FilterTypeHistoryView: View {
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    @EnvironmentObject var users : UserData
    var body: some View {
        ZStack{
            if (self.users.historyType.contains("Vouchers") || self.users.historyType.contains("Products") ||
                self.users.historyType.contains("Gift")){
                HStack{
                    Text("Type: ").font(.caption).fontWeight(.bold)
                    Spacer().frame(width: screenWidth*0.01)
                    Text(self.users.historyType.joined(separator: ",")).font(.caption)
                    Image(systemName: "multiply.circle.fill").foregroundColor(.orange).onTapGesture {
                        self.users.historyType = []
                    }
                }.padding(.top, 8).padding(.bottom,8).padding(.trailing,4).padding(.leading,4).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 2))
            }else{
                HStack{
                    Text("Type: ").font(.caption).foregroundColor(.clear)
                    Spacer().frame(width: screenWidth*0.01)
                    Text("Products, Vouchers, Gift").font(.caption).foregroundColor(.clear)
                    Image(systemName: "multiply.circle.fill").foregroundColor(.clear).onTapGesture {
                        self.users.historyType = []
                    }
                }.padding(.top, 8).padding(.bottom,8).padding(.trailing,4).padding(.leading,4).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.clear, lineWidth: 2))
            }
        }
        
    }
}

struct FilterTypeHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        FilterTypeHistoryView()
    }
}
