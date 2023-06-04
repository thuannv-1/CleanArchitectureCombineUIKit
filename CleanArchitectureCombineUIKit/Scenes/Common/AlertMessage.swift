//
//  AlertMessage.swift
//  CleanArchitectureCombineUIKit
//
//  Created by Thuan Nguyen on 02/06/2023.
//

import Combine

struct AlertMessage {
    var title = ""
    var message = ""
    var isShowing = false
    
    init(title: String, message: String, isShowing: Bool) {
        self.title = title
        self.message = message
        self.isShowing = isShowing
    }
    
    init() { }
}
