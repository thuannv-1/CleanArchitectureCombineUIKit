//
//  UserDefaultHelper.swift
//  CleanArchitectureCombineUIKit
//
//  Created by Thuan Nguyen on 02/06/2023.
//

import Foundation

final class UserDefaultsHelper: NSObject {
    @Storage(key: "isFristUse", deafaultValue: true)
    static var isFristUse: Bool
}
