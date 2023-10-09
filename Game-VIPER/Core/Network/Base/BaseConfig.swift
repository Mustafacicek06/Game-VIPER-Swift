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
    
    init(baseUrl: String, apiKey: String, headers: HTTPHeaders?) {
        self.baseUrl = baseUrl
        self.apiKey = apiKey
        self.headers = headers
    }

}
