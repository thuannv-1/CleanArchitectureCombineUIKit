//
//  AppColor.swift
//  CleanArchitectureCombineUIKit
//
//  Created by Thuan Nguyen on 04/06/2023.
//

import UIKit

private func colorWith(_ named: String) -> UIColor {
    guard let color = UIColor(named: named) else {
        fatalError("Can not find \(named) Color")
    }
    return color
}

enum AppColor {
    static var main: UIColor {
        colorWith("main")
    }
}
