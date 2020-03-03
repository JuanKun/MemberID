//
//  ListItem.swift
//  MemberID
//
//  Created by Juansyah - on 28/02/20.
//  Copyright © 2020 Juansyah. All rights reserved.
//

import SwiftUI

struct ListItem: View {
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    var awardType: String
    var awardName: String
    var point: Double
    var url: String
    var body: some View {
        VStack{
            ZStack{
//                Rectangle().foregroundColor(.secondary).frame(width: screenWidth*0.9, height: screenHeight*0.2).cornerRadius(10)
                AsyncImage(url: URL(string: url) ?? URL(string: "https://images.unsplash.com/photo-1582840996732-e9c89c6feb34?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80")!, placeholder: LoadingRow(isLoading: true)).frame(width: screenWidth*0.9, height: screenHeight*0.2).cornerRadius(10)
                VStack{
                    HStack{
                        Spacer().frame(width: screenWidth*0.6)
                        ZStack{
                            if awardType == "Products"{
                                Rectangle().frame(width: screenWidth*0.25, height: screenHeight*0.04).foregroundColor(.blue).cornerRadius(5)
                                Text(awardType).foregroundColor(.white)
                            }else if awardType == "Vouchers" {
                                Rectangle().frame(width: screenWidth*0.25, height: screenHeight*0.04).foregroundColor(.red).cornerRadius(5)
                                Text(awardType).foregroundColor(.white)
                            }else if awardType == "Gift" {
                                Rectangle().frame(width: screenWidth*0.25, height: screenHeight*0.04).foregroundColor(.orange).cornerRadius(5)
                                Text(awardType).foregroundColor(.white)
                            }
                        }.padding(.top,8)
                    }
                    Spacer().frame(height: screenHeight*0.1)
                    HStack{
                        Text(String(format: "%.0f Points", point)).fontWeight(.semibold).frame(width: screenWidth*0.35, alignment: .leading).foregroundColor(.white)
                        
                        Spacer().frame(width: screenWidth*0.5)
                    }.padding(.bottom,CGFloat(8))
                }
            }
            
            HStack{
                Text("\(awardName)").fontWeight(.semibold)
                Spacer()
            }
        }.padding(.leading,8)
    }
}
