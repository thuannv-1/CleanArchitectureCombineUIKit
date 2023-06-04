//
//  OnboardingViewModel.swift
//  CleanArchitectureCombineUIKit
//
//  Created by Thuan Nguyen on 02/06/2023.
//

import Foundation

struct OnboardingViewModel {
    let useCase: OnboardingUseCaseType
    let navigator: OnboardingNavigatorType
}

extension OnboardingViewModel: ViewModelType {
    struct Input {
        let loadTrigger: Driver<Void>
    }
    
    final class Output: ObservableObject {
        @Published var alert = AlertMessage()
    }
    
    func transform(_ input: Input, cancelBag: CancelBag) -> Output {
        let output = Output()
        
        return output
    }
}
