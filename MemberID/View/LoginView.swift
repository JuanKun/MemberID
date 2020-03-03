//
//  LoginView.swift
//  MemberID
//
//  Created by Juansyah - on 28/02/20.
//  Copyright © 2020 Juansyah. All rights reserved.
//

import SwiftUI
import Combine
struct LoginView: View {
    @ObservedObject var binding = UserData()
    @EnvironmentObject var userss : UserData
    @State var text : String = "Type the username"
    @State var isEditing: Bool = false
    @State var isCorrect: Bool = true
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    private func dismissKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from:nil, for:nil)
        self.isEditing.toggle()
    }
    var body: some View {
        VStack{
            Spacer()
            Image(systemName: "star.fill").resizable().frame(width: screenWidth*0.5, height: screenWidth*0.5, alignment: .center).foregroundColor(.orange)
            Text("AWARDINE").font(.largeTitle).fontWeight(.bold).shadow(radius: 2).foregroundColor(.gray)
            Spacer().frame(height: 8)
            Text("Enter your email address \n  to sign in and continue").font(.custom("SF", size: 18)).fontWeight(.heavy).frame(width: screenWidth*0.8, alignment: .center)
            
            Spacer().frame(height: 16)
            //MARK: TextField
            TextField(text, text: self.$userss.emailTF, onEditingChanged: { _ in
                self.isEditing.toggle()
                self.text = ""
            }).textFieldStyle(RoundedBorderTextFieldStyle()).frame(width: screenWidth*0.8)
            //MARK: Login Button
            VStack{
                Text("Username did not exist!").foregroundColor(self.isCorrect ? .white : .red)
                Button(action: {
                    if self.userss.emailTF.uppercased() == "JUANSYAH"{
                        self.userss.currentPage = "HomeView"
                        self.userss.emailTF = ""
                    }else {
                        self.userss.emailTF = ""
                        self.isCorrect = false
                    }
                }){
                    ZStack{
                        Rectangle().frame(width: screenWidth*0.5, height: screenHeight*0.05).cornerRadius(10).foregroundColor(self.userss.emailTF.count != 1 ? .orange : .gray)
                        Text("Sign In").font(.headline).foregroundColor(.white)
                    }
                }
            }.padding(.top,16)
            Spacer()
        }.onTapGesture {
            self.dismissKeyboard()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
