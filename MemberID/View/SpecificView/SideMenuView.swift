//
//  SideMenuView.swift
//  MemberID
//
//  Created by Juansyah - on 29/02/20.
//  Copyright © 2020 Juansyah. All rights reserved.
//

import SwiftUI

struct SideMenuView: View {
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    @EnvironmentObject var users : UserData
    var body: some View {
        VStack(alignment: .leading){
            VStack {
                Image(systemName: "star.fill").resizable().frame(width: screenWidth*0.3, height: screenWidth*0.3)
                    .foregroundColor(.yellow)
                Text("Awards Menu").font(.headline).shadow(radius: 5)
            }.padding(.top, 70)
            
            HStack {
                Image(systemName: "house")
                Text("Home").fontWeight(.medium).onTapGesture {
                    withAnimation {
                        self.users.showMenu.toggle()
                    }
                }
            }.padding(.top, 30)
            HStack {
                Image(systemName: "creditcard").foregroundColor(.secondary)
                Text("Cards").fontWeight(.medium).foregroundColor(.secondary).onTapGesture {
                    print("inactive")
                }
            }.padding(.top, 30)
            HStack {
                Image(systemName: "person").foregroundColor(.secondary)
                Text("Profile").fontWeight(.medium).foregroundColor(.secondary).onTapGesture {
                    print("inactive")
                }
            }.padding(.top, 30)
            HStack {
                Image(systemName: "hexagon")
                Text("Log Out").fontWeight(.medium).onTapGesture {
                    self.users.showMenu.toggle()
                    self.users.currentPage = "LoginView"
                }
            }.padding(.top, 30)
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
