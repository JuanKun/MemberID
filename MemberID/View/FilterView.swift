//
//  FilterView.swift
//  MemberID
//
//  Created by Juansyah - on 29/02/20.
//  Copyright © 2020 Juansyah. All rights reserved.
//

import SwiftUI

struct FilterView: View {
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    @EnvironmentObject var awardss : UserData
    var body: some View {
        VStack(alignment: .center){
            HStack{
                Text("Filter").font(.title).fontWeight(.bold)
                Spacer()
                Image(systemName: "multiply").resizable().frame(width: screenWidth*0.03, height: screenWidth*0.03)
                    .onTapGesture {
                        self.awardss.currentPage = "HomeView"
                }
            }.padding(.leading,screenWidth*0.02)
                .padding(.trailing,screenWidth*0.04)
            
            //MARK: Filter History
            VStack{
                HStack{
                    FilterPointHistoryView()
                    Spacer()
                }
                HStack{
                    FilterTypeHistoryView()
                    Spacer()
                }.padding(.bottom,20)
                HStack{
                    ClearAllHistoryView()
                    Spacer()
                }
            }.padding()
            
            Spacer().frame(height: screenHeight*0.05)
            
            //MARK: Slider Filter
            VStack(alignment: .leading){
                Text("Point Needed").fontWeight(.semibold)
                Spacer().frame(height: screenHeight*0.02)
                
                HStack{
                    Text("IDR 10000").font(.headline).foregroundColor(.orange)
                    Spacer()
                    Text(String(format: "IDR %.0f", Double(self.awardss.maxPoint))).font(.headline).foregroundColor(.orange)
                }
                
                Slider(value: self.$awardss.maxPoint, in: 10000...1000000, step: 10000)
            }.padding(.leading,screenWidth*0.04)
            .padding(.trailing,screenWidth*0.04)
            
            Spacer().frame(height: screenHeight*0.05)
            
            //MARK: Checkboxes Filter
            VStack(alignment: .leading){
                Text("Awards Type").fontWeight(.semibold)
                Spacer().frame(height: screenHeight*0.02)
                HStack{
                    Image(systemName: "\(self.awardss.isAllType ? "checkmark.square.fill" : "square")").resizable().frame(width: screenWidth*0.06, height: screenWidth*0.06).foregroundColor(.orange).onTapGesture {
                        self.awardss.isAllType.toggle()
                        self.awardss.isProductType.toggle()
                        self.awardss.isVoucherType.toggle()
                        self.awardss.isGiftType.toggle()
                    }
                    Text("All Type").frame(width: screenWidth*0.25, alignment: .leading).foregroundColor(.orange)
                    Spacer()
                }
                Spacer().frame(height: screenHeight*0.015)
                HStack{
                    Image(systemName: "\(self.awardss.isVoucherType || self.awardss.isAllType ? "checkmark.square.fill" : "square")").resizable().frame(width: screenWidth*0.06, height: screenWidth*0.06).foregroundColor(.orange).onTapGesture {
                        self.awardss.isVoucherType.toggle()
                    }
                    Text("Vouchers").frame(width: screenWidth*0.25, alignment: .leading).foregroundColor(.orange)
                    Spacer()
                }
                Spacer().frame(height: screenHeight*0.015)
                HStack{
                    Image(systemName: "\(self.awardss.isProductType || self.awardss.isAllType ? "checkmark.square.fill" : "square")").resizable().frame(width: screenWidth*0.06, height: screenWidth*0.06).foregroundColor(.orange).onTapGesture {
                        self.awardss.isProductType.toggle()
                    }
                    Text("Products").frame(width: screenWidth*0.25, alignment: .leading).foregroundColor(.orange)
                    Spacer()
                }
                Spacer().frame(height: screenHeight*0.015)
                HStack{
                    Image(systemName: "\(self.awardss.isGiftType || self.awardss.isAllType ? "checkmark.square.fill" : "square")").resizable().frame(width: screenWidth*0.06, height: screenWidth*0.06).foregroundColor(.orange).onTapGesture {
                        self.awardss.isGiftType.toggle()
                    }
                    Text("Giftcard").frame(width: screenWidth*0.25, alignment: .leading).foregroundColor(.orange)
                    Spacer()
                }
                
            }.padding(.leading, screenWidth*0.04).padding(.trailing,screenWidth*0.04)
            Spacer()
            Button(action: {
                let strat = ["Vouchers","Products","Gift"]
                self.awardss.boolType = [self.awardss.isVoucherType,self.awardss.isProductType,self.awardss.isGiftType]
                for i in 0..<self.awardss.boolType.count{
                    if self.awardss.boolType[i] == true{
                        self.awardss.historyType.append("\(strat[i])")
                    }
                }
//                self.awardss.historyType = [self.awardss.isVoucherType ? "Vouchers" : "", self.awardss.isProductType ? "Products" : "", self.awardss.isGiftType ? "Gift" : ""]
                self.awardss.historyPoint = self.awardss.maxPoint
                self.awardss.currentPage = "HomeView"
            }){
                ZStack{
                    Rectangle().frame(width: screenWidth*0.94, height: screenHeight*0.06).cornerRadius(10).foregroundColor(.orange)
                    Text("Filter").font(.headline).foregroundColor(.white)
                }
            }
        }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
