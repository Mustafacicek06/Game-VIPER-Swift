//
//  FavoriteVC.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 8.10.2023.
//

import UIKit

class FavoriteVC: UIViewController {
    var presenter: BasePresenter?

    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
}

// MARK: - BaseView Functions.
extension FavoriteVC: BaseView {
    func showLoading() {
        
    }
    
    func hideLoading() {
        
    }
    
    func showError(error: String) {
        
    }
}
