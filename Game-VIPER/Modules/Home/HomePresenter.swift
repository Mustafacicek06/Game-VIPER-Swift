//
//  HomePresenter.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 7.10.2023.
//

import Foundation

final class HomePresenter: BasePresenter {
    var dependencies: PresenterDependencies?
    
    func viewDidLoad() {
        guard let dependencies
            else { return }
    }
    
    func navigateToDetail() {
        guard let dependencies
            else { return }
        dependencies.router.navigate(from: dependencies.view)
    }
    
}

