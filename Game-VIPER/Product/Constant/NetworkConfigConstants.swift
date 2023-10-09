//
//  NetworkConfigConstants.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 9.10.2023.
//

import Foundation

final class NetworkConfigConstants {
    
    static let baseUrl = "https://api.rawg.io/api/"
    static let apiKey = "37526aab294342e1930cd7189d879d33"
    static let baseConig = BaseConfig(baseUrl: baseUrl, apiKey: apiKey, headers: nil, parameters: ["key" : apiKey ])
}

