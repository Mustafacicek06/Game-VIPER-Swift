//
//  HomeRouter.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 7.10.2023.
//

import Foundation


final class HomeRouter: BaseRouter {
    var view: EntryView?
    
    
    func start() -> BaseRouter {
        let router = HomeRouter()
        
        let vc: BaseView = HomeVC()
        var presenter: BasePresenter = HomePresenter()
        var interactor: BaseInteractor = HomeInteractor()
        
        vc.presenter = presenter
        
        presenter.dependencies = (interactor, router, vc)
        
        interactor.presenter = presenter
        
        router.view = vc as? EntryView
        
        return router
    }
    
    func navigate(from: BaseView) {
        guard let view else { return }
        FavoriteRouter().navigate(from: view)
    }
    
}

