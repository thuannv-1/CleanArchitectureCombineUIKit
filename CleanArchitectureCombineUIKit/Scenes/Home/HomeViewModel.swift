//
//  HomeViewModel.swift
//  CleanArchitectureCombineUIKit
//
//  Created by Thuan Nguyen on 03/06/2023.
//

import Combine

struct HomeViewModel {
    let useCase: HomeUseCaseType
    let navigator: HomeNavigatorType
}

extension HomeViewModel: ViewModelType {
    struct Input {
        let loadTrigger: Driver<Void>
    }
    
    class Output: ObservableObject {
        
    }
    
    func transform(_ input: Input, cancelBag: CancelBag) -> Output {
        let output = Output()
        
        return output
    }
}
