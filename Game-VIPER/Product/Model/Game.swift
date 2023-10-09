//
//  Game.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 9.10.2023.
//

import Foundation

struct Games: Codable {
    let results: [Game]?
}


struct Game: Codable {
    let id: Int?
    let name, released: String?
    let backgroundImage: String?
    let rating: Double?

    enum CodingKeys: String, CodingKey {
        case backgroundImage = "background_image"
        case id
        case name
        case released
        case rating
    }


}
