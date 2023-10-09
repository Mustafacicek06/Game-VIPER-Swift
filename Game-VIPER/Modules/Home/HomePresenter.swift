//
//  HomePresenter.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 7.10.2023.
//

import Foundation

protocol HomeDelegate: AnyObject {
    
}

final class HomePresenter: BasePresenter {
    func isLoading(_ loading: Bool) {
        loading ? dependencies?.view.showLoading() : dependencies?.view.hideLoading()
    }
    
    var dependencies: PresenterDependencies? {
        didSet {
            dependencies?.interactor.fetchFromApi()
        }
    }
    
    func viewDidLoad() {
        guard let dependencies
            else { return }
    }
    
    func dataDownloaded<T: Codable>(data: T) where T : Decodable, T : Encodable {
        guard let dependencies else { return }
        
        dependencies.view.reloadScreen(data: data)
    }
    
    func navigateToDetail() {
        guard let dependencies
            else { return }
        dependencies.router.navigate(from: dependencies.view)
    }
    
}

