//
//  BaseScreenViewController.swift
//  Game-VIPER
//
//  Created by MUSTACIC on 10.10.2023.
//

import UIKit

class BaseScreen: UIViewController {
    private let activityIndicator = UIActivityIndicatorView(style: .large)

    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.center = view.center
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        view.addSubview(activityIndicator)
        activityIndicator.color = .red
    }
    
    func loadingIndicator(isLoading: Bool) {
        DispatchQueue.main.async { [weak self] in
            if isLoading {
                self?.activityIndicator.startAnimating()
            } else {
                self?.activityIndicator.stopAnimating()
            }
        }
    }
}
