//
//  OnboardingViewController.swift
//  CleanArchitectureCombineUIKit
//
//  Created by Thuan Nguyen on 02/06/2023.
//

import UIKit

final class OnboardingViewController: UIViewController, BindableType {
    
    var viewModel: OnboardingViewModel!
    var cancelBag = CancelBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    private func configView() {
        
    }
    
    func bindViewModel() {
        let input = OnboardingViewModel.Input(
            loadTrigger: Driver.just(())
        )
        
        let _ = viewModel.transform(input, cancelBag: cancelBag)
    }
}

// MARK: Binder
extension OnboardingViewController {
    
}
