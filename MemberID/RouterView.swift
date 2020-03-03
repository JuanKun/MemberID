//
//  RouterView.swift
//  MemberID
//
//  Created by Juansyah - on 01/03/20.
//  Copyright © 2020 Juansyah. All rights reserved.
//

import SwiftUI
import Combine

struct RouterView: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        VStack{
            if self.userData.currentPage == "LoginView" {
                LoginView().transition(.move(edge: .trailing))
            } else if self.userData.currentPage == "HomeView"{
                HomeView().transition(.move(edge: .trailing))
            } else if self.userData.currentPage == "FilterView" {
                FilterView().transition(.move(edge: .trailing))
            }
        }
    }
}
