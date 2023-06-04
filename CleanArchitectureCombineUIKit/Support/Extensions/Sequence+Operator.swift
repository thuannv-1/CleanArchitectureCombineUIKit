//
//  Sequence+Operator.swift
//  CleanArchitectureCombineUIKit
//
//  Created by Thuan Nguyen on 02/06/2023.
//

import Foundation

extension Sequence where Iterator.Element: Hashable {
    func unique() -> [Iterator.Element] {
        var seen: [Iterator.Element: Bool] = [:]
        return self.filter { seen.updateValue(true, forKey: $0) == nil }
    }
}
