//
//  HomeViewController.swift
//  CleanArchitectureCombineUIKit
//
//  Created by Thuan Nguyen on 03/06/2023.
//

import UIKit

final class HomeViewController: BaseViewController, BindableType {

    var viewModel: HomeViewModel!
    var cancelBag = CancelBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    private func configView() {
        view.backgroundColor = .red
    }
    
    func bindViewModel() {
        let input = HomeViewModel.Input(
            loadTrigger: Driver.just(())
        )
        
        let _ = viewModel.transform(input, cancelBag: cancelBag)
    }
}

// MARK: - Binder
extension HomeViewController {
    
}
