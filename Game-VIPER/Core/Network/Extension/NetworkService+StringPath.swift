//
//  NetworkService+StringPath.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 9.10.2023.
//

import Foundation

extension NetworkService {
    
    func networkPath(path: String) -> String {
        return "\(baseConfig.baseUrl)\(path)"
    }
}
