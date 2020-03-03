//
//  PlaceholderView.swift
//  MemberID
//
//  Created by Juansyah - on 03/03/20.
//  Copyright © 2020 Juansyah. All rights reserved.
//

import SwiftUI

struct PlaceholderView: View {
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    var body: some View {
        VStack{
            Spacer()
            ZStack{
                Image(systemName: "star.fill").resizable().frame(width: screenWidth*0.5, height: screenWidth*0.5).foregroundColor(.orange)
                Image(systemName: "multiply").resizable().frame(width: screenWidth*0.5, height: screenWidth*0.5).foregroundColor(.secondary)
            }
            
            Text("No Awards Found").font(.headline).fontWeight(.bold).foregroundColor(.secondary).padding()
            Spacer()
        }
    }
}

struct PlaceholderView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceholderView()
    }
}
