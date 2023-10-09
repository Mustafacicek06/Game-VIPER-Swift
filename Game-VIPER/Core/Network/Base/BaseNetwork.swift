//
//  BaseNetwork.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 9.10.2023.
//

import Alamofire

protocol BaseNetwork {
    func request<T: Codable>(url: String, method: HTTPMethod, parameters: Parameters?, headers: HTTPHeaders?, completion: @escaping (Result<T, Error>) -> Void)
}
