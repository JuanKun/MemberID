//
//  AwardsView.swift
//  MemberID
//
//  Created by Juansyah - on 28/02/20.
//  Copyright © 2020 Juansyah. All rights reserved.
//

import SwiftUI

struct AwardsView: View {
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    @Binding var showMenu: Bool
    @EnvironmentObject var users : UserData
    var body: some View {
        VStack{
            Rectangle().foregroundColor(.clear).frame(width: screenWidth, height: screenHeight*0.05)
            List{
                ForEach(users.awards.filter{ (check) in
                    check.point <= self.users.maxPoint
                }){ award in
                    ListItem(awardType: "\(award.awardType)", awardName: "\(award.awardName)", point: award.point, url: "\(award.awardImg)")
                }
            }.padding(.top,16)
        }.onAppear{
            UITableView.appearance().separatorStyle = .none
            }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView(showMenu: .constant(true))
    }
}
