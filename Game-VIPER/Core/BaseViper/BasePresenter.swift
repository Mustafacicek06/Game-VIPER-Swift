//
//  BasePresenter.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 7.10.2023.
//

import Foundation

typealias PresenterDependencies = (
    interactor: BaseInteractor,
    router: BaseRouter,
    view: BaseView
)


protocol BasePresenter {
    var dependencies: PresenterDependencies? { get set }
    func viewDidLoad()
    func dataDownloaded<T: Codable>(data : T)
    func isLoading(_ loading: Bool)
}
