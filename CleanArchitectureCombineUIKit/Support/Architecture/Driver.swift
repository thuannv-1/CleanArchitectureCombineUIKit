//
//  Driver.swift
//  CleanArchitectureCombineUIKit
//
//  Created by Thuan Nguyen on 02/06/2023.
//

import Combine
import UIKit

typealias Driver<T> = AnyPublisher<T, Never>

extension Publisher {
    func asDriver() -> Driver<Output> {
        return self.catch { _ in Empty() }
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
    
    static func just(_ output: Output) -> Driver<Output> {
        return Just(output).eraseToAnyPublisher()
    }
    
    func empty() -> Driver<Output> {
        return Empty().eraseToAnyPublisher()
    }
    
    func mapToOptional() -> Driver<Output?> {
        return map { value -> Output? in value }
            .asDriver()
    }
    
    func unwrap() -> Driver<Output> {
        return compactMap { value -> Output in value }
            .asDriver()
    }
}
