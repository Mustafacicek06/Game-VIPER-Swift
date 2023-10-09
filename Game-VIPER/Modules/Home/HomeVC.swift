//
//  HomeVC.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 7.10.2023.
//

import UIKit

final class HomeVC: UIViewController, BaseView {
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: BasePresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.delegate = self
        //tableView.dataSource = self
    }
    
    
    func showLoading() {
        
    }
    
    func hideLoading() {
        
    }
    
    func showError(error: String) {
        
    }
    
 
    @IBAction func back(_ sender: Any) {
        presenter?.viewDidLoad()
    }
}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: GameTableViewCell.identifier, for: indexPath) as? GameTableViewCell else { return UITableViewCell() }
        
        cell.configureCell()
        
        return cell
    }
    
    
    
}

