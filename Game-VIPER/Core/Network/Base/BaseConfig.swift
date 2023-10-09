//
//  BaseConfig.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 9.10.2023.
//

import Alamofire

struct BaseConfig {
    let baseUrl: String
    let apiKey: String
    let headers: HTTPHeaders?
    let parameters: Parameters?

    
    init(baseUrl: String, apiKey: String, headers: HTTPHeaders?, parameters: Parameters?) {
        self.baseUrl = baseUrl
        self.apiKey = apiKey
        self.headers = headers
        self.parameters = parameters
    }

}
