//
//  BaseInteractor.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 7.10.2023.
//

import Foundation


protocol BaseInteractor {
    var presenter: BasePresenter? { get set }
    func fetchFromApi()
}
