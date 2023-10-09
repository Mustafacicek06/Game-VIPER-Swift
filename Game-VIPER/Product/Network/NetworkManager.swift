//
//  NetworkManager.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 9.10.2023.
//

import Foundation


final class NetworkManager {
    private let networkService = NetworkService(baseConfig: NetworkConfigConstants.baseConig)
    static let shared = NetworkManager()
    
    func getGames(completion: @escaping (Result<[Game], Error>) -> Void) {
        
        networkService.request(url: networkService.networkPath(path: NetworkPaths.games.rawValue), method: .get, parameters: networkService.baseConfig.parameters, headers: networkService.baseConfig.headers) { (result: Result<Games, Error>) in
            switch result {
            case .success(let response):
                completion(.success(response.results ?? []))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
}
