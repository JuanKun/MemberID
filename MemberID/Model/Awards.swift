//
//  Awards.swift
//  MemberID
//
//  Created by Juansyah - on 29/02/20.
//  Copyright © 2020 Juansyah. All rights reserved.
//

import Foundation

struct Awards: Codable, Identifiable, Hashable {
    let id : Int
    let awardType: AwardsType
    let awardName: String
    let point: Double
    let awardImg: String
    
    enum AwardsType: String, CaseIterable, Codable, Hashable {
        case Products = "Products"
        case Vouchers = "Vouchers"
        case Gift = "Gift"
    }
}
