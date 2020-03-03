//
//  UserData.swift
//  MemberID
//
//  Created by Juansyah - on 28/02/20.
//  Copyright © 2020 Juansyah. All rights reserved.
//

import Foundation
import Combine
import SwiftUI
final class UserData: ObservableObject {
    let object = ObjectWillChangePublisher()
    let subject = PassthroughSubject<UserData,Never>()
    @Published var awards = awardsData
    var emailTF: String = "" {
        didSet{
            subject.send(self)
        }
    }
    @Published var isActiveLoginButton: Bool = false {
        didSet{
            subject.send(self)
        }
    }
    
    @Published var showMenu: Bool = false {
        didSet{
            subject.send(self)
        }
    }
    
    @Published var currentPage: String = "LoginView" {
        didSet{
            withAnimation(){
                subject.send(self)
            }
        }
    }
    //MARK: Award
    @Published var historyType : [String] = [] {
        didSet{
            subject.send(self)
        }
    }
    @Published var historyPoint : Double = 0 {
        didSet{
            subject.send(self)
        }
    }
    @Published var maxPoint : Double = 1000000 {
        didSet{
            subject.send(self)
        }
    }
    @Published var isAllType : Bool = false {
        didSet{
            subject.send(self)
        }
    }
    @Published var isProductType : Bool = false {
        didSet{
            subject.send(self)
        }
    }
    @Published var isVoucherType : Bool = false {
        didSet{
            subject.send(self)
        }
    }
    @Published var isGiftType : Bool = false {
        didSet{
            subject.send(self)
        }
    }
    var isClearType : Bool = false {
        didSet{
            subject.send(self)
        }
    }
    var isClearPoint : Bool = false {
        didSet{
            subject.send(self)
        }
    }
    var isClearAll : Bool = false {
        didSet{
            subject.send(self)
        }
    }
}
