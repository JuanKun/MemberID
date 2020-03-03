//
//  Extension++.swift
//  MemberID
//
//  Created by Juansyah - on 03/03/20.
//  Copyright © 2020 Juansyah. All rights reserved.
//

import UIKit
import SwiftUI

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
