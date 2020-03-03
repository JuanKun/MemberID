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
    var body: some View {
        VStack(alignment: .leading){
            ZStack{
                Rectangle().foregroundColor(.secondary).frame(width: screenWidth*0.9, height: screenHeight*0.2).cornerRadius(10)
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
                        Text(String(format: "%.0f Points", point)).frame(width: screenWidth*0.35, alignment: .leading)
                        Spacer().frame(width: screenWidth*0.5)
                    }.padding(.bottom,8)
                }
            }
            Text("Gift Card IDR 1.000.000").fontWeight(.semibold)
        }.padding(.leading,8)
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem(awardType: "Products", awardName: "Pointing", point: 100000)
    }
}
