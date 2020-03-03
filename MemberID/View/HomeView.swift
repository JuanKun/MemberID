//
//  HomeView.swift
//  MemberID
//
//  Created by Juansyah - on 02/03/20.
//  Copyright © 2020 Juansyah. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var users : UserData
    var body: some View {
        return NavigationView {
            GeometryReader { geometry in
                ZStack(alignment: .leading){
                    AwardsView(showMenu: self.$users.showMenu).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height).offset(x: self.users.showMenu ? UIScreen.main.bounds.width/2 : 0)
                        .disabled(self.users.showMenu ? true : false)
                    
                    if self.users.showMenu{
                        SideMenuView().frame(width: UIScreen.main.bounds.width/2)
                    }
                }.onTapGesture {
                    if self.users.showMenu == true {
                        withAnimation {
                            self.users.showMenu = false
                        }
                    }
                }
            }.navigationBarTitle(Text("Awards").font(.title), displayMode: .inline)
            .navigationBarItems(
                leading:
                Button(action: {
                    withAnimation {
                        self.users.showMenu.toggle()
                    }
                }){
                    Image(systemName: "list.bullet.indent").foregroundColor(.primary)
                },
                trailing:
                Button(action: {
                    if self.users.showMenu{
                        self.users.showMenu = false
                        self.users.currentPage  = "FilterView"
                    }else {
                        self.users.currentPage  = "FilterView"
                    }
                }){
                    Image(systemName: "list.bullet").foregroundColor(.primary)
                }
            )
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
