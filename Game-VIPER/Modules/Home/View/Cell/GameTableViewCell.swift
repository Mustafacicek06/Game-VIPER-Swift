//
//  GameTableViewCell.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 8.10.2023.
//

import UIKit

final class GameTableViewCell: UITableViewCell {

    @IBOutlet private var gameImage: UIImageView!
    
    @IBOutlet private var gameTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell() {
        
    }
    
    static let identifier = "GameCell"
}
