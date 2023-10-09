//
//  NetworkService.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 9.10.2023.
//

import Alamofire

final class NetworkService: BaseNetwork {
    var baseConfig: BaseConfig
    
    init(baseConfig: BaseConfig) {
        self.baseConfig = baseConfig
    }
    
    func request<T>(url: String, method: HTTPMethod, parameters: Parameters?, headers: HTTPHeaders?, completion: @escaping (Result<T, Error>) -> Void) where T : Decodable, T : Encodable {
        AF.request(url, method: method, parameters: parameters, headers: headers)
            
            .validate()
            
            .onURLRequestCreation(perform: { request in
                print("Request Url:  \(request)")
            })
            .responseDecodable(of: T.self) { (response) in
            switch response.result {
            case .success(let data):
                print("Response: \(data)")
                completion(.success(data))
            case .failure(let error):
                print(error.localizedDescription)
                completion(.failure(error))
            }
        }
    }
    
   

}
