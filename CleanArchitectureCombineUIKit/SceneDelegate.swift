//
//  SceneDelegate.swift
//  CleanArchitectureCombineUIKit
//
//  Created by Thuan Nguyen on 02/06/2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var cancelBag = CancelBag()

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        bindViewModel(window: window)
    }
}

extension SceneDelegate {
    private func bindViewModel(window: UIWindow) {
        self.window = window
        let useCase = AppUseCase()
        let navigator = AppNavigator(window: window)
        let vm = AppViewModel(useCase: useCase, navigator: navigator)
        
        let input = AppViewModel.Input(
            loadTrigger: Driver.just(())
        )
        
        _ = vm.transform(input, cancelBag: cancelBag)
    }
}
