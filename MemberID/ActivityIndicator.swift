//
//  ActivityIndicator.swift
//  MemberID
//
//  Created by Juansyah - on 03/03/20.
//  Copyright © 2020 Juansyah. All rights reserved.
//

import UIKit
import SwiftUI

struct ActivityIndicator: UIViewRepresentable {

    var isLoading: Bool

    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let indicator = UIActivityIndicatorView(frame: .zero)
        indicator.style = .large
        indicator.hidesWhenStopped = true
        return indicator
    }

    func updateUIView(_ view: UIActivityIndicatorView, context: Context) {
        if self.isLoading {
            view.startAnimating()
        } else {
            view.stopAnimating()
        }
    }
}
