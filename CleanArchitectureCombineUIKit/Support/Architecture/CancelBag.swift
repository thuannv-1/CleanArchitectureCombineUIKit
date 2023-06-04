//
//  CancelBag.swift
//  CleanArchitectureCombineUIKit
//
//  Created by Thuan Nguyen on 02/06/2023.
//

import Combine

open class CancelBag {
    public var subscriptions = Set<AnyCancellable>()
    
    public func cancel() {
        subscriptions.forEach { $0.cancel() }
        subscriptions.removeAll()
    }
}

extension AnyCancellable {
    public func store(in cancelBag: CancelBag) {
        cancelBag.subscriptions.insert(self)
    }
}
