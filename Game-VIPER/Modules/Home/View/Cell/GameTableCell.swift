//
//  GameTableCell.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 10.10.2023.
//


import UIKit
import Kingfisher

final class GameTableCell: UITableViewCell {

    @IBOutlet weak var gameImage: UIImageView!

    @IBOutlet weak var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(game: Game) {
        titleLabel.text = game.name
        guard let url = URL(string: game.backgroundImage ?? "") else { return }
        gameImage.kf.setImage(with: url)
    }
    
    static let identifier = "GameTableCell"
}
