//
//  FavoriteRouter.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 8.10.2023.
//

import UIKit

final class FavoriteRouter: BaseRouter {
    var view: EntryView?
    
    func start() -> BaseRouter {
        var router: BaseRouter = FavoriteRouter()
        let vc: BaseView = FavoriteVC()
        var presenter: BasePresenter = FavoritePresenter()
        var interactor: BaseInteractor = FavoriteInteractor()
        
        vc.presenter = presenter
        
        presenter.dependencies = (interactor, router, vc)
        
        interactor.presenter = presenter
        
        router.view = vc as? EntryView
        
        return router
    }
    
    func navigate(from: BaseView) {
        let destinationRouter = start()
        guard let destinationView = destinationRouter.view else { return }
        let nav = UINavigationController(rootViewController: destinationView)
        
        from.push(destinationView, animated: true)
    }
}
