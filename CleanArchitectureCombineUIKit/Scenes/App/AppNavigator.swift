//
//  AppNavigator.swift
//  CleanArchitectureCombineUIKit
//
//  Created by Thuan Nguyen on 02/06/2023.
//

import UIKit

protocol AppNavigatorType {
    func toOnboarding()
    func toHome()
}

struct AppNavigator: AppNavigatorType {
    unowned let window: UIWindow
    
    func toOnboarding() {
        let navigationController = BaseNavigationController()
        let vc = OnboardingViewController()
        let useCase = OnboardingUseCase()
        let navigator = OnboardingNavigator(navigationController: navigationController)
        let vm = OnboardingViewModel(useCase: useCase,
                                     navigator: navigator)
        vc.bindViewModel(to: vm)
        navigationController.viewControllers = [vc]
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
    func toHome() {
        let navigationController = BaseNavigationController()
        let vc = HomeViewController()
        let useCase = HomeUseCase()
        let navigator = HomeNavigator(navigationController: navigationController)
        let vm = HomeViewModel(useCase: useCase,
                               navigator: navigator)
        vc.bindViewModel(to: vm)
        navigationController.viewControllers = [vc]
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
