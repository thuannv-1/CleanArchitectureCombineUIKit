//
//  Application.swift
//  CleanArchitectureCombineUIKit
//
//  Created by Thuan Nguyen on 02/06/2023.
//

import UIKit

class Application {
    static func openAppSetting() {
        let application = UIApplication.shared
        guard let url = URL(string: UIApplication.openSettingsURLString),
              application.canOpenURL(url) else {
            return
        }
        application.open(url)
    }
}
