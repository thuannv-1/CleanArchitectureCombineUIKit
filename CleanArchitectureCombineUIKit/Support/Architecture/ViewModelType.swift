//
//  ViewModelType.swift
//  CleanArchitectureCombineUIKit
//
//  Created by Thuan Nguyen on 02/06/2023.
//

import Combine

protocol ViewModelType {
    associatedtype Input
    associatedtype Output
    
    func transform(_ input: Input, cancelBag: CancelBag) -> Output
}
