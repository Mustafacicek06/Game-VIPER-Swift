//
//  NetworkService.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 9.10.2023.
//

import Alamofire

final class NetworkService: BaseNetwork {
    let baseConfig: BaseConfig
    
    init(baseConfig: BaseConfig) {
        self.baseConfig = baseConfig
    }
    
    func request<T>(url: String, method: HTTPMethod, parameters: Parameters?, headers: HTTPHeaders?, completion: @escaping (Result<T, Error>) -> Void) where T : Decodable, T : Encodable {
        AF.request(url, method: method, parameters: parameters, headers: headers).responseDecodable(of: T.self) { (response) in
            switch response.result {
            case .success(let data):
                completion(.success(data))
            case .failure(let error):
                print(error.localizedDescription)
                completion(.failure(error))
            }
        }
    }
    
   

}
