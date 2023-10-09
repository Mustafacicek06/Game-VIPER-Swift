//
//  HomeVC.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 7.10.2023.
//

import UIKit

final class HomeVC: BaseScreen, BaseView {
 
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.register(UINib(nibName: GameTableCell.identifier, bundle: nil), forCellReuseIdentifier: GameTableCell.identifier)

        }
    }
    
    var presenter: BasePresenter?
    var games: [Game] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    func showLoading() {
        loadingIndicator(isLoading: true)
    }
    
    func hideLoading() {
        loadingIndicator(isLoading: false)
    }
    
    func showError(error: String) {
        
    }
    
}

// MARK: Presenter Delegation.

extension HomeVC {
    func reloadScreen<T>(data: T)  {
        self.games = data as? [Game] ?? []
        DispatchQueue.main.async {
            self.tableView.reloadData()

        }
    }
}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        games.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: GameTableCell.identifier, for: indexPath) as? GameTableCell else { return UITableViewCell() }
        
        cell.configureCell(game: games[indexPath.row])
        
        return cell
    }
}
