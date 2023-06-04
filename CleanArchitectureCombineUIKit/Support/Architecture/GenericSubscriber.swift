//
//  GenericSubscriber.swift
//  CleanArchitectureCombineUIKit
//
//  Created by Thuan Nguyen on 02/06/2023.
//

import Combine

struct GenericSubscriber<Value>: Subscriber {
    var combineIdentifier = CombineIdentifier()
    private let _subscribing: (Value) -> Void
    
    init<Target: AnyObject>(_ target: Target, subscribing: @escaping (Target, Value) -> Void) {
        weak var weakTarget = target
        
        self._subscribing = { value in
            if let target = weakTarget {
                subscribing(target, value)
            }
        }
    }
    
    func receive(subscription: Subscription) {
        subscription.request(.max(1))
    }
    
    func receive(completion: Subscribers.Completion<Never>) {
        
    }
    
    func receive(_ input: Value) -> Subscribers.Demand {
        _subscribing(input)
        return .unlimited
    }
}
