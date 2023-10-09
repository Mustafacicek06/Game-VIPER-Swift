//
//  HomeInteractor.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 7.10.2023.
//

import Foundation


final class HomeInteractor: BaseInteractor {
    var presenter: BasePresenter? 
    
    
    func fetchFromApi() {
        presenter?.isLoading(true)
        NetworkManager.shared.getGames { [weak self]
                (results: Result<[Game], Error>) in
                self?.presenter?.isLoading(false)
                switch results {
                case .success(let games):
                    self?.presenter?.dataDownloaded(data: games)

                case .failure(_):
                    break
                }
            }
    }
     
    
}
