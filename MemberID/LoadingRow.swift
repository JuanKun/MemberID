//
//  LoadingRow.swift
//  MemberID
//
//  Created by Juansyah - on 03/03/20.
//  Copyright © 2020 Juansyah. All rights reserved.
//

import SwiftUI

struct LoadingRow : View {
    @State var isLoading: Bool

    var body: some View {
        HStack {
            Spacer()
            ActivityIndicator(isLoading: isLoading)
            Spacer()
        }
    }
}
