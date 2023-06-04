//
//  ActivityTracker.swift
//  CleanArchitectureCombineUIKit
//
//  Created by Thuan Nguyen on 02/06/2023.
//

import Combine
import UIKit

typealias ActivityTracker = CurrentValueSubject<Bool, Never>

extension Publisher where Failure: Error {
    func trackActivity(_ activityTracker: ActivityTracker) -> AnyPublisher<Output, Failure> {
        return handleEvents { _ in
            activityTracker.send(true)
        } receiveCompletion: { _ in
            activityTracker.send(false)
        }
        .eraseToAnyPublisher()
    }
}
